import 'package:digicard/widgets/cube_card.dart';
import 'package:digicard/widgets/list_card.dart';
import 'package:digicard/widgets/profile_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

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
                  CubeCard(
                    title: "Text", 
                    icon: CupertinoIcons.chat_bubble, 
                    onTap: ()async{
                      Uri message = Uri.parse(
                        "sms:?body=Hi! We met at the NYC AI Summit. I'd love to connect with you! Here's my info below: \n\nWilliam Binette\nFull-Stack Software Engineer\nLinkedIn: https://www.linkedin.com/in/wsbinette/"
                      );
                      if(await canLaunchUrl(message)){
                        await launchUrl(message);
                      } else{
                        throw 'Could not launch $message';
                      }
                  }),
                  // const Spacer(),
                  CubeCard(
                    title: "Email",
                    icon: CupertinoIcons.envelope,
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
                title: "Tap",
                icon: FontAwesomeIcons.nfcDirectional,
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
                title: "Github",
                icon: FontAwesomeIcons.github,
                onTap: () => {},
              ),
              // const SizedBox(height: 7),
              // ListCard(
              //   title: "Email",
              //   icon: CupertinoIcons.envelope,
              //   onTap: () => {},
              // ),
              // const SizedBox(height: 7),
              // ListCard(
              //   title: "Display QR Code",
              //   icon: CupertinoIcons.qrcode,
              //   onTap: () => {},
              // ),
            ],
          )
        )
      ],
    );
  }
}
