import 'package:digicard/styles/styles.dart';
import 'package:digicard/widgets/profile_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRPage extends StatelessWidget {
  const QRPage({super.key});

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        const ProfileHeader(),
        Expanded(
          child: Center(
            child: SizedBox(
              width: screenWidth * 0.8,
              height: screenWidth * 0.8,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: DigicardStyles.primaryColor,
                      width: 5,
                    ),
                ),
                child: QrImageView(
                  padding: const EdgeInsets.all(10),
                  backgroundColor: DigicardStyles.primaryColor,
                  data: 'https://www.linkedin.com/in/wsbinette/',
                  version: QrVersions.auto,
                  dataModuleStyle: const QrDataModuleStyle(
                    dataModuleShape: QrDataModuleShape.circle,
                    color: CupertinoColors.white,
                  ),
                  eyeStyle: const  QrEyeStyle(
                    color: CupertinoColors.white, 
                    eyeShape: QrEyeShape.circle
                  ),
                  semanticsLabel: "Will Binette's LinkedIn",
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
