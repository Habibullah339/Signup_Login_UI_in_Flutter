import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner:false,
    initialRoute: '/',
    routes: {
      '/': (context) => HomeRoute(),
      '/second': (context) => SecondRoute(),
      '/third': (context) => ThirdRoute(),
    },
  ));
}

class HomeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('SignUp/LogIn Screen'),
        centerTitle:true,
        backgroundColor: Colors.grey[900],
        elevation: 0,
      ),
      body: Center(

          child: Column(

            children: <Widget>[
              new Padding(padding: EdgeInsets.only(top: 40.0)),
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/Profile5.JPG'),
                  radius:40.0,
                ),
              ),
              Divider(
                height: 80.0,


                color:Colors.amberAccent,
              ),
              new Text("Made By:"),
              Text("Habibullah", style: new TextStyle(color: Colors.blue, decoration: TextDecoration.underline),),
              new Padding(padding: EdgeInsets.only(top: 120.0)),
              ElevatedButton(
                child: Text('Sign Up'),
                onPressed: () {
                  Navigator.pushNamed(context, '/second');
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.orangeAccent[100],
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    textStyle: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
              ),

              new Padding(padding: EdgeInsets.only(top: 27.0)),
              new Text("OR"),
              new Padding(padding: EdgeInsets.only(top: 25.0)),
              ElevatedButton(
                child: Text('Log In'),
                onPressed: () {
                  Navigator.pushNamed(context, '/third');
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.orangeAccent[100],
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    textStyle: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          )),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color hexToColor(String code) {
      return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
    }
    return MaterialApp(


        debugShowCheckedModeBanner: false,
        title: "Welcome to Flutter",
        home: new Material(
            child: new Container (
                padding: const EdgeInsets.all(30.0),
                color: Colors.white,
                child: new Container(
                  child: new Center(
                      child: new Column(
                          children: [
                            new Padding(padding: EdgeInsets.only(top: 140.0)),
                            new Text('Sign Up',
                              style: new TextStyle(color: hexToColor("#F2A03D"),
                                  fontSize: 25.0),),
                            new Padding(padding: EdgeInsets.only(top: 50.0)),
                            new TextFormField(
                              decoration: new InputDecoration(
                                labelText: "Enter Email",
                                prefixIcon: Icon(Icons.email),
                                fillColor: Colors.white,
                                border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(25.0),
                                  borderSide: new BorderSide(
                                  ),
                                ),
                                //fillColor: Colors.green
                              ),
                              validator: (val) {
                                if (val!.length == 0) {
                                  return "Email cannot be empty";
                                } else {
                                  return null;
                                }
                              },
                              keyboardType: TextInputType.emailAddress,
                              style: new TextStyle(
                                fontFamily: "Poppins",
                              ),
                            ),
                            new Padding(padding: EdgeInsets.only(top: 35.0)),
                            new TextFormField(
                              obscureText: true,
                              decoration: new InputDecoration(
                                labelText: "Enter Password",
                                prefixIcon: Icon(Icons.security),

                                fillColor: Colors.white,
                                border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(25.0),
                                  borderSide: new BorderSide(
                                  ),
                                ),
                                //fillColor: Colors.green
                              ),
                              validator: (val) {
                                if (val!.length == 0) {
                                  return "Password cannot be empty";
                                } else {
                                  return null;
                                }
                              },
                              //keyboardType: TextInputType.visiblePassword,
                              style: new TextStyle(
                                fontFamily: "Poppins",
                              ),
                            ),
                            new Padding(padding: EdgeInsets.only(top: 35.0)),
                            new TextFormField(
                              obscureText: true,
                              decoration: new InputDecoration(
                                labelText: "Confirm Password",
                                prefixIcon: Icon(Icons.security),

                                fillColor: Colors.white,
                                border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(25.0),
                                  borderSide: new BorderSide(
                                  ),
                                ),
                                //fillColor: Colors.green
                              ),
                              validator: (val) {
                                if (val!.length == 0) {
                                  return "Password cannot be empty";
                                } else {
                                  return null;
                                }
                              },
                              //keyboardType: TextInputType.visiblePassword,
                              style: new TextStyle(
                                fontFamily: "Poppins",
                              ),
                            ),
                            new Padding(padding: EdgeInsets.only(top: 35.0)),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('Sign Up'),

                              //style: new TextStyle(color: hexToColor("#F2A03D"), fontSize: 25.0),),
                              style: ElevatedButton.styleFrom(

                                primary: Colors.orangeAccent[100],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      12), // <-- Radius
                                ),

                                  textStyle: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                            ),




                          ]

                      )

                  ),
                )
            )
        )

    );
  }
}

  class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color hexToColor(String code) {
      return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
    }
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Welcome to Flutter",
        home: new Material(
            child: new Container (
                padding: const EdgeInsets.all(30.0),
                color: Colors.white,
                child: new Container(
                  child: new Center(
                      child: new Column(
                          children: [
                            new Padding(padding: EdgeInsets.only(top: 140.0)),
                            new Text('Log In',
                              style: new TextStyle(color: hexToColor("#F2A03D"),
                                  fontSize: 25.0),),
                            new Padding(padding: EdgeInsets.only(top: 50.0)),
                            new TextFormField(
                              decoration: new InputDecoration(
                                labelText: "Enter Email",
                                prefixIcon: Icon(Icons.email),
                                fillColor: Colors.white,
                                border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(25.0),
                                  borderSide: new BorderSide(
                                  ),
                                ),
                                //fillColor: Colors.green
                              ),
                              validator: (val) {
                                if (val!.length == 0) {
                                  return "Email cannot be empty";
                                } else {
                                  return null;
                                }
                              },
                              keyboardType: TextInputType.emailAddress,
                              style: new TextStyle(
                                fontFamily: "Poppins",
                              ),
                            ),
                            new Padding(padding: EdgeInsets.only(top: 35.0)),
                            new TextFormField(
                              obscureText: true,
                              decoration: new InputDecoration(
                                labelText: "Enter Password",
                                prefixIcon: Icon(Icons.security),

                                fillColor: Colors.white,
                                border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(25.0),
                                  borderSide: new BorderSide(
                                  ),
                                ),
                                //fillColor: Colors.green
                              ),
                              validator: (val) {
                                if (val!.length == 0) {
                                  return "Password cannot be empty";
                                } else {
                                  return null;
                                }
                              },
                              //keyboardType: TextInputType.visiblePassword,
                              style: new TextStyle(
                                fontFamily: "Poppins",
                              ),
                            ),
                            new Padding(padding: EdgeInsets.only(top: 35.0)),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('Log In'),
                              //style: new TextStyle(color: hexToColor("#F2A03D"), fontSize: 25.0),),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.orangeAccent[100],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      12), // <-- Radius
                                ),
                                  textStyle: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                              ),


                          ]

                      )

                  ),
                )
            )
        )

    );
  }
}
