import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_app/theme.dart';

class DeliveryAppBar extends StatelessWidget {
  const DeliveryAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height.toDouble();
    final width = MediaQuery.of(context).size.width.toDouble();
    return Container(
      width: double.maxFinite,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/main_header.png"),
        ),
        color: Color(0xFF99BFD4),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top),
            Row(
              children: [
                const BackButton(),
                const Spacer(),
                Container(
                    height: height * 0.03,
                    decoration: const BoxDecoration(
                      color: AppThemeColor.yellow,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
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
              ],
            ),
            const Spacer(),
            const AutoSizeText(
              'SEMPL!',
              style: TextStyle(
                fontFamily: 'DrukCyr',
                fontSize: 34,
                color: Colors.white,
              ),
              maxLines: 1,
            ),
            SizedBox(height: height * 0.008),
            const AutoSizeText(
              'ПОПРОБУЙТЕ НОВОЕ СРЕДСТВО ДЛЯ ЧИСТКИ ЗУБОВ БЕСПЛАТНО',
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontSize: 29,
                color: Colors.white,
                height: 0.9,
              ),
              maxLines: 3,
            ),
            SizedBox(height: height * 0.05),
          ],
        ),
      ),
    );
  }
}
