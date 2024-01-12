import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';
// import 'package:first_app/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

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

  // const GradientContainer({super.key, required this.colors}); // Way1
  const GradientContainer(this.color1, this.color2, {super.key});

  // final List<Color> colors; // Way1

  final Color color1;
  final Color color2;

  // class logic start
  // overwriting a method that is expected by StatelessWidget - extra metadata/annotation adding to method
  @override
  // build -> flutter will call build method when we call this widget inside any other widget/runApp(), must return Widget, it is return value Type of function
  // context -> extra metadata/annotation adding to method
  Widget build(context) {
    // Widget is return type
    // var color = Colors.deepPurple;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          // colors: colors // Way1
          colors: [color1, color2]
          // colors[0],
          // colors[1]
          // color1,
          // color2,
          ,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
          // child: StyledText('Hello Payali!!!'),
          // if you want to use images form assets OR locally stored images
          // Column : vertically top align, horz center align
          child: DiceRoller()),
    );
  }
}
