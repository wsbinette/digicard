import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class ProfileHeader extends StatelessWidget {
  //Grab an S3 or GCP bucket for images here instead of raw files
  final AssetImage headshot = const AssetImage("assets/images/headshot.jpeg");

  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 60, bottom: 20, left: 10, right: 10),
      color: const Color(0xFF556b2f),
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
                    // color: const Color(0xFF556b2f),
                    color: const Color(0xFFFFFFFF),
                    width: 5,
                  ),
                ),
                //ignore: prefer_const_constructors
                child: CircleAvatar(
                  radius: 90,
                  backgroundImage: headshot,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: const EdgeInsets.only(top: 5),
                  child: Column(
                    children: [
                      //TODO import proper data here
                      Text(
                        "William Binette".toUpperCase(),
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            fontSize: 30,
                            // color: Color(0xFF556b2f),
                            color: Color(0xFFFFFFFF),
                            fontWeight: FontWeight.w600,
                        ),
                      )),
                      Text(
                        "Full-Stack Engineer | Technical Project Manager",
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            fontSize: 15,
                            // color: Color(0xFF556b2f),
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}
