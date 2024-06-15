import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/feature/main/bloc/main_screen_bloc.dart';

@Deprecated('Не используется так как дизайнеру не понравилось')
class SearchInputWidget extends StatefulWidget {
  const SearchInputWidget({
    super.key,
  });

  @override
  State<SearchInputWidget> createState() => _SearchInputWidgetState();
}

class _SearchInputWidgetState extends State<SearchInputWidget> {
  late TextEditingController _controller;
  bool _isTextEmpty = true;
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _controller.addListener(_textListener);
  }

  @override
  void dispose() {
    _controller.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  void _textListener() {
    setState(() {
      _isTextEmpty = _controller.text.isEmpty;
    });

    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      context
          .read<MainScreenBloc>()
          .add(MainScreenEvent.searchCategory(query: _controller.text));
    });
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.sizeOf(context).width;

    final padding = height * 0.0161; // 15
    log(padding.toString());

    return Stack(
      children: [
        DecoratedBox(
          decoration: const BoxDecoration(
            color: Color(0xffEEEEEE),
            borderRadius: BorderRadius.all(Radius.circular(40)),
          ),
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              if (_isTextEmpty)
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: width * 0.02803813559,
                      horizontal: width * 0.0496059322,),
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 4),
                          child: Icon(Icons.search,
                              size: 24, color: AppThemeColor.black,),
                        ),
                        Text(
                          'Поиск в категориях',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              TextField(
                controller: _controller,
                decoration:
                    Theme.of(context).inputDecorationTheme.searchInput.copyWith(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: height * 0.013,
                              horizontal: height * 0.023,),
                        ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
