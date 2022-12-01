import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageHeaderWidget extends StatelessWidget {
  const HomePageHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purpleAccent, Colors.purple],
            ),
          ),
          width: MediaQuery.of(context).size.width,
          height: 160.0,
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: ClipOval(
              child: Image.network(
                'https://media-exp1.licdn.com/dms/image/C4D03AQEBAGXuwxs0yw/profile-displayphoto-shrink_800_800/0/1641996424575?e=1675296000&v=beta&t=F7wB7Vi-oOUz7N8ZRN4LwgB-EvAbge9Lt0bNpmtv5ww',
                width: 200,
                height: 200,
              ),
            ),
          ),
        ),
        Positioned(
          top: 10,
          right: 15,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.purple[300],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      'EN',
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.transparent,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      'PT',
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
