import 'package:url_launcher/url_launcher.dart';

Future<void> launchLink(String url) async {
  final Uri url0 = Uri.parse(url);
  if (!await launchUrl(url0, mode: LaunchMode.externalApplication)) {
    throw Exception('Could not launch $url');
  } else {}
}
