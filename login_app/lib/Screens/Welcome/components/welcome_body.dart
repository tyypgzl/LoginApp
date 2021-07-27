import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_app/Screens/Login/login_screen.dart';
import 'package:login_app/Screens/SignUp/signup_screen.dart';
import 'package:login_app/Screens/Welcome/components/welcome_background.dart';
import 'package:login_app/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "WELCOME",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset("assets/icons/chat.svg", width: size.width * 0.77),
            SizedBox(
              height: size.height * 0.04,
            ),
            SizedBox(
              width: size.width * 0.8,
              height: size.width * 0.19,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 11, horizontal: 30),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: kPrimaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(29))),
                  child: Text(
                    "LOGİN",
                    style: TextStyle(color: kPrimaryLightColor),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginScreen();
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              width: size.width * 0.8,
              height: size.width * 0.19,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 11, horizontal: 30),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: kPrimaryLightColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(29))),
                  child: Text(
                    "SİGN UP",
                    style: TextStyle(color: kPrimaryColor),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SignUpScreen();
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
