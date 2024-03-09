import 'package:flutter/material.dart';

import 'package:my_app/onboarding/second_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFEF7D),
      body: Container(
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'images/Background 1.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          margin: EdgeInsets.fromLTRB(
            16,
            0,
            16,
            0,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "SEMPL!",
                style: TextStyle(
                  fontFamily: 'DrukCyr',
                  fontSize: 32,
                ),
              ),
              SizedBox(
                height: 60,
              ),
              SizedBox(
                width: 379,
                child: Text(
                  "КАК ЭТО РАБОТАЕТ?",
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'DrukCyr',
                    height: 1,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                width: 400,
                child: Text(
                  "Посмотрите доступные образцы продуктов,             заполните форму, получите заказ, оставьте отзыв и получите накопительные баллы",
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'SourceSansPro',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 330,
                height: 370,
                child: Stack(
                  children: [
                    Container(
                      width: 343,
                      height: 313,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'images/serum.png',
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          SvgPicture.asset('images/Frame 3.svg'),
                          SizedBox(
                            height: 25,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Positioned(
                      top: 200,
                      child: Container(
                        width: 144,
                        height: 200,
                        child: SvgPicture.asset('images/Frame 2.svg'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 17,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '01/05',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'SourceSansProBold',
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SecondPage(),
                          ),
                        );
                      },
                      icon: Icon(Icons.arrow_forward_ios_rounded),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
