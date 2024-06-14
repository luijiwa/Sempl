import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sempl/src/core/theme/theme.dart';

class HeaderSection extends StatelessWidget {
  final double maxHeight;
  final double maxWidth;

  const HeaderSection({
    super.key,
    required this.maxHeight,
    required this.maxWidth,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: maxWidth * 0.5952711864,
      width: double.infinity,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/login_header_background.png"),
          ),
          color: Color(0xFF99BFD4),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
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
                padding: EdgeInsets.only(
                    right: maxWidth * 0.0509, top: maxWidth * 0.03),
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
              SizedBox(height: maxWidth * 0.07),
            ],
          ),
        ),
      ),
    );
  }
}
