import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../shared/services/external_urls.dart';
import '../../../../shared/themes/app_text_styles.dart';

class AppBarMobile extends StatelessWidget {
  const AppBarMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Text('Bem-vindo!', style: AppTextStyles.h1.copyWith(fontSize: 20)),
      actions: [
        InkWell(
          onTap: () {
            launchUrl(
              Uri.parse(githubUrl),
              mode: LaunchMode.externalApplication,
            );
          },
          child: const Icon(
            FontAwesomeIcons.github,
            color: Colors.white,
            size: 32,
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        InkWell(
          onTap: () {
            launchUrl(
              Uri.parse(linkedinUrl),
              mode: LaunchMode.externalApplication,
            );
          },
          child: const Icon(
            FontAwesomeIcons.linkedin,
            color: Colors.white,
            size: 32,
          ),
        ),
        const SizedBox(
          width: 16,
        ),
      ],
    );
  }
}
