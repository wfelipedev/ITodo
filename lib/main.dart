import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todolist/home.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color.fromRGBO(43, 102, 196, 1),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Nunito',
        ),
        home: MyHomePage(),
      ),
    );

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return _introScreen(context);
  }
}

Widget _introScreen(BuildContext context) {
  double height = MediaQuery.of(context).size.height;

  return Container(
    height: MediaQuery.of(context).size.height,
    decoration: BoxDecoration(
      color: Colors.white,
    ),
    child: Column(
      children: <Widget>[
        SizedBox(
          height: height * .1,
        ),
        Text(
          "ITodo",
          style: TextStyle(
            fontSize: 63,
            color: Color(0xFFFF7643),
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none,
            fontFamily: 'Nunito',
          ),
        ),
        Text(
          "we help peoplo to organize \n their lives. 😀",
          style: TextStyle(
            fontSize: 13,
            color: Colors.grey[400],
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none,
            fontFamily: 'Nunito',
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: height * .05,
        ),
        Container(
          child: SvgPicture.asset('assets/notelist.svg'),
          height: height / 3,
        ),
        SizedBox(
          height: height * .09,
        ),
        Container(
          width: 250,
          height: 50,
          child: RaisedButton(
            child: Text(
              'Continuar',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Nunito',
              ),
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Home(),
                ),
              );
            },
            color: Color(0xFFFF7643),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
          ),
        ),
      ],
    ),
  );
}
