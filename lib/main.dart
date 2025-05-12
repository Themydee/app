import 'package:agri_learn/themes/themeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/login.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context) => Themeprovider(),
    child: const MyApp(),)
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: Provider.of<Themeprovider>(context).themeData,
    );
  }
}
