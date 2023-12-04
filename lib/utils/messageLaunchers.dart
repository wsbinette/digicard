
import 'package:url_launcher/url_launcher.dart';

class MessageLauncher{

  static Future<void> launchMessage(String rawMessage)async{
    Uri message = Uri.parse(rawMessage);
    
    if(await canLaunchUrl(message)){
      await launchUrl(message);
    } else{
      throw 'Could not launch $message';
    }
  }
}