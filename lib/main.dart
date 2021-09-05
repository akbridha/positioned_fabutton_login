import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  double getSmallerDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBigDiamet(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Positioned(
          right: -getSmallerDiameter(context) / 3,
          top: -getSmallerDiameter(context) / 3,
          child: Container(
            width: getSmallerDiameter(context),
            height: getSmallerDiameter(context),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [Color(0xda52f600), Color(0xff44C9f7)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )),
            //  Colors.accents,
          ),
        ),

        Positioned(
          left: -getSmallerDiameter(context) / 3,
          top: -getSmallerDiameter(context) / 3,
          child: Container(
            child: Center(
              child: Text(
                "Loser",
                style: TextStyle(
                    fontFamily: "blackchancery",
                    fontSize: 50,
                    color: Colors.white),
              ),
            ),
            width: getBigDiamet(context),
            height: getBigDiamet(context),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [Color(0xda5226b2), Color(0xffff4891)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )),
            //  Colors.accents,
          ),
        ),

        Positioned(
          right: -getSmallerDiameter(context) / 2,
          bottom: -getSmallerDiameter(context) / 2,
          child: Container(
            child: Center(),
            width: getBigDiamet(context),
            height: getBigDiamet(context),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [Color(0xFFADEBFF), Color(0xda5226b2)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )),
            //  Colors.accents,
          ),
        ),

        Align(
          alignment: Alignment.center,
          child: ListView(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5)),
                margin: EdgeInsets.fromLTRB(20, 350, 20, 10),
                padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.email,
                            color: Color(0xff0ADEF7),
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffF90ED0))),
                          labelText: "E-mail"),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.vpn_key,
                            color: Color(0xff0ADEF7),
                          ),
                          labelText: "Password"
                          // focusedBorder: UnderlineInputBorder(
                          //     borderSide:
                          //         BorderSide(color: Color(0xffF90ED0)))
                          ),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: Text(
                    "FORGOT PASSWORD",
                    style: TextStyle(color: Color(0xffFE0460)),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: 40,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xda52f600),
                                  Color(0xff44C9f7)
                                ])),
                        child: Material(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(20),
                            splashColor: Colors.cyanAccent,
                            onTap: () {},
                            child: Center(
                              child: Text(
                                "SIGN IN",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),

        // Align(
        //   // alignment: Alignment.center,
        //   // top: -getSmallerDiameter(context) / 3,
        //   child: Container(
        //     child: Center(
        //       child: Text(
        //         "Lose",
        //         style: TextStyle(
        //             fontFamily: "blackchancery",
        //             fontSize: 50,
        //             color: Colors.white),
        //       ),
        //     ),
        //     width: 200,
        //     height: 200,
        //     decoration: BoxDecoration(
        //         // shape: BoxShape.circle,
        //         gradient: LinearGradient(
        //       colors: [Color(0xda5226b2), Color(0xffff4891)],
        //       begin: Alignment.topLeft,
        //       end: Alignment.bottomRight,
        //     )),
        //     //  Colors.accents,
        //   ),
        // ),
        // Align(
        //   alignment: Alignment.bottomRight,
        //   // top: -getSmallerDiameter(context) / 3,
        //   child: Positioned(
        //     right: 200,
        //     child: Container(
        //       child: Center(
        //         child: Text(
        //           "Loser",
        //           style: TextStyle(
        //               fontFamily: "blackchancery",
        //               fontSize: 50,
        //               color: Colors.white),
        //         ),
        //       ),
        //       width: 200,
        //       height: 200,
        //       decoration: BoxDecoration(
        //           // shape: BoxShape.circle,
        //           gradient: LinearGradient(
        //         colors: [Color(0xda5226b2), Color(0xffff4891)],
        //         begin: Alignment.topLeft,
        //         end: Alignment.bottomRight,
        //       )),
        //       //  Colors.accents,
        //     ),
        //   ),
        // ),
        // Text("anjim")
      ],
    ));
  }
}
