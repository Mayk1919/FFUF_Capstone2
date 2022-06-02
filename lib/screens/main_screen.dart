import 'package:flutter/material.dart';
import 'package:capstone2/screens/screens.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 74,
          leadingWidth: 74,
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              print('menu');
            },
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                      color: const Color(0XFF4CA6A8),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(Icons.notes),
                  ),
                ],
              ),
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                print('profile');
              },
              child: const Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: CircleAvatar(
                  radius: 22,
                  backgroundImage:
                      AssetImage('assets/images/profile_images/person1.jpeg'),
                ),
              ),
            )
          ],
        ),
        body: const HomeScreen(),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor:
              Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
          selectedItemColor:
              Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.explore,
                ),
                label: 'Expansions'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.explore,
                ),
                label: 'Expansions'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.explore,
                ),
                label: 'Expansions'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.explore,
                ),
                label: 'Expansions')
          ],
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }


}
