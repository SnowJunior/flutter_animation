import 'package:flutter/material.dart';

class HouseItem extends StatefulWidget {
  final String imageUrl;
  final String houseName;
  const HouseItem({super.key, required this.imageUrl, required this.houseName});

  @override
  State<HouseItem> createState() => _HouseItemState();
}

class _HouseItemState extends State<HouseItem> {
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
                Image.asset('assets/image2.jpg'),
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
      ],
    );
  }
}
