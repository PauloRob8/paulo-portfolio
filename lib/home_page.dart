import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paulo_porfolio/widgets/about_and_location_info_widget.dart';
import 'package:paulo_porfolio/widgets/home_page_header_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Scaffold(
      backgroundColor: Colors.orange[50],
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HomePageHeaderWidget(),
            Column(
              children: [
                Text(
                  'Hi, my name is Paulo! And, \nI\'m a Mobile Software Engineer!',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
                const SizedBox(height: 80),
                AboutLocationWidget(screenSize: screenSize),
                const SizedBox(height: 50),
                Text(
                  'My journey so far',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
                const SizedBox(height: 50),
                Text(
                  'Personal Projects',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
