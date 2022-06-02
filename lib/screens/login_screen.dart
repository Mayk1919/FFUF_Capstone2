import 'package:flutter/material.dart';
import 'package:capstone2/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * .04, left: 30, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome Back!',
              style: Theme.of(context).textTheme.headline2,
            ),
            Padding(
              padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * .3,
              ),
              child: Text(
                'Fill your details or continue with social media',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            const EmailWidget(),
            const PasswordWidget(),
            Container(
              width: double.infinity,
              child: Text(
                'Forget Password?',
                textAlign: TextAlign.end,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .04,
            ),
            Container(
              height: 54,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    '/main',
                  );
                },
                child: const Text('LOG IN'),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .04,
            ),
            const ContinueWithWidget(),
            SizedBox(
              height: MediaQuery.of(context).size.height * .04,
            ),
            const SocialMediaWidget(),
            SizedBox(
              height: MediaQuery.of(context).size.height * .04,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'New User? ',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                        '/register',
                      );
                    },
                    child: Text(
                      'Create Account',
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
