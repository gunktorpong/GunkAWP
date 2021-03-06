import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Authen extends StatefulWidget {
@override
  State<Authen> createState() => _AuthenState();
}
class _AuthenState extends State<Authen> {

  bool statusRedEye = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              buildContainer(),
              buildText(),
              buildContainerUser(),
              buildContainerPassword(),
              buildLogin(),
            ],
          ),
        ),
      ),
    );
  }

  Container buildLogin() {
    return Container(
              margin: EdgeInsets.only(top: 16),
              width: 250,
              child: RaisedButton(onPressed: null),
            );
  }

  Container buildContainerUser() {
    return Container(margin: EdgeInsets.only(top: 10),
      width: 250,
            child: TextField(
              decoration: InputDecoration (
                labelText: 'User',
                border: OutlineInputBorder()
                ),
                ),
            );
  }

    Container buildContainerPassword() {
    return Container(margin: EdgeInsets.only(top: 10),
      width: 250,
            child: TextField(
              obscureText: statusRedEye,
              decoration: InputDecoration (
                labelText: 'Password',
                border: OutlineInputBorder(),
                suffixIcon: 
                  IconButton(icon: Icon(Icons.remove_red_eye),
                  onPressed: (){
                    setState(() {
                    statusRedEye = !statusRedEye;
                   });
                  } 
                ),
              ),
            )
    );      
  }

  Text buildText() => Text(
    'Gunk Eiei', 
    style:GoogleFonts.indieFlower(
      textStyle:TextStyle(
      fontSize: 25,
      color: Color.fromARGB(255, 66, 177, 22),
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.bold
    )) ,
    );

  Container buildContainer() {
    return Container(
            width: 200,
            child: Image.asset('images/logo.png'),
          );
  }
}