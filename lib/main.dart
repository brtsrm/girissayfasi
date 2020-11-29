import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Giriş Sayfası',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: GirisSayfasi(),
    );
  }
}

class GirisSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 50),
              Container(
                  width: 120.0,
                  height: 120.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/alien.png")))),
              SizedBox(height: 20),
              Text("SociaWorld",
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: 40),
              Material(
                borderRadius: BorderRadius.circular(20),
                elevation: 20.2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                            alignment: Alignment.center,
                            child: Text("Mail İle Giriş",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            padding: EdgeInsets.all(10),
                            height: 52.0,
                            decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.circular(20))),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(12),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                    alignment: Alignment.center,
                                    child: Text("Facebook Giriş",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)),
                                    padding: EdgeInsets.all(10),
                                    height: 52.0,
                                    decoration: BoxDecoration(
                                        color: Colors.indigo,
                                        borderRadius:
                                            BorderRadius.circular(20))),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Container(
                                    alignment: Alignment.center,
                                    child: Text("Gmail Giriş",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)),
                                    padding: EdgeInsets.all(10),
                                    height: 52.0,
                                    decoration: BoxDecoration(
                                        color: Colors.redAccent,
                                        borderRadius:
                                            BorderRadius.circular(20))),
                              )
                            ],
                          ))
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.topRight,
                          colors: [
                            Colors.purple[300],
                            Colors.purple[100],
                          ])),
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width - 70,
                  height: 170,
                ),
              )
            ],
          ),
        ));
  }
}
