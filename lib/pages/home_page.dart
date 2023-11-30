import 'package:digicard/styles/styles.dart';
import 'package:digicard/widgets/list_card.dart';
import 'package:digicard/widgets/profile_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const ProfileHeader(),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ListCard(
                title: "LinkedIn",
                icon: FontAwesomeIcons.linkedin,
                onTap: () => {},
              ),
              const SizedBox(height: 7),
              ListCard(
                  title: "Resume",
                  icon: FontAwesomeIcons.link,
                  onTap: () => {},
                ),
            ],
          )
        )
      ],
    );
  }
}
