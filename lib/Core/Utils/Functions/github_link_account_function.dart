import 'package:url_launcher/url_launcher.dart';

void gitHubLinkAccount() async
{
  final Uri url = Uri.parse('https://github.com/Mohammad-Adel-Metwalli');

  if(await canLaunchUrl(url))
  {
    launchUrl(url);
  }
}