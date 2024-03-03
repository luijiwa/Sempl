import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCFF3E9),
      body: Container(
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'images/Background 1.png',
              ),
              fit: BoxFit.cover,
              alignment: Alignment(0, 0.5)),
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
                height: 30,
              ),
              Text(
                "SEMPL!",
                style: TextStyle(
                  fontFamily: 'DrukCyr',
                  fontSize: 32,
                ),
              ),
              SizedBox(
                height: 140,
              ),
              SizedBox(
                width: 379,
                child: Text(
                  "ВКЛЮЧИТЕ                        УВЕДОМЛЕНИЯ, ЧТОБЫ                   БЫТЬ В КУРСЕ ВСЕХ                     НОВЫХ ПРОДУКТОВ",
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'DrukCyr',
                    height: 1,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 360,
                child: Text(
                  "Вы будете получать push-                                              уведомления с информацией о новых                        доступных товарах, акциях, скидках                                       и других событиях",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'SourceSansPro',
                  ),
                ),
              ),
              SizedBox(
                height: 140,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '03/05',
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
