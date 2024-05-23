import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sempl/src/core/theme/theme.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height / 100;
    final double width = MediaQuery.sizeOf(context).width;

    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          width: double.maxFinite,
          decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/login_header_background.png"),
              ),
              color: Color(0xFF99BFD4)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0)
                .copyWith(bottom: 4 * height),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AutoSizeText(
                  'ДОБРО ПОЖАЛОВАТЬ!',
                  style: Theme.of(context)
                      .textTheme
                      .appTitleMedium
                      .copyWith(color: Colors.white),
                  maxLines: 2,
                ),
                Padding(
                  padding:
                      EdgeInsets.only(right: width * 0.0509, top: width * 0.03),
                  child: AutoSizeText(
                    'Для входа или регистрации в приложении введите свой номер телефона:',
                    style: Theme.of(context)
                        .textTheme
                        .appBodyMedium
                        .copyWith(color: Colors.white),
                    maxLines: 2,
                    minFontSize: 10,
                  ),
                ),
                SizedBox(height: width * 0.07),
              ],
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).viewPadding.top,
          child:
              Text("SEMPL!", style: Theme.of(context).textTheme.appTitleMedium),
        ),
      ],
    );
  }
}
