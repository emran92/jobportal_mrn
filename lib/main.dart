import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jobportal_flutter_mrn/screens/intro_pages/splash_screen.dart';

//void main() {
//  runApp(MyApp());
//}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(new MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Job Portal',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF122F51),
        accentColor: Color(0xFF122F51),
      ),
      home: SplashScreen(),
    );
  }
}