import 'package:ecommerceappflutter/screens/home.dart';
import 'package:ecommerceappflutter/screens/login.dart';
import 'package:ecommerceappflutter/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model/catalog.dart';

void main()  {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:  [
        Provider(create: (context) =>  CatalogModel()),
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => const Login(),
        },
        theme:ThemeData(
          primaryColor: Colors.blueAccent,
          visualDensity: VisualDensity.adaptivePlatformDensity
        ),

      ),
    );
  }
}
