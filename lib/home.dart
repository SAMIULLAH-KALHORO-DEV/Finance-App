import 'package:design3/send_money.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  Home({super.key});
  // tab bar row
  List<String> rowItem = [
    "Top up",
    "Transfer",
    "Send",
    "analytics",
  ];
  List<Icon> rowIcons = [
    Icon(CupertinoIcons.add),
    Icon(CupertinoIcons.repeat),
    Icon(CupertinoIcons.arrow_up_square),
    Icon(CupertinoIcons.graph_circle),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20, top: 40),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.menu),
              Column(
                children: [
                  Text(
                    "Good Evening",
                    style: TextStyle(color: Colors.black45),
                  ),
                  Text("Courtney Henry",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Color(0xFFAA6CC6),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ],
          ),
          SizedBox(height: 20),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SendMoney(),
                  ));
            },
            child: Container(
              height: 320,
              width: MediaQuery.of(context).size.width / 1.5,
              decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Stack(
                  children: [
                    Center(
                        child: Image(
                            height: 200,
                            image: AssetImage("assets/cardbg.png"))),
                    Positioned(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "VISA",
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900),
                                ),
                                Text(
                                  "***** 1762",
                                  style: TextStyle(
                                      color: Colors.white54,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Balance",
                                  style: TextStyle(
                                      color: Colors.white54,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "\$6,869",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 32,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            )
                          ]),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (var i = 0; i < 4; i++)
                Column(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40)),
                      child: rowIcons[i],
                    ),
                    SizedBox(height: 5),
                    Text(rowItem[i])
                  ],
                ),
            ],
          ),
          SizedBox(height: 20),
          Text("Transactions", style: Theme.of(context).textTheme.titleLarge),
          SizedBox(height: 20),
          Container(
            height: 90,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.local_parking_outlined,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("PS Store",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                            Text("Electronics",
                                style: TextStyle(color: Colors.black45))
                          ])
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Text("- \$50.65",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                  ),
                ]),
          ),
          SizedBox(height: 10),
          Container(
            height: 90,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.nat,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Nike",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                            Text("Shop",
                                style: TextStyle(color: Colors.black45))
                          ])
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Text("- \$25.62",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                  ),
                ]),
          ),
        ]),
      ),
    );
  }
}
