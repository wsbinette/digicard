import 'package:digicard/main.dart';
import 'package:digicard/styles/styles.dart';
import 'package:digicard/widgets/profile_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
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
                child: Consumer<QRCodeData>(
                  builder: (context, qrCodeData, child){
                    return QrImageView(
                      padding: const EdgeInsets.all(10),
                      backgroundColor: DigicardStyles.primaryColor,
                      data: qrCodeData.data,
                      version: QrVersions.auto,
                      dataModuleStyle: const QrDataModuleStyle(
                        dataModuleShape: QrDataModuleShape.circle,
                        color: CupertinoColors.white,
                      ),
                      eyeStyle: const  QrEyeStyle(
                        color: CupertinoColors.white, 
                        eyeShape: QrEyeShape.circle
                      ),
                      //TODO add the QR code type here
                      semanticsLabel: "Will Binette's LinkedIn",
                    );
                  }
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
