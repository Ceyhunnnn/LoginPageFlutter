import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
    ));
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: screenSize.height,
        width: screenSize.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg2.png"), fit: BoxFit.cover)),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 100, left: 50),
                  child: Text(
                    "Login",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                      margin: EdgeInsets.only(left: 50, right: 100),
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: "Username/Email",
                            suffixIcon: Icon(Icons.account_circle)),
                      )),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                      margin: EdgeInsets.only(left: 50, right: 100),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: "Password",
                            suffixIcon: Icon(Icons.lock_outline_rounded)),
                      )),
                )
              ],
            ),
            Row(
              children: [
                SizedBox(
                  height: 125,
                  width: 50,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text("Login", style: TextStyle(fontSize: 17)),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.cyan,
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
