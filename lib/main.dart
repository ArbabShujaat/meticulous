import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Constants/constant.dart';
import 'Screens/splash_screen.dart';
import 'Screens/web_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Meticlous Medical , Inc",
      theme: ThemeData(primaryColor: Colors.blue, primarySwatch: Colors.indigo),
      routes: <String, WidgetBuilder>{
        SPLASH_SCREEN: (BuildContext context) => SplashScreen(),
        WEB_VIEW: (BuildContext context) => InAppWebViewExampleScreen(),
      },
      initialRoute: SPLASH_SCREEN,
    );
  }
}
