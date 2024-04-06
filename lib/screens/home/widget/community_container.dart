import 'package:flutter/material.dart';

class CommunityContainer extends StatelessWidget {
  final Color containerColor;
  final String mainTitle;
  final String subTitle;
  final String imageUrl;

  const CommunityContainer({
    super.key,
    required this.containerColor,
    required this.mainTitle,
    required this.subTitle,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(imageUrl),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                mainTitle,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                subTitle,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          Spacer(),
          Icon(
            Icons.arrow_forward_ios,
            size: 13,
            color: Colors.grey.shade600,
          ),
        ],
      ),
    );
  }
}


// color: Color.fromRGBO(255, 244, 212, 1),
// "assets/images/star.png"