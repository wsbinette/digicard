

import 'package:digicard/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ListCard extends StatelessWidget{
  final String title;
  final IconData icon;
  final Function onTap;

  const ListCard({Key? key, required this.title, required this.icon, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        elevation: 2,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: DigicardStyles.primaryColor,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      onPressed: () => onTap(),
      child: DefaultTextStyle(
        style: GoogleFonts.montserrat(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: DigicardStyles.primaryColor,
          ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FaIcon(icon, color: DigicardStyles.primaryColor, size: 25),
            const SizedBox(width: 10),
            Text(title),
          ],
        ),
      ),
    );
  }
}