import "package:digicard/styles/styles.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class ProfileHeader extends StatelessWidget {
  //GCP bucket for images here instead of raw files
  final AssetImage headshot = const AssetImage("assets/images/headshot.jpeg");

  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 60, bottom: 20, left: 10, right: 10),
      // color: DigicardStyles.primaryColor,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            DigicardStyles.primaryColor,
            DigicardStyles.primaryColorDark,
          ],
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  //TODO import custom user set colors here
                  border: Border.all(
                    color: CupertinoColors.white,
                    width: 5,
                  ),
                ),
                //ignore: prefer_const_constructors
                child: CircleAvatar(
                  radius: 75,
                  backgroundImage: headshot,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Idea: put an opacity gradient over background to allow text to be visible, but have custom backgrounds.
              Container(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      //TODO import proper data here
                      Text(
                        "William Binette".toUpperCase(),
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            fontSize: 30,
                            color: CupertinoColors.white,
                            fontWeight: FontWeight.w600,
                        ),
                      )),
                      const SizedBox(height: 5),
                      Text(
                        "Full-Stack Engineer | Technical Project Manager",
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            fontSize: 15,
                            color: CupertinoColors.white,
                          ),
                        ),
                      ),
                    ],
                  )
                )
            ],
          )
        ],
      ),
    );
  }
}
