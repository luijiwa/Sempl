import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          height: 268,
          width: double.maxFinite,
          decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("images/login_header_background.png"),
              ),
              color: Color(0xFF99BFD4)),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.0, vertical: 36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "ДОБРО ПОЖАЛОВАТЬ!",
                  style: TextStyle(
                    fontFamily: 'DrukCyr',
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Для входа или регистрации в приложении введите свой номер телефона:',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        const Positioned(
          top: 20,
          child: Text(
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
