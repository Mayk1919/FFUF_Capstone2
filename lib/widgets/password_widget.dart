import 'package:flutter/material.dart';

class PasswordWidget extends StatelessWidget {
  const PasswordWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height*.01,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: TextField(
          obscureText: true,
          decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            fillColor: Colors.white,
            filled: true,
            prefixIcon: const Icon(Icons.lock_open_outlined),
            suffixIcon: const Icon(Icons.visibility_off_outlined ),
            contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: "Password",
            helperStyle: Theme.of(context).textTheme.bodyText1,
          ),
        ),
      ),
    );
  }
}
