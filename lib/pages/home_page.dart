import 'package:digicard/widgets/cube_card.dart';
import 'package:digicard/widgets/list_card.dart';
import 'package:digicard/widgets/profile_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CubeCard(title: "Text", icon: CupertinoIcons.chat_bubble, onTap: () => {}),
                  // const Spacer(),
                  CubeCard(
                    title: "Contact",
                    icon: CupertinoIcons.person_2_square_stack,
                    onTap: () => {}
                  ),
                ],
              ),
              const SizedBox(height: 10),
              ListCard(
                title: "LinkedIn",
                icon: FontAwesomeIcons.linkedin,
                onTap: () => {},
              ),
              const SizedBox(height: 7),
              ListCard(
                title: "Resume",
                icon: CupertinoIcons.link,
                onTap: () => {},
              ),
              const SizedBox(height: 7),
              ListCard(
                title: "Text",
                icon: CupertinoIcons.chat_bubble,
                onTap: () => {},
              ),
              const SizedBox(height: 7),
              ListCard(
                title: "Email",
                icon: CupertinoIcons.envelope,
                onTap: () => {},
              ),
              const SizedBox(height: 7),
              ListCard(
                title: "Tap",
                icon: FontAwesomeIcons.nfcDirectional,
                onTap: () => {},
              ),
              const SizedBox(height: 7),
              ListCard(
                title: "Display QR Code",
                icon: CupertinoIcons.qrcode,
                onTap: () => {},
              ),
            ],
          )
        )
      ],
    );
  }
}
