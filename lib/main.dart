import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:synergy/helpers/cart_provider.dart';

import 'package:synergy/screens/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MyCartProvider(),
      child: Builder(builder: (BuildContext context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              scaffoldBackgroundColor: const Color.fromARGB(0, 20, 20, 20),
              useMaterial3: true,
              brightness: Brightness.dark,
              primaryColor: const Color.fromARGB(0, 20, 20, 20),
              appBarTheme:
                  const AppBarTheme(backgroundColor: Colors.transparent)),
          darkTheme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                  seedColor: const Color.fromARGB(0, 20, 20, 20))),
          home: const Splashscreen(),
        );
      }),
    );
  }
}
