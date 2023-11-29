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
                      color: const Color.fromARGB(255, 12, 139, 27),
                      width: 5,
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 90,
                    backgroundImage: headshot,
                  ),
                ),
            ],
          ),
      ],
    );
  }
}

