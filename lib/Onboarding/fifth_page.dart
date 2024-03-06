import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FifthPage extends StatelessWidget {
  const FifthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFEF7D),
      body: Container(
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'images/Background 5.png',
            ),
            fit: BoxFit.fill,
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
                height: 190,
              ),
              SizedBox(
                width: 379,
                child: Text(
                  "АНКЕТА",
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
                  "Наше приложение включает  функцию опроса, которая позволяет                                              нам лучше понять ваши предпочтения                                                и интересы пользователей",
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'SourceSansPro',
                  ),
                ),
              ),
              SizedBox(
                height: 200,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '05/05',
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
                      onPressed: () {},
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
