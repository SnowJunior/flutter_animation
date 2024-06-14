import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:real_estate/components/card_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

const availableHouses = [
  {"image": 'assets/image2.jpg', "text": 'Gladkova St., 25'},
  {"image": 'assets/image3.jpg', "text": 'Gunbina St., 11'},
  {"image": 'assets/image5.jpg', "text": 'Trefoleva St., 43'},
  {"image": 'assets/image6.jpg', "text": 'Sedova St., 22'},
];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white,
                Color(0xffA5957E),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Center(
                        child: Row(
                          children: [
                            Icon(Icons.location_pin),
                            SizedBox(
                              width: 5,
                            ),
                            Text('San Fransisco')
                          ],
                        ),
                      ),
                    ),
                  )
                      .animate()
                      .fadeIn(
                          duration: 500.ms, curve: Curves.easeIn, begin: 0.0)
                      .slide(
                        delay: 400.ms,
                        curve: Curves.easeIn,
                        begin: const Offset(-1.0, 0.0),
                        end: Offset.zero,
                      ),
                  CircleAvatar(
                    radius: 30,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/professionalImage.jpeg',
                      ),
                    ),
                  ).animate().slide(duration: 500.ms).scale(delay: 500.ms),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Hi Marina',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ).animate().fade(duration: 300.ms).show(delay: 1000.ms),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "let's select your perfect place",
                style: TextStyle(
                  fontSize: 32,
                ),
              )
                  .animate()
                  .fadeIn(
                    duration: 500.ms,
                    curve: Curves.easeIn,
                    begin: 0.0,
                  )
                  .slideY(begin: -1.0, end: 0.0, delay: 1500.ms),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 70,
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Text('Buy'),
                          SizedBox(
                            height: 30,
                          ),
                          Text("Number counter"),
                          SizedBox(
                            height: 10,
                          ),
                          Text('offers')
                        ],
                      ),
                    ),
                  ).animate().fade(duration: 1200.ms).scale(delay: 1700.ms),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Text('Rent'),
                          SizedBox(
                            height: 30,
                          ),
                          Text("Number counter"),
                          SizedBox(
                            height: 10,
                          ),
                          Text('offers')
                        ],
                      ),
                    ),
                  ).animate().fade(duration: 1200.ms).scale(delay: 1700.ms),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 7.0),
                      child: Column(
                        children: [
                          ListView.builder(
                            itemCount: availableHouses.length,
                            itemBuilder: (context, index) {
                              final item = availableHouses[index];
                              return HouseItem(imageUrl: item["image"], houseName: item["text"]);
                            } 
                          ),
                          const HouseItem(
                            imageUrl: '',
                            houseName: '',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
                  .animate()
                  .fadeIn(duration: 2000.ms, curve: Curves.easeIn, begin: 0.0)
                  .slide(
                    begin: const Offset(0.0, 1.0),
                    end: Offset.zero,
                    curve: Curves.easeIn,
                    delay: 2500.ms,
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
