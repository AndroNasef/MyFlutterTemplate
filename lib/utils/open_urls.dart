import 'package:url_launcher/url_launcher.dart';

//Lanuch URL
Future<void> openUrl(String url) async =>
    await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';

//Lanuch URL WebView
Future<void> openUrlWebView(String url) async => await canLaunch(url)
    ? await launch(url, enableJavaScript: true, forceWebView: true)
    : throw 'Could not launch $url';
