import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExerciseIcon extends StatelessWidget {
  String exercise;
  var logo;
  var colorr;
  ExerciseIcon({super.key,required this.exercise , required this.logo, required this.colorr});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        color: colorr,
      ),
      height: 60,
      padding: EdgeInsets.all(10),

      child: Row(
          children: [
            Image.asset(logo),
            SizedBox(width: 15),
            Text(exercise,
            style: TextStyle(
              fontSize: 20,
            ),)
          ],
        ),

    );
  }
}
