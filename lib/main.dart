import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Carousel Slider'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            'T20 WorldCup Winners 2024 \n INDIA ',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 50,
          ),
          CarouselSlider(
            items: [
              Container(
                margin: EdgeInsets.all(8.0),
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://images.deccanherald.com/deccanherald/2024-07/b540460d-885f-4184-a807-b16312450396/T20_World_Cup_Winning_Images__4_.JPG?w=1200&h=675&auto=format%2Ccompress&fit=max&enlarge=true'),
                        fit: BoxFit.cover)),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://cdn.newsnationtv.com/resize/460_-/images/2024/06/30/rohit-sharma-t20-world-cup-win-video-83.jpg'),
                        fit: BoxFit.cover)),
              ),
            ],
            options: CarouselOptions(
                autoPlay: true,
                autoPlayAnimationDuration: Duration(
                  milliseconds: 1000,
                ),
                viewportFraction: 0.8),
          )
        ],
      ),
    );
  }
}
