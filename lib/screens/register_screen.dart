import 'package:flutter/material.dart';
import 'package:capstone2/widgets/widgets.dart';
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding:  EdgeInsets.only(
            top: MediaQuery.of(context).size.height * .02,
            left: 30,
            right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Register Account',
              style: Theme.of(context).textTheme.headline3,
            ),
            Padding(
              padding:  EdgeInsets.only(
                right: MediaQuery.of(context).size.width * .1,
                bottom: MediaQuery.of(context).size.width * .02,
              ),
              child: Text(
                  'Fill your details or continue with social media',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            UserNameWidget(),
            EmailWidget(),
            PasswordWidget(),
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
                onPressed: () {},
                child: Text('SIGN UP'),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .04,
            ),
            ContinueWithWidget(),
            SizedBox(
              height: MediaQuery.of(context).size.height * .04,
            ),
            SocialMediaWidget(),
            SizedBox(
              height: MediaQuery.of(context).size.height * .04,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already Have an Account? ',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.of(context).pushNamed(
                        '/login',
                      );
                    },
                    child: Text(
                      'Log In',
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

