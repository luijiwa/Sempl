import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_app/theme.dart';

class MainScreenHeaderWidget extends StatelessWidget {
  const MainScreenHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      height: height * 0.5,
      color: const Color(0xFFB5A3F8),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
          Row(children: [
            const Spacer(),
            Container(
                height: height * 0.03,
                decoration: const BoxDecoration(
                  color: AppThemeColor.yellow,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                  child: Text('50 баллов',
                      style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 12,
                          color: AppThemeColor.purple)),
                )),
            SizedBox(width: width * 0.02),
            Container(
              width: width * 0.1,
              height: width * 0.1,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xff7c94b6),
                image: const DecorationImage(
                  image: AssetImage('assets/images/profile.jpg'),
                  fit: BoxFit.cover,
                ),
                border: Border.all(
                  color: AppThemeColor.blueColor,
                  width: 1.0,
                ),
              ),
            ),
          ]),
          const AutoSizeText(
            'SEMPL!',
            style: TextStyle(
              fontFamily: 'DrukCyr',
              fontSize: 48,
              color: Colors.white,
            ),
            maxLines: 1,
          ),
          const AutoSizeText(
            'ПОПРОБУЙТЕ НОВОЕ СРЕДСТВО ДЛЯ ЧИСТКИ ЗУБОВ БЕСПЛАТНО',
            style: TextStyle(
              fontFamily: 'SourceSansPro',
              fontSize: 27,
              color: Colors.white,
            ),
            maxLines: 3,
          ),
        ]),
      ),
    );
  }
}
