import 'package:flutter/material.dart';
import 'package:groceryapp/config/app_router.dart';
import 'package:groceryapp/screens/screens.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery App',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: HomeScreen.routeName,
    );
  }
}





