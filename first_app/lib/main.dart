// connect our main.dart code file with another code file / We want to use certain features/functions that are defined n other code file.
import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

// function defination
// main function name // void : return type // {} : function body
// No need to call main() function to execute as it is a main entry point of an app.
//It will execute compile version of main function when app is active.
void main() {
// function execution/call
// runApp -> contains widget tree
  runApp(
    // Material Flutter Widget : https://docs.flutter.dev/ui/widgets : root widget helps to setup overall app.
    // parameter : value what to display in app, // home : display something on screen, its main argument which kind of widget/UI element should be display in UI.
    // const : keyword : feature that helps Dart to optimize the runtime performance of App. How ? : 1st time it creates device memory creates object with Text widget. and 2nd time as its const : existing memory thing will be reused.

    /* const MaterialApp(home: Text('Hello World!'))); */

    // Scaffold Widget :
    const MaterialApp(
      // CORE widget provided by flutter - as a starting point, helps to setup overall app
      // scaffold : helps to setup good looking screens in app, inside MaterialApp
      home: Scaffold(
        // backgroundColor: Color.fromARGB(255, 81, 32, 167),
        body: GradientContainer(),
      ),
    ),
  );
}
