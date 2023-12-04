import 'package:digicard/main.dart';
import 'package:digicard/styles/styles.dart';
import 'package:digicard/utils/MessageLaunchers.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ResourceMeta{
  final String name;
  final IconData icon;
  final String link;

  const ResourceMeta({required this.name, required this.icon, required this.link});
}

class ListCard extends StatelessWidget{
  final String title;
  final IconData icon;
  final ResourceMeta resource;
  final String? customMessage;

  const ListCard({Key? key, required this.title, required this.icon, required this.resource, this.customMessage}) : super(key: key);

  @override
  Widget build(BuildContext context){
    final qrData = context.read<QRCodeData>();

    String formattedMessage = "Hi! We met at the AI Summit NYC. My name is Will Binette. Here's my $resource.name: $resource.link";
    if(customMessage != null){
      formattedMessage = "$customMessage $resource.link";
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(
          color: DigicardStyles.primaryColor,
          width: 4,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      // onPressed: () => onTap(),
      child: DefaultTextStyle(
        style: GoogleFonts.montserrat(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: DigicardStyles.primaryColor,
          ),
        child: Row(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    FaIcon(icon, color: DigicardStyles.primaryColor, size: 30),
                    const SizedBox(width: 10),
                    Text(title),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () async => {
                        MessageLauncher.launchMessage(
                            "sms:?body=$formattedMessage")
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: DigicardStyles.primaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: 50,
                        height: 50,
                        child: const Center(
                          child: Icon(CupertinoIcons.chat_bubble, color: CupertinoColors.white, size: 30)
                        )
                      ),
                    ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: () => {
                        qrData.setData(resource.link),
                        qrData.setResource(resource.name, resource.icon)
                      },
                      child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: DigicardStyles.primaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 50,
                          height: 50,
                          child: const Center(child: Icon(CupertinoIcons.qrcode, color: CupertinoColors.white, size: 30))),
                    )
                  ],
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}