import 'package:flutter/material.dart';
import 'package:storeapp/Screens/HomePage.dart';
import 'package:storeapp/Screens/UpdatePage.dart';
import 'package:storeapp/Services/GetProductService.dart';

void main() {
  runApp(StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.id: (context) => HomePage(),
        UpdatePage.id: (context) => UpdatePage()
      },
      initialRoute: HomePage.id,
    );
  }
}
