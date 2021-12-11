
import 'package:flutter/material.dart';
import 'screens/HomePage.dart';
import 'screens/Login.dart';
import 'screens/SignUp.dart';
import 'screens/WelcomeScrn.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
   runApp(MyApp());
   }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        primaryColor: Colors.orange
      ),
      debugShowCheckedModeBanner: false,
      home: 
    
      HomePage(),

      routes: <String,WidgetBuilder>{

        "Login" : (BuildContext context)=>Login(),
        "SignUp":(BuildContext context)=>SignUp(),
        "start":(BuildContext context)=>WelcomeScrn(),
      },
      
    );
  }

}



