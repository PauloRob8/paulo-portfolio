import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paulo_porfolio/commons/app_string.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutLocationWidget extends StatelessWidget with AppStrings {
  const AboutLocationWidget({
    required this.screenSize,
    super.key,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenSize.height * 0.4,
      child: _withGrid(),
    );
  }

  GridView _withGrid() => GridView.count(
        childAspectRatio: 2,
        crossAxisCount: 2,
        children: [
          _aboutMeWidget(),
          _locationAndContactCard(),
        ],
      );

  Column _aboutMeWidget() => Column(
        children: [
          const Text(
            'About Me',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 40.0,
                top: 10,
              ),
              child: SingleChildScrollView(
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi non eros libero.\nMaecenas maximus, '
                  'lectus eget semper fermentum, \njusto ligula tristique enim, '
                  'eget malesuada ante tellus at elit. \nDonec ut augue sed libero porttitor eleifend ut eu velit. '
                  '\nNunc egestas eu nibh non elementum. \nMorbi accumsan turpis egestas, laoreet ipsum sit amet, pulvinar lorem.'
                  '\nPhasellus efficitur urna et libero cursus porttitor. \nQuisque a turpis ipsum. Nullam sed nisl congue, tempor tortor at, suscipit purus. '
                  '\nCurabitur laoreet turpis viverra velit pharetra sollicitudin.'
                  '\nVivamus gravida dolor vitae libero sagittis laoreet. \nCurabitur blandit nulla pretium bibendum imperdiet. ',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.openSans(
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
        ],
      );

  Padding _locationAndContactCard() => Padding(
        padding: EdgeInsets.symmetric(
            horizontal: screenSize.width > 1200 ? 240.0 : 0.0),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 25),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Location',
                        style: GoogleFonts.openSans(
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(width: 5),
                      const Icon(Icons.location_on_sharp),
                    ],
                  ),
                  Text(
                    '🇧🇷 Brazil, Teresina - PI',
                    style: GoogleFonts.roboto(),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'LinkedIn',
                        style: GoogleFonts.openSans(
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(width: 5),
                      const Icon(
                        FontAwesomeIcons.linkedin,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                  _linkItem(
                    'pauloRob.com',
                    AppStrings.linkedinProfile,
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      Text(
                        'GitHub',
                        style: GoogleFonts.openSans(
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(width: 5),
                      const Icon(
                        FontAwesomeIcons.github,
                      ),
                    ],
                  ),
                  _linkItem('@PauloRob', AppStrings.githubProfile),
                ],
              ),
            ),
          ),
        ),
      );

  GestureDetector _linkItem(String label, String link) => GestureDetector(
        onTap: () async {
          final parsedLink = Uri.parse(link);
          launchUrl(parsedLink);
        },
        child: Row(
          children: [
            Text(
              label,
              style: GoogleFonts.roboto(
                color: Colors.grey,
              ),
            ),
            const SizedBox(width: 5),
            const Icon(
              FontAwesomeIcons.link,
              size: 18,
            ),
          ],
        ),
      );
}
