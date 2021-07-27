import 'package:flutter/material.dart';
import 'package:login_app/Screens/components/textfield_container.dart';

import '../../../constants.dart';

class RoundedPassworField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPassworField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        obscureText: true,
        decoration: InputDecoration(
            icon: Icon(
              Icons.lock,
              color: kPrimaryColor,
            ),
            hintText: "Password",
            border: InputBorder.none,
            suffixIcon: IconButton(
              icon: Icon(Icons.visibility),
              onPressed: () {},
            )),
      ),
    );
  }
}
