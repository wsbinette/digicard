import 'package:digicard/utils/messageLaunchers.dart';
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
              const ListCard(
                title: "LinkedIn",
                icon: FontAwesomeIcons.linkedin,
                resource: ResourceMeta(name: "LinkedIn", icon: FontAwesomeIcons.linkedin, link: "https://www.linkedin.com/in/wsbinette/"),
                
              ),
              const SizedBox(height: 7),
              const ListCard(
                title: "Resume",
                icon: CupertinoIcons.link,
                resource: ResourceMeta(
                  name: "Download Resume",
                  icon: CupertinoIcons.link,
                  link: "Resume download link here"
                ),
              ),
              const SizedBox(height: 7),
              const ListCard(
                title: "Github",
                icon: FontAwesomeIcons.github,
                resource: ResourceMeta(
                  name: "Github",
                  icon: FontAwesomeIcons.github,
                  link: "https://www.github.com/wsbinette/"
                ),
              ),
            ],
          )
        )
      ],
    );
  }
}
