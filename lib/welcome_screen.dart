import 'package:design3/home.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF141414),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(height: 120, image: AssetImage("assets/manage.jpg")),
              Center(
                // main text
                child: Text(
                  textAlign: TextAlign.center,
                  "your\nfinances\nwisely",
                  style: TextStyle(
                      fontSize: 70,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Text(
                "Manage your finances in the app.\nYour money is safe here.",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white54,
                    fontWeight: FontWeight.w400),
              ),
              Slider(
                activeColor: Color(0xFFD78DFA),
                inactiveColor: Colors.transparent,
                thumbColor: Colors.white,
                value: 0.5,
                onChanged: (value) {
                  value;
                },
              ),
              Stack(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Color(0xFF463250),
                        borderRadius: BorderRadius.circular(40)),
                  ),
                  Positioned(
                    left: 10,
                    top: 10,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xFFD68CF9),
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Home(),
                                  ));
                            },
                            icon: Icon(Icons.arrow_forward_ios)),
                      ),
                    ),
                  )
                ],
              )
            ]),
      ),
    );
  }
}
