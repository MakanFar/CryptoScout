import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:untitled/screens/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textSize = Theme.of(context).textTheme;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: Theme.of(context).textTheme.copyWith(
              headline4: textSize.headline4!.copyWith(
                color: Colors.white,
              ),
              headline5: textSize.headline5!.copyWith(color: Colors.white),
              headline6: textSize.headline6!.copyWith(
                color: Colors.white,
              ),
              subtitle1: textSize.subtitle1!.copyWith(
                color: Colors.white,
              ),
              subtitle2: textSize.subtitle2!.copyWith(
                color: Colors.grey,
              ),
              overline: textSize.overline!.copyWith(color: Colors.grey),
            ),
      ),
      themeMode: ThemeMode.dark,
      home: LoginScreen(),
    );
  }
}
