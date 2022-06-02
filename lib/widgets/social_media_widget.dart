import 'package:flutter/material.dart';

class SocialMediaWidget extends StatelessWidget {
  const SocialMediaWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 10.0,
            ),
            child: Container(
              height: 60,
              width: 60,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: const Color(0XFFE9F4FF),
              ),

              child: const Image(image: AssetImage('assets/images/social_logo/google.png')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10.0,
            ),
            child: Container(
              height: 60,
              width: 60,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: const Color(0XFFE9F4FF),
              ),

              child: const Image(image: AssetImage('assets/images/social_logo/facebook.png')),
            ),
          )

        ],
      ),
    );
  }
}
