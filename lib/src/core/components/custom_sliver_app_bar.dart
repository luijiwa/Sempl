import 'package:flutter/material.dart';
import 'package:my_app/theme.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return SliverAppBar(
      backgroundColor: AppThemeColor.grey,
      actions: [
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
      ],
    );
  }
}
