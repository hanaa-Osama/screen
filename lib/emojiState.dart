import 'package:flutter/cupertino.dart';

class emojiState extends StatelessWidget {
  String imageURL;
  var state;
  emojiState({super.key,required this.imageURL,required this.state});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Image.asset(imageURL),
            Text(state)
          ],
        )
      ],
    );
  }
}
