import 'package:digicard/styles/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CubeCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function onTap;

  const CubeCard(
      {Key? key, required this.title, required this.icon, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth * 0.45,
      height: screenHeight * 0.15,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        gradient: const  LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              DigicardStyles.primaryColor,
              DigicardStyles.primaryColorDark,
            ],
          ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: CupertinoColors.systemGrey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: const Offset(0, 3),
        )
      ]),
      child: DefaultTextStyle(
        style: GoogleFonts.montserrat(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          color: CupertinoColors.white,
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(icon, color: CupertinoColors.white, size: 60),
            const SizedBox(width: 15),
            Text(title),
          ],
        ),
      ),
    );
  }
}
