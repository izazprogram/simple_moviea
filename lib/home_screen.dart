import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:simple_moviea/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset("assets/flutflix.png",
        fit: BoxFit.cover,
        height: 30,
          filterQuality: FilterQuality.high,
        ),
        centerTitle: true,
      ),

body: SingleChildScrollView(
  physics: const BouncingScrollPhysics(),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("Trending Movies"),
     SizedBox(height: 10,),
     SizedBox(
      width: double.infinity,
       child:CarouselSlider.builder(
           itemCount: 10,
           options: CarouselOptions(
             aspectRatio: 16/9,
             height: 300,autoPlay: true,
             viewportFraction: 0.55,
             enlargeCenterPage: true,
             pageSnapping: true,
             autoPlayCurve: Curves.fastOutSlowIn,
             autoPlayAnimationDuration: const Duration(seconds: 1),
           ),
           itemBuilder: (context,itemIndex,pageViewIndex) {
             return ClipRRect(
               borderRadius: BorderRadius.circular(12),
               child: Container(
                 height: 300,
                 width: 200,
                 color: Colors.amber,
               ),
             );
           }
           ),
     )
    ],
  ),
),
    );
  }
}
