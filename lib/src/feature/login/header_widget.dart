import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height / 100;
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
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AutoSizeText(
                  'ДОБРО ПОЖАЛОВАТЬ!',
                  style: TextStyle(
                    fontFamily: 'DrukCyr',
                    fontSize: 48,
                    color: Colors.white,
                  ),
                  maxLines: 2,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: AutoSizeText(
                    'Для входа или регистрации в приложении введите свой номер телефона:',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 15,
                      color: Colors.white,
                    ),
                    maxLines: 2,
                    minFontSize: 10,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).viewPadding.top,
          child: const Text(
            "SEMPL!",
            style: TextStyle(
              fontFamily: 'DrukCyr',
              fontSize: 32,
            ),
          ),
        ),
      ],
    );
  }
}
