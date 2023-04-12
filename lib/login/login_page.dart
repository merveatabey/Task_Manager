import 'package:flutter/material.dart';
import 'package:task_manager/home.dart';
import 'package:task_manager/login/ui_helper.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff900020),
      backgroundColor: Color(0xff581d22),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/takeNote.jpeg'),
                radius: 130.0,
              ),
              SizedBox(height: 20),
              Text(
                '\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t Hello \n Welcome To Your Task Manager',
                style: TextStyle(
                  fontFamily: "Satisfy",
                  fontSize: 25,
                  color: Colors.white70,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                children: <Widget>[
                  _textField,
                  _passwordField,
                  _forgetPassButton,
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _loginButton,
                      _loginButton2,
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget get _textField => Padding(
    padding: EdgeInsets.all(10),
    child: TextField(
      style: TextStyle(
        color: Colors.white70,
      ),
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white70, width: 1.5),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.white70, width: 1.5),
        ),
        hintText: UIHelper.mail,
        hintStyle: TextStyle(
          fontFamily: "Satisfy",
          fontSize: 15,
          color: Colors.white70,
        ),
      ),
    ),
  );

  Widget get _passwordField => Padding(
    padding: EdgeInsets.all(10),
    child: TextField(
      style: TextStyle(
        color: Colors.white70,
      ),
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white70, width: 1.5),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.white70, width: 1.5),
        ),
        hintText: UIHelper.password,
        hintStyle: TextStyle(
          fontFamily: "Satisfy",
          fontSize: 15,
          color: Colors.white70,
        ),
      ),
    ),
  );

  Widget get _forgetPassButton => Padding(
    padding: EdgeInsets.all(10),
    child: TextButton(
      style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
      onPressed: () {},
      child: Text(
        UIHelper.forgetPass,
        style: TextStyle(
          fontFamily: "Satisfy",
          fontSize: 15,
          color: Colors.white70,
        ),
      ),
    ),
  );

  Widget get _loginButton => Padding(
    padding: EdgeInsets.all(5),
    child: MaterialButton(
      height: 40,
      minWidth: 230,
      color: Colors.white70,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => HomePage()));
      },

      child: Text(
        UIHelper.login,
        style: TextStyle(
          fontSize: 15,
          fontFamily: "Satisfy",
          //color: Colors.blueGrey[800],
          color: Color(0xff581d22),
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  );

  Widget get _loginButton2 => Padding(
    padding: EdgeInsets.all(5),
    child: MaterialButton(
      height: 40,
      minWidth: 230,
      color: Colors.white70,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      onPressed: () {},
      child: Text(
        UIHelper.signIn,
        style: TextStyle(
          fontSize: 15,
          fontFamily: "Satisfy",
          // color: Colors.blueGrey[800],
          color: Color(0xff581d22),
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  );

}
