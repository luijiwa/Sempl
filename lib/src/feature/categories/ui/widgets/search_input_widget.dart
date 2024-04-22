import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_app/src/core/theme/theme.dart';

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

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _controller.addListener(_textListener);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _textListener() {
    setState(() {
      _isTextEmpty = _controller.text.isEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final padding = height * 0.0161; // 15
    log(padding.toString());

    return Stack(
      children: [
        Container(
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
                      vertical: height * 0.013, horizontal: height * 0.023),
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 4),
                          child:
                              Icon(Icons.search, size: 24, color: Colors.black),
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
                              horizontal: height * 0.023),
                        ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}