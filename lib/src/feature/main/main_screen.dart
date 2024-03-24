import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/src/core/utils/logger.dart';
import 'package:my_app/src/feature/main/main_screen_header_widget.dart';
import 'package:my_app/theme.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(
      children: [
        const MainScreenHeaderWidget(),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              width: double.infinity,
              height: height * 0.6,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )),
              child: const Column(children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22.0),
                  child: AutoSizeText(
                    "НЕДАВНО ОПРОБОВАННЫЕ ПРОДУКТЫ",
                    style: TextStyle(
                      fontFamily: 'DrukCyr',
                      fontSize: 50,
                    ),
                    maxLines: 2,
                  ),
                ),
              ])),
        )
      ],
    ));
  }
}
