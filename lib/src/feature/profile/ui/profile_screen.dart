import 'package:flutter/material.dart';
import 'package:my_app/src/core/components/custom_back_button.dart';
import 'package:my_app/src/feature/profile/ui/widgets/complete_example_list_widget.dart';
import 'package:my_app/src/feature/profile/ui/widgets/profile_avatar_row_widget.dart';
import 'package:my_app/src/feature/profile/ui/widgets/recomendation_banner_widget.dart';
import 'package:my_app/src/feature/profile/ui/widgets/secret_product_list_waiting_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    final defaultPadding = width * 0.0836830508;
    final bottomOffset =
        height * 0.13806 - MediaQuery.of(context).padding.bottom;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            leading: CustomBackButton(),
            title: Text('SEMPL!'),
          ),
          const ProfileAvatarRowWidget(),
          SliverToBoxAdapter(child: SizedBox(height: defaultPadding)),
          const SecretProductWaitingListWidget(),
          SliverToBoxAdapter(child: SizedBox(height: defaultPadding)),
          const RecomendationBannerWidget(),
          SliverToBoxAdapter(child: SizedBox(height: defaultPadding)),
          const CompleteExampleListWidget(),
          SliverToBoxAdapter(child: SizedBox(height: bottomOffset)),
          SliverToBoxAdapter(
              child: SizedBox(height: MediaQuery.of(context).padding.bottom)),
        ],
      ),
    );
  }
}
