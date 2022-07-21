import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:girlkicks/screen/homepage.dart';
import 'package:girlkicks/styles.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: bgColor,
  ));
  runApp(GirlKick());
}

class GirlKick extends StatelessWidget {
  const GirlKick({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: primaryColor,
            ),
      ),
      home: const HomePage(),
    );
  }
}
