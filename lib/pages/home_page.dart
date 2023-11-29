import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final AssetImage headshot = const AssetImage("assets/images/headshot.jpeg");

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: const Color(0xFF556b2f),
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
                    Text(
                      "William Binette".toUpperCase(),
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF556b2f),
                        fontFamily: String.fromEnvironment("Avenir Next"),
                      ),
                    ),
                    const Text(
                      "Full-Stack Engineer | Technical Project Manager",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF556b2f),
                        fontFamily: String.fromEnvironment("Avenir Next"),
                      ),
                    ),
                  ],
                ))
          ],
        )
      ],
    );
  }
}
