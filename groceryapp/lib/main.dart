import 'package:flutter/material.dart';
import 'package:groceryapp/config/app_router.dart';
import 'package:groceryapp/screens/screens.dart';

import 'config/theme.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery App',
      theme: theme(),

      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: HomeScreen.routeName,
    );
  }
}





