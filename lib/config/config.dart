import 'package:flutter/material.dart';

class Config {
  final String appName = 'B2BX';
  final String splashIcon = 'assets/images/logo.webp';

  //social links
  static const String facebookPageUrl = 'https://www.facebook.com/mrblab24';
  static const String youtubeChannelUrl =
      'https://www.youtube.com/channel/UCnNr2eppWVVo-NpRIy1ra7A';
  static const String twitterUrl = 'https://twitter.com/FlutterDev';

  //app theme color
  final appColor = const Color(0xff00a275);
  final bg10Color = Colors.grey[900];
  final bg20Color = Colors.grey[800];
  final text20Color = const Color(0xff45b68b);
  final text10Color = const Color(0xff8a8d96);

  //Intro images
  final String introImage1 = 'assets/images/news1.png';
  final String introImage2 = 'assets/images/news6.png';
  final String introImage3 = 'assets/images/news7.png';

  //animation files
  final String doneAsset = 'assets/animation_files/done.json';

  //Language Setup
  final List<String> languages = ['English', 'Spanish', 'Arabic'];

  //initial categories - 4 only (Hard Coded : which are added already on your admin panel)
  final List initialCategories = [
    'Entertainment',
    'Sports',
    'Politics',
    'Travel'
  ];
}
