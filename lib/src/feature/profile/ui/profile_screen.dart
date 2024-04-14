import 'package:flutter/material.dart';
import 'package:my_app/src/feature/profile/ui/widgets/basic_sliver_custom_app_bar_widget.dart';
import 'package:my_app/src/feature/profile/ui/widgets/complete_example_list_widget.dart';
import 'package:my_app/src/feature/profile/ui/widgets/profile_avatar_row_widget.dart';
import 'package:my_app/src/feature/profile/ui/widgets/recomendation_banner_widget.dart';
import 'package:my_app/src/feature/profile/ui/widgets/secret_product_list_waiting_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final bottomOffset =
        height * 0.13806 - MediaQuery.of(context).padding.bottom;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const BasicSliverCustomAppBarWidget(),
          const ProfileAvatarRowWidget(),
          SliverToBoxAdapter(child: SizedBox(height: height * 0.0388)),
          const SecretProductWaitingListWidget(),
          SliverToBoxAdapter(child: SizedBox(height: height * 0.0388)),
          const RecomendationBannerWidget(),
          SliverToBoxAdapter(child: SizedBox(height: height * 0.0388)),
          const CompleteExampleListWidget(),
          SliverToBoxAdapter(child: SizedBox(height: bottomOffset)),
          SliverToBoxAdapter(
              child: SizedBox(height: MediaQuery.of(context).padding.bottom)),
        ],
      ),
    );
  }
}
