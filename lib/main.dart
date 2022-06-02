
import 'package:capstone2/provider/job_data.dart';
import 'package:capstone2/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return ChangeNotifierProvider<JobData>(
      create: (BuildContext context)=> JobData(),
      child: MaterialApp(
        title: 'Job Search App',
        theme: ThemeData(
          backgroundColor: const Color(0XFFE5E5E5),
          primaryColor: const Color(0XFF4CA6A8),
          fontFamily: 'Poppins',
          appBarTheme: const AppBarTheme(
    
            backgroundColor: Colors.transparent,
            iconTheme: IconThemeData(color: Colors.white)
            
          ),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor:Colors.white,
            selectedItemColor: Color(0XFF4CA6A8),
            unselectedItemColor: Color(0XFFA8A8AA),
            showUnselectedLabels: true,
    
             ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              primary: const Color(0XFF4CA6A8), // background color
              onPrimary: Colors.white,
              textStyle:  const TextStyle(
                fontSize: 16.0,
    
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          textTheme:  const TextTheme(
            headline1:  TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 34,
              fontFamily: 'Poppins',
              color: Color(0XFF1A1D1E),
              height: 1,
            ),
            headline2:  TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 30,
              fontFamily: 'Poppins',
              color: Color(0XFF1A1D1E),
            ),
            headline3:  TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 30,
              fontFamily: 'Poppins',
              color: Color(0XFF1A1D1E),
            ),
            headline4:  TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              fontFamily: 'Poppins',
              color: Color(0XFF1A1D1E),
            ),
            headline5:  TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              fontFamily: 'Poppins',
              color: Color(0XFF1A1D1E),
            ),
            headline6:  TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              fontFamily: 'Poppins',
              color: Color(0XFF1A1D1E),
            ),
            subtitle1: TextStyle(
              fontSize: 12.0,
              color: Color(0XFF6A6A6A),
              fontWeight: FontWeight.w400,
              height: 1,
              fontFamily: 'Poppins',
            ),
            subtitle2: TextStyle(
              fontSize: 12.0,
              color: Color(0XFF6A6A6A),
              fontWeight: FontWeight.w600,
              fontFamily: 'Poppins',
            ),
            bodyText1: TextStyle(
              fontSize: 16.0,
              color: Color(0XFF6A6A6A),
              fontWeight: FontWeight.w400,
              fontFamily: 'Poppins',
            ),
            bodyText2: TextStyle(
              fontSize: 16.0,
              color: Color(0XFF6A6A6A),
              height: 1,
              fontWeight: FontWeight.w500,
             
              fontFamily: 'Poppins',
            ),
            labelMedium: TextStyle(
            fontSize: 16.0,
            color: Color(0XFF6A6A6A),
            fontWeight: FontWeight.w600,
            height: 1,
            fontFamily: 'Poppins',
          ),
          
            
          ),
        ),
        initialRoute: '/',
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
