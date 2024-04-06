import 'package:flutter/material.dart';

class ForeWardCircleButton extends StatelessWidget {
  const ForeWardCircleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 55,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Icon(Icons.arrow_forward),
    );
  }
}
