import 'package:digicard/main.dart';
import 'package:digicard/utils/messageLaunchers.dart';
import 'package:digicard/widgets/cube_card.dart';
import 'package:digicard/widgets/list_card.dart';
import 'package:digicard/widgets/profile_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final qrData = context.read<QRCodeData>();
    
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
                    onTap: ()async => MessageLauncher.launchMessage(
                      "sms:?body=Hi! We met at AI Summit NYC. I'd love to connect with you! Here's my info below: \n\nWilliam Binette\nFull-Stack Software Engineer\nEmail:wsebinette@gmail.com\nLinkedIn: https://www.linkedin.com/in/wsbinette/\nGithub: https://www.github.com/wsbinette/\nEmail:wsebinette@gmail.com"
                    )
                  ), 
                  // const Spacer(),
                  CubeCard(
                    title: "Email",
                    icon: CupertinoIcons.envelope,
                    onTap: ()async => MessageLauncher.launchMessage(
                      //TODO: add email address here
                      "mailto:wsbinette@icloud.com"
                    )
                  )
                ],
              ),
              const SizedBox(height: 10),
              ListCard(
                title: "LinkedIn",
                icon: FontAwesomeIcons.linkedin,
                onTap: () async => MessageLauncher.launchMessage(
                  "sms:?body=Hi! We met at the AI Summit NYC. My name is Will Binette. Here's my LinkedIn! https://www.linkedin.com/in/wsbinette/"
                )
                
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
                // onTap: () async => MessageLauncher.launchMessage(
                //   "sms:?body=Hi! We met at the AI Summit NYC. My name is Will Binette. Here's my Github! https://www.github.com/wsbinette/"
                // )
                onTap: () async {
                  qrData.setData("https://www.github.com/wsbinette");
                } 
              ),
            ],
          )
        )
      ],
    );
  }
}
