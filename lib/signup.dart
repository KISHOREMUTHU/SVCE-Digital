import 'package:ease_the_error/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
//import 'package:smartrobos/google_sign_in.dart';

class SignInWidget extends StatefulWidget {
  @override
  _SignInWidgetState createState() => _SignInWidgetState();
}

class _SignInWidgetState extends State<SignInWidget> {
  String _email, _password;
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Container(
              alignment: Alignment.center,
              height: 240,
              child: Image.asset(
                'assets/login.png',

                // width: size.width * 0.5,
                //  height: size.width * 0.5,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Welcome Back !!!',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Sign In To Enter our App',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                // fontWeight : FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            TextFieldController(
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  _email = value.trim();
                },
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.mail,
                    color: Colors.grey,
                  ),
                  hintText: "Email ID",
                  border: InputBorder.none,
                ),
              ),
            ),
            TextFieldController(
              child: TextField(
                obscureText: true,
                onChanged: (value) {
                  setState(() {
                    _password = value.trim();
                  });
                },
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.lock,
                    color: Colors.grey,
                  ),
                  suffixIcon: Icon(Icons.visibility, color: Colors.grey),
                  hintText: "Password",
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: Text('Forgot Password ?',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
            RoundedButton(
              email: _email,
              password: _password,
            ),
            Divider(),
            SizedBox(height: 15),
            Text(
              'Or Connect Using',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                // fontWeight : FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GoogleSignInButtonWidget(),
                FacebookSignInButtonWidget(),
              ],
            ),
            SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account ? ",
                  style: TextStyle(
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
                              builder: (context) => SignUpPage()));
                    },
                    child: Text('Sign Up',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.greenAccent,
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

class GoogleSignInButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 130,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(12),
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
          color: Colors.white,
        ),
        label: Text(' Google ',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            )),
      ),
    );
  }
}

class FacebookSignInButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.blue,
      ),
      padding: EdgeInsets.all(4),
      child: TextButton.icon(
        onPressed: () {},
        icon: FaIcon(
          FontAwesomeIcons.facebookF,
          color: Colors.white,
        ),
        label: Text('Facebook',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
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
          color: Colors.greenAccent,
          width: 1,
        ),
      ),
      child: child,
    );
  }
}

class RoundedButton extends StatelessWidget {
  final String password, email;
  final auth = FirebaseAuth.instance;

  RoundedButton({Key key, this.password, this.email}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: MaterialButton(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 40,
          ),
          color: Colors.greenAccent,
          onPressed: () {
            auth.signInWithEmailAndPassword(email: email, password: password);
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => SignInWidget()));
          },
          child: Text(
            'Login',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 70),
            Text(
              "Let's Get Started !!!",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Create Your New Account',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                // fontWeight : FontWeight.bold,
              ),
            ),
            SizedBox(height: 35),
            TextFieldControllerPage(
              child: TextField(
                onChanged: (value) {},
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.person_outlined,
                    color: Colors.grey,
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
                    color: Colors.grey,
                  ),
                  hintText: "Email ID",
                  border: InputBorder.none,
                ),
              ),
            ),
            TextFieldControllerPage(
              child: TextField(
                onChanged: (value) {},
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.phone_android_outlined,
                    color: Colors.grey,
                  ),
                  hintText: "Phone",
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
                    color: Colors.grey,
                  ),
                  suffixIcon: Icon(Icons.visibility, color: Colors.grey),
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
                    color: Colors.grey,
                  ),
                  suffixIcon: Icon(Icons.visibility, color: Colors.grey),
                  hintText: "Confirm Password",
                  border: InputBorder.none,
                ),
              ),
            ),
            RoundButton(),
            SizedBox(height: 15),
            Divider(),
            SizedBox(height: 85),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account ? ",
                  style: TextStyle(
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
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.greenAccent,
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
          color: Colors.greenAccent,
          onPressed: () {},
          child: Text(
            'Create',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
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
        color: Colors.white,
        borderRadius: BorderRadius.circular(29),
        border: Border.all(
          color: Colors.greenAccent,
          width: 1,
        ),
      ),
      child: child,
    );
  }
}
