

import 'package:digicard/styles/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ListCard extends StatelessWidget{
  final String title;
  final IconData icon;
  final Function onTap;

  const ListCard({Key? key, required this.title, required this.icon, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: DigicardStyles.primaryColor,
          width: 3,
        )
      ),
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