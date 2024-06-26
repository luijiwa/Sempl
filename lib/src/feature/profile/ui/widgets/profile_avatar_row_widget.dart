import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/core/utils/enums/screen_status.dart';
import 'package:sempl/src/feature/profile/bloc/profile_bloc.dart';
import 'package:sempl/src/feature/profile_edit/ui/profile_edit_screen.dart';

class ProfileAvatarRowWidget extends StatelessWidget {
  const ProfileAvatarRowWidget({super.key, this.index = 0});
  final int index;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    final bloc = BlocProvider.of<ProfileBloc>(context);
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      sliver: SliverToBoxAdapter(
        child: BlocBuilder<ProfileBloc, ProfileState>(
          buildWhen: (previous, current) =>
              previous.screenStatus != current.screenStatus,
          builder: (context, state) {
            final user = state.userFields;
            final ImageProvider image = user.profilePhoto.isEmpty
                ? const AssetImage("assets/images/empty_avatar.png")
                    as ImageProvider
                : NetworkImage(user.profilePhoto) as ImageProvider;
            switch (state.screenStatus) {
              case ScreenStatus.success:
                return Row(
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
                            image: DecorationImage(
                              image: image,
                              fit: BoxFit.cover,
                            ),
                            border: Border.all(
                              color: AppThemeColor.blueColor,
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
                                ),),
                            child: SvgPicture.asset(
                              'assets/icons/pen_write.svg',
                              colorFilter: const ColorFilter.mode(
                                  Colors.white, BlendMode.srcIn,),
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
                        AutoSizeText(
                          user.fullName,
                          style: Theme.of(context).textTheme.appProfileTitle,
                          maxLines: 1,
                        ),
                        SizedBox(height: height * 0.0059),
                        AutoSizeText(
                          user.loginUpper,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: AppThemeColor.blueColor,
                          ),
                          maxLines: 1,
                        ),
                        SizedBox(height: height * 0.0059),
                        // const PointsWidget(),
                      ],
                    ),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => ProfileEditScreen(bloc: bloc),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 0.0357,
                            vertical: height * 0.0059,),
                        backgroundColor: AppThemeColor.blueColor,
                        elevation: 0,
                        textStyle: Theme.of(context)
                            .textTheme
                            .appBodyMedium
                            .copyWith(
                                color: Colors.white, fontSize: 8, height: 0,),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Изменить ',
                            style: Theme.of(context)
                                .textTheme
                                .appBodyMedium
                                .copyWith(
                                    color: Colors.white,
                                    fontSize: 12,
                                    height: 0,),
                          ),
                          SvgPicture.asset(
                            'assets/icons/settings.svg',
                            colorFilter: const ColorFilter.mode(
                                Colors.white, BlendMode.srcIn,),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              default:
                return const Center(
                  child: CircularProgressIndicator(),
                );
            }
          },
        ),
      ),
    );
  }
}
