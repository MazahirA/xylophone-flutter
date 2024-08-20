import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:xylophone_flutter/xylophone_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // setup preferred orientations,
  // and only after it finished, run our app
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((value) => runApp(const Xylophone()));
}

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xylophone',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  XylophoneApp(),
    );
  }
}

