import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app/src/core/components/points_widget.dart';
import 'package:my_app/src/core/theme/theme.dart';

class ProfileAvatarRowWidget extends StatelessWidget {
  const ProfileAvatarRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      sliver: SliverToBoxAdapter(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: width * 0.2,
                  height: width * 0.2,
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
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    width: width * 0.05,
                    height: width * 0.05,
                    padding: EdgeInsets.all(width * 0.005),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppThemeColor.blueColor,
                        border: Border.all(
                          color: Colors.white,
                          width: 1.0,
                        )),
                    child: SvgPicture.asset(
                      'assets/icons/pen_write.svg',
                      colorFilter:
                          const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('КАСИА ЛАНГЕР',
                    style: Theme.of(context).textTheme.appTitleMedium),
                SizedBox(height: height * 0.0059),
                const AutoSizeText(
                  "@WOLFLIKEMEEE",
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'SourceSansProBold',
                    color: AppThemeColor.blueColor,
                  ),
                  maxLines: 1,
                ),
                SizedBox(height: height * 0.0059),
                const PointsWidget(),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: Size.zero,
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.0357, vertical: height * 0.0059),
                backgroundColor: AppThemeColor.blueColor,
                elevation: 0,
                textStyle: Theme.of(context)
                    .textTheme
                    .appBodyMedium
                    .copyWith(color: Colors.white, fontSize: 8, height: 0),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Изменить ',
                    style: Theme.of(context)
                        .textTheme
                        .appBodyMedium
                        .copyWith(color: Colors.white, fontSize: 12, height: 0),
                  ),
                  SvgPicture.asset(
                    'assets/icons/settings.svg',
                    colorFilter:
                        const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
