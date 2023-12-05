import 'package:digicard/providers/qr_data_provider.dart';
import 'package:digicard/styles/styles.dart';
import 'package:digicard/widgets/profile_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: DigicardStyles.primaryColor,
                  ),
                  child: DefaultTextStyle(
                    style: GoogleFonts.montserrat(
                      fontSize: 35,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    child: Consumer<QRCodeData>(
                      builder:(context, qrCodeData, child){ 
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(qrCodeData.icon, color: Colors.white, size: 40,),
                            const SizedBox(width: 10,),
                            Text(qrCodeData.type),
                          ],
                        );
                      },
                    ),
                  )
                )
              ),
              Container(
                padding: const EdgeInsets.only(top: 25),
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
          ),
        ),
      ],
    );
  }
}
