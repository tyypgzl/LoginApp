import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_app/Screens/Login/components/login_background.dart';
import 'package:login_app/Screens/SignUp/signup_screen.dart';
import 'package:login_app/Screens/components/rounded_input_field.dart';
import 'package:login_app/Screens/components/rounded_password_field.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "LOGİN",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            RoundedInputFiled(
              hintText: "Email",
              onChanged: (value) {},
            ),
            RoundedPassworField(
              onChanged: (value) {},
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
                  onPressed: () {},
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an Account?",
                  style: TextStyle(color: kPrimaryColor),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SignUpScreen();
                    }));
                  },
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                        color: kPrimaryColor, fontWeight: FontWeight.bold),
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
