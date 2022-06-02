import 'package:flutter/material.dart';

class ContinueWithWidget extends StatelessWidget {
  const ContinueWithWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          SizedBox(
            width: 20,
            child: Divider(
              thickness: 2.0,
              color: Color(0XFF9E9E9E),),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 10.0),
            child: Text('Or Continue with'),
          ),
          SizedBox(
            width: 20,
            child: Divider(
              thickness: 2.0,
              color: Color(0XFF9E9E9E),
            ),
          ),
        ],
      ),
    );
  }
}
