import 'package:flutter/material.dart';

//use 'flutter create' to make this app
//'flutter devices' to see available devices on machine
//'flutter emulators' to see available emulators on machine

/*
Possible to specify custom (older) languages for particular devices, like java or obj-c for android/ios respectively: 

flutter create \
--ios-language objc \
--android-language java \
hello_older_languages
 */
void main() {
  runApp(const MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //the "App" widget, in which all other widgets will be put
      title: "Hello Flutter!",
      theme: ThemeData(
        // Define AppBarTheme within ThemeData
        appBarTheme: const AppBarTheme(
          color: Colors
              .amber, //This sets a default, global color for all app bars in the app
          //there is a mistake in the book that says that "swatches" do this, that is not correct
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 30, color: Colors.red),
          //similarly, this sets a default text style for the app
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //no color is specified so the app will use a default green color, specified in the MaterialApp widget
        title: const Text('Howdy!'),
      ),
      body: const Column(
        children: [
          Text('Hello how are you eh'),
          Text('This is some more text'),
        ],
      ),
    );
  }
}