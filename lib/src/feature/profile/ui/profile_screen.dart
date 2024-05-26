import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sempl/src/core/utils/enums/screen_status.dart';
import 'package:sempl/src/core/utils/logger.dart';
import 'package:sempl/src/core/utils/preferences_dao.dart';
import 'package:sempl/src/core/widget/custom_back_button.dart';
import 'package:sempl/src/feature/initialization/widget/dependencies_scope.dart';
import 'package:sempl/src/feature/login/ui/auth_scope.dart';
import 'package:sempl/src/feature/profile/bloc/profile_bloc.dart';
import 'package:sempl/src/feature/profile/ui/widgets/complete_example_list_widget.dart';
import 'package:sempl/src/feature/profile/ui/widgets/exit_and_delete_account_column_widget.dart';
import 'package:sempl/src/feature/profile/ui/widgets/profile_avatar_row_widget.dart';
import 'package:sempl/src/feature/profile/ui/widgets/recomendation_banner_widget.dart';
import 'package:sempl/src/feature/profile/ui/widgets/secret_product_list_waiting_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late final ProfileBloc _profileBloc;

  @override
  void initState() {
    super.initState();
    _profileBloc = ProfileBloc(DependenciesScope.of(context).profileRepository)
      ..add(const ProfileEvent.load());
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    final defaultPadding = width * 0.0836830508;
    final bottomOffset = width * 0.12 - MediaQuery.of(context).padding.bottom;

    return BlocProvider(
      create: (context) => _profileBloc,
      child: Scaffold(
        floatingActionButton: kDebugMode
            ? FloatingActionButton(
                onPressed: () async {
                  logger.w(AuthScope.of(context).status);
                  final sharedPreferences =
                      await SharedPreferences.getInstance();
                  final typeEntry = TypedEntry(
                    sharedPreferences: sharedPreferences,
                    key: 'authorization.access_token',
                  );
                  final value = typeEntry.read();
                  logger.i('Начало $value КОНЕЦ');
                },
              )
            : null,
        body: CustomScrollView(
          slivers: [
            const SliverAppBar(
              leading: CustomBackButton(),
              title: Text('SEMPL!'),
            ),
            BlocBuilder<ProfileBloc, ProfileState>(
              bloc: _profileBloc,
              buildWhen: (previous, current) =>
                  previous.screenStatus != current.screenStatus,
              builder: (context, state) {
                switch (state.screenStatus) {
                  // case ScreenStatus.loading:
                  //   return const SliverMainAxisGroup(
                  //     slivers: [
                  //       SliverFillRemaining(
                  //         hasScrollBody: false,
                  //         child: Center(
                  //           child: CircularProgressIndicator(),
                  //         ),
                  //       ),
                  //     ],
                  //   );
                  default:
                }
                return SliverMainAxisGroup(
                  slivers: [
                    const ProfileAvatarRowWidget(),
                    SliverToBoxAdapter(child: SizedBox(height: defaultPadding)),
                    const SecretProductWaitingListWidget(),
                    SliverToBoxAdapter(child: SizedBox(height: defaultPadding)),
                    const RecomendationBannerWidget(),
                    SliverToBoxAdapter(child: SizedBox(height: defaultPadding)),
                    const CompleteExampleListWidget(),
                    SliverToBoxAdapter(child: SizedBox(height: defaultPadding)),
                    const ExitAndDeleteAccountColumnWidget(),
                    SliverToBoxAdapter(child: SizedBox(height: bottomOffset)),
                    SliverPadding(
                      padding: const EdgeInsets.all(8.0),
                      sliver: SliverToBoxAdapter(
                          child: SizedBox(
                              height: MediaQuery.of(context).padding.bottom)),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
