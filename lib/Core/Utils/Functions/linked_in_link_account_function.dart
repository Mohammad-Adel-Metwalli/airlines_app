import 'package:url_launcher/url_launcher.dart';

void linkedInLinkAccount() async
{
  final Uri url = Uri.parse('https://www.linkedin.com/in/mohammad-adel-metwalli-21a102220/');

  if(await canLaunchUrl(url))
  {
    launchUrl(url);
  }
}