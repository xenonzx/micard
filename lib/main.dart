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
                width: 170,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    "+021115972875",
                    style: TextStyle(
                      fontFamily: 'Sanspro',
                      color: Colors.teal,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    color: Colors.teal,
                  ),
                  title: Text(
                    "ahmd.eldakhakhny@gmail.com",
                    style: TextStyle(
                      fontFamily: 'Sanspro',
                      color: Colors.teal,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                color: Colors.white,
                child: ListTile(
                  leading: SvgPicture.asset(
                    'images/github.svg',
                    color: Colors.teal,
                    semanticsLabel: 'Acme Logo',
                  ),
                  title: Text("https://github.com/xenonzx/",
                      style: TextStyle(
                        fontFamily: 'Sanspro',
                        color: Colors.teal,
                      )),
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
