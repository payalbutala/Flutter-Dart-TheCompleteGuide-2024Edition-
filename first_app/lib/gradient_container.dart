import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';

// widgets are objects(DS in memory), defining custom widgets as classes
// its all about objects which are built based on classes
// class : creating class, in Caps each letter on caps
class GradientContainer extends StatelessWidget {
  // GradientContainer() {
  //   // initialization work
  // }

  // super : refers to parent class eg: StatelessWidget
  // key : needs to forward to stateless widget, extending StatelessWidget wants key argument.
  // this will pass key to super
  const GradientContainer({super.key});

  // class logic start
  // overwriting a method that is expected by StatelessWidget - extra metadata/annotation adding to method
  @override
  // build -> flutter will call build method when we call this widget inside any other widget/runApp(), must return Widget, it is return value Type of function
  // context -> extra metadata/annotation adding to method
  Widget build(context) {
    // Widget is return type
    // var color = Colors.deepPurple;
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.deepPurple,
            Colors.deepOrangeAccent,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: StyledText(),
      ),
    );
  }
}
