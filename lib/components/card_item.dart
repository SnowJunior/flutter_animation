import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HouseItem extends StatelessWidget {
  final String imageUrl;
  final String houseName;
  const HouseItem({super.key, required this.houseName, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          // height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Column(
              children: [
                SizedBox(width: 350, child: Image.asset(imageUrl)),
              ],
            ),
          ),
        ),
        Positioned(
          left: 30,
          bottom: 20,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0.0, end: 280.0),
            duration: const Duration(milliseconds: 5000),
            builder: (context, double width, child) {
              return Stack(
                children: [
                  Container(
                    width: width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xffD2DAD6).withOpacity(.8),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                         CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        Positioned(
          left: 100,
          bottom: 28,
          child: Text(
            houseName,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ).animate().slide(duration: 500.ms).scale(delay: 4000.ms),
        )
      ],
    );
  }
}
