import 'package:flutter/material.dart';

class ConfirmationScreen extends StatelessWidget {
  const ConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                height: 460,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image:
                        AssetImage("images/confirmation_header_background.png"),
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
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.maxFinite,
              height: 559,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("images/confirmation_body_background.png"),
                ),
                color: Colors.blueGrey,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22)
                    .copyWith(top: 35, bottom: 56),
                child: Column(children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 32),
                    child: Text(
                      'Мы рады приветствовать Вас в нашем приложении. Чтобы предложить вам подходящие тесты продуктов, пройдите небольшой опрос и заполните личные данные',
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: double.maxFinite,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        foregroundColor:
                            const Color.fromARGB(255, 183, 222, 243),
                        backgroundColor: Colors.white,
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('НАЧАТЬ',
                              style: TextStyle(
                                fontFamily: 'SourceSansPro',
                                fontSize: 15,
                                color: Color(0xFF86A6B8),
                              )),
                          Icon(
                            size: 15,
                            Icons.arrow_forward,
                            color: Color(0xFF86A6B8),
                          )
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
