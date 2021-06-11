import 'package:ease_the_error/google_sign_in.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
//import 'package:smartrobos/google_sign_in.dart';

class SignInWidget extends StatefulWidget {
  @override
  _SignInWidgetState createState() => _SignInWidgetState();
}

class _SignInWidgetState extends State<SignInWidget> {
  var data = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/welcome.png'),
            ),
          ),
          child: Container(
            //   constraints: BoxConstraints.expand(),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.30),
                TextFieldController(
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    style: GoogleFonts.poppins(),
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.mail,
                        color: Colors.amber,
                      ),
                      hintText: "Email ID",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                TextFieldController(
                  child: TextField(
                    style: GoogleFonts.poppins(),
                    obscureText: data == 0 ? true : false,
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.lock,
                        color: Colors.amber,
                      ),
                      suffixIcon: MaterialButton(
                          onPressed: () {
                            if (data == 0) {
                              setState(() {
                                data = 1;
                              });
                            } else {
                              setState(() {
                                data = 0;
                              });
                            }
                          },
                          child: Icon(Icons.visibility, color: Colors.amber)),
                      hintText: "Password",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                RoundedButton(
                  textColor: Colors.white,
                  text: 'Login',
                  color: Colors.blue[900],
                  press: () {},
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        'Or',
                        style: GoogleFonts.poppins(
                          fontSize: 30,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.025),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GoogleSignInButtonWidget(),
                    //   FacebookSignInButtonWidget(,
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account ?  ",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpPage()));
                      },
                      child: Text(
                        'Sign Up',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: Colors.amber,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class GoogleSignInButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 2),
          )
        ],
      ),
      // color: Colors.red,
      padding: EdgeInsets.all(4),
      child: TextButton.icon(
        onPressed: () {
          final provider =
              Provider.of<GoogleSignInProvider>(context, listen: false);
          provider.login();
        },
        icon: FaIcon(
          FontAwesomeIcons.google,
          size: 32,
          color: Colors.red,
        ),
        label: Text('Sign In With Google',
            style: GoogleFonts.poppins(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            )),
      ),
    );
  }
}

class TextFieldController extends StatelessWidget {
  final Widget child;

  const TextFieldController({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(29),
        border: Border.all(
          color: Colors.blue.shade900,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: child,
    );
  }
}

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  Color color, textColor;

  RoundedButton(
      {Key key,
      this.text,
      this.press,
      this.textColor = Colors.white,
      this.color = Colors.blue})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 2),
          )
        ],
      ),
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: MaterialButton(
          color: color,
          padding: const EdgeInsets.symmetric(
            vertical: 18,
            horizontal: 20,
          ),
          onPressed: press,
          child: Text(
            text,
            style: GoogleFonts.poppins(
              fontSize: 20,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 70),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 0),
                  child: Text(
                    "Let's Get Started !!!",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFieldControllerPage(
                  child: TextField(
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.person_outlined,
                        color: Colors.amber,
                      ),
                      hintText: "User Name",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                TextFieldControllerPage(
                  child: TextField(
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.mail,
                        color: Colors.amber,
                      ),
                      hintText: "Email ID",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                TextFieldControllerPage(
                  child: TextField(
                    obscureText: true,
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.lock,
                        color: Colors.amber,
                      ),
                      suffixIcon: Icon(Icons.visibility, color: Colors.amber),
                      hintText: "Password",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                TextFieldControllerPage(
                  child: TextField(
                    obscureText: true,
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.lock,
                        color: Colors.amber,
                      ),
                      suffixIcon: Icon(Icons.visibility, color: Colors.amber),
                      hintText: "Confirm Password",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                RoundButton(),
                SizedBox(height: 15),
                Divider(),
              ],
            ),
            SizedBox(height: 70),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account ? ",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                Container(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignInWidget()));
                    },
                    child: Text('Login Here',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.blue.shade900,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class RoundButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 60,
      width: size.width * 0.4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: MaterialButton(
          color: Colors.blue.shade900,
          onPressed: () {},
          child: Text(
            'Create',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class TextFieldControllerPage extends StatelessWidget {
  final Widget child;

  const TextFieldControllerPage({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 2),
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(29),
        border: Border.all(
          color: Colors.blue.shade900,
          width: 1,
        ),
      ),
      child: child,
    );
  }
}
