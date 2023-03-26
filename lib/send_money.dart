import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SendMoney extends StatelessWidget {
  SendMoney({super.key});

  List<String> numbers = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    ",",
    "0",
    "x"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios),
                      ),
                      Text(
                        "Send Money",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text("")
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 70,
                  width: 70,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(40)),
                  child: Image(image: AssetImage("assets/avatar.png")),
                ),
                SizedBox(height: 10),
                Text("Floyd Miles",
                    style: Theme.of(context).textTheme.titleMedium),
                SizedBox(height: 10),
                Container(
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "VISA ",
                                    style: TextStyle(
                                        fontStyle: FontStyle.italic,
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Text(
                                    " ●●●●  1762",
                                    style: TextStyle(
                                        fontStyle: FontStyle.italic,
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Icon(Icons.arrow_downward)
                            ]))),
                SizedBox(height: 30),
                Container(
                  height: MediaQuery.of(context).size.height / 1.4,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color(0xFF141414),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(children: [
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: Text(
                            "\$653",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "2% commession Total amount \$475",
                        style: TextStyle(color: Colors.white24),
                      ),
                      SizedBox(
                        height: 350,
                        child: GridView.builder(
                          itemCount: numbers.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: 1.5, crossAxisCount: 3),
                          itemBuilder: (context, index) {
                            return Center(
                                child: Text(
                              numbers[index],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w400),
                            ));
                          },
                        ),
                      ),
                      Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Color(0xFFD984E9),
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                            child: Text(
                          "Send Money",
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        )),
                      )
                    ]),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
