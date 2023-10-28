import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_moviea/colors.dart';
import 'package:simple_moviea/widgeta/moviesslider.dart';
import 'package:simple_moviea/widgeta/trendingslider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset(
          "assets/flutflix.png",
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
            Text(
              "Trending Movies",
              style: GoogleFonts.aBeeZee(fontSize: 25),
            ),
            const SizedBox(
              height: 32,
            ),
            const TrendingSlider(),
            const SizedBox(height: 32),
            Text(
              "Top Rated Movies",
              style: GoogleFonts.aBeeZee(fontSize: 25),
            ),
            const SizedBox(
              height: 32,
            ),
            const MoviesSlider(),
            const SizedBox(height: 32),
            Text(
              "Upcoming Rated Movies",
              style: GoogleFonts.aBeeZee(fontSize: 25),
            ),
            const SizedBox(
              height: 32,
            ),
            const MoviesSlider(),
          ],
        ),
      ),
    );
  }
}
