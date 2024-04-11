import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_app/src/core/components/points_widget.dart';
import 'package:my_app/src/core/theme/text_theme.dart';
import 'package:my_app/theme.dart';

class ProfileAvatarRowWidget extends StatelessWidget {
  const ProfileAvatarRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      sliver: SliverToBoxAdapter(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppThemeColor.blueColor,
                      border: Border.all(
                        color: Colors.white,
                        width: 1.0,
                      )),
                  child: Icon(
                    Icons.edit,
                    color: Colors.white,
                    size: width * 0.03,
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('КАСИА ЛАНГЕР',
                  style: Theme.of(context).textTheme.appTitleMedium),
              const AutoSizeText(
                "@WOLFLIKEMEEE",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'SourceSansProBold',
                  color: AppThemeColor.blueColor,
                ),
                maxLines: 1,
              ),
              const PointsWidget(),
            ],
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppThemeColor.blueColor,
                // shape: const StadiumBorder(),
                elevation: 0,
                textStyle: Theme.of(context)
                    .textTheme
                    .appBodyMedium
                    .copyWith(color: Colors.white, fontSize: 12),
              ),
              child: const Row(
                children: [
                  Text('ИЗМЕНИТЬ '),
                  Icon(Icons.padding),
                ],
              ))
        ],
      )),
    );
  }
}
