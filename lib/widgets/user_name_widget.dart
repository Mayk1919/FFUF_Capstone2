import 'package:flutter/material.dart';

class UserNameWidget extends StatelessWidget {
  const UserNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height*.01,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: TextField(
          obscureText: false,
          decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            fillColor: Colors.white,
            filled: true,
            prefixIcon: Icon(Icons.perm_identity_outlined ),
            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: "User Name",
            helperStyle: Theme.of(context).textTheme.bodyText1,
          ),
        ),
      ),
    );
  }
}
