import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  final String? image;
  const ImageButton({Key? key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Image.asset(
        "$image",
        height: 20,
        width: 24,
      ),
    );
  }
}