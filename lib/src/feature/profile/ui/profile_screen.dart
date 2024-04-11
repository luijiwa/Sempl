import 'package:flutter/material.dart';
import 'package:my_app/src/core/components/bottom_padding.dart';
import 'package:my_app/src/core/theme/text_theme.dart';
import 'package:my_app/src/core/utils/logger.dart';
import 'package:my_app/src/feature/profile/ui/widgets/complete_example_list_widget.dart';
import 'package:my_app/src/feature/profile/ui/widgets/profile_avatar_row_widget.dart';
import 'package:my_app/src/feature/profile/ui/widgets/recomendation_banner_widget.dart';
import 'package:my_app/src/feature/profile/ui/widgets/secret_product_list_waiting_widget.dart';
import 'package:my_app/theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    logger.w(height * 0.0153);
    return Scaffold(
      backgroundColor: AppThemeColor.grey,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text('SEMPL!'),
            centerTitle: true,
            titleTextStyle: Theme.of(context).textTheme.appTitleMedium,
            backgroundColor: Colors.transparent,
          ),
          const ProfileAvatarRowWidget(),
          SliverToBoxAdapter(child: SizedBox(height: height * 0.0388)),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 22)
                .copyWith(bottom: height * 0.0153),
            sliver: SliverToBoxAdapter(
              child: Text(
                'МОИ ОЖИДАЕМЫЕ ОБРАЗЦЫ',
                style: Theme.of(context).textTheme.appTitleMedium,
              ),
            ),
          ),
          const SecretProductWaitingListWidget(),
          SliverToBoxAdapter(child: SizedBox(height: height * 0.0388)),
          const RecomendationBannerWidget(),
          SliverToBoxAdapter(child: SizedBox(height: height * 0.0388)),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 22)
                .copyWith(bottom: height * 0.0153),
            sliver: SliverToBoxAdapter(
              child: Text(
                'МОИ ЗАВЕРШЁННЫЕ ОБРАЗЦЫ',
                style: Theme.of(context).textTheme.appTitleMedium,
              ),
            ),
          ),
          const CompleteExampleListWidget(),
          const SliverToBoxAdapter(
            child: BottomPadding(),
          )
        ],
      ),
    );
  }
}
