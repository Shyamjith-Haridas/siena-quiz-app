import 'package:flutter/material.dart';

class QuizCardWiget extends StatelessWidget {
  const QuizCardWiget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      width: 180,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 190,
              width: 180,
              decoration: BoxDecoration(
                color: Color.fromRGBO(125, 174, 253, 1),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Positioned(
            left: 15,
            top: -22,
            child: Image.asset(
              "assets/images/notebook.png",
              height: 180,
              width: 180,
            ),
          ),
          Positioned(
            top: 128,
            left: 24,
            child: Text(
              "20 QUESTIONS",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: double.infinity,
              child: Container(
                height: 32,
                //padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.only(
                  bottom: 15,
                  left: 30,
                  right: 30,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Center(
                  child: Text(
                    "start",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
