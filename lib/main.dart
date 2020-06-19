import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(MyApp());
}

// user widgets to use hot reload
// remember that container are used for common positioning , painting and sizing
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LayoutChanllenge(),
    );
  }
}

class LayoutChanllenge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.teal,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/my_pic.jpeg'),
              ),
              Text(
                "Ahmed EL-Dakhakhny",
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              Text(
                "SOFTWARE ENGINEER",
                style: TextStyle(
                    fontFamily: 'Sanspro',
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.phone),
                    SizedBox(
                      width: 10,
                    ),
                    Text("+021115972875"),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.mail),
                    SizedBox(
                      width: 10,
                    ),
                    Text("ahmd.eldakhakhny@gmail.com"),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    SvgPicture.asset('images/github.svg',
                        semanticsLabel: 'Acme Logo'),
                    SizedBox(
                      width: 10,
                    ),
                    Text("https://github.com/xenonzx/"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Home1 extends StatelessWidget {
  const Home1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[700],
        title: Text(
          "this is dakhakhny",
        ),
      ),
      backgroundColor: Colors.blueGrey[300],
      body: Container(
        width: 200,
        height: 200,
        color: Colors.blue,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        child: Image(
          image: AssetImage('images/diamond.png'),
        ),
      ),
    );
  }
}
