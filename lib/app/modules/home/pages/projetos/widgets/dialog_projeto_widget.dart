import 'package:flutter/material.dart';
import 'package:portfolio_pessoal/app/shared/themes/app_text_styles.dart';
import 'package:portfolio_pessoal/app/shared/utils/breakpoint.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../shared/widgets/buttons/outfilled_button_widget.dart';

class DialogProjetoWidget extends StatelessWidget {
  final String title;
  final String descricao;
  final String githubUrl;
  final String projetoUrl;
  const DialogProjetoWidget(
      {Key? key,
      required this.title,
      required this.descricao,
      required this.githubUrl,
      required this.projetoUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Dialog(
      backgroundColor: Colors.white,
      alignment: Alignment.center,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 40,
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: SizedBox(
          width: MediaQuery.of(context).size.width / 2,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTextStyles.h1.copyWith(
                        fontSize: width < breakpointMobile
                            ? 30
                            : width < breakpointTablet
                                ? 36
                                : 44),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    descricao,
                    style: AppTextStyles.h3.copyWith(
                        color: Colors.black,
                        fontSize: width < breakpointMobile
                            ? 14
                            : width < breakpointTablet
                                ? 16
                                : 18),
                  ),
                ],
              ),
              const SizedBox(
                height: 64,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutfilledButtonWidget(
                    title: 'Visitar Site',
                    color: Colors.black,
                    backgroundColor: Colors.white,
                    onPressed: () {
                      launchUrl(Uri.parse(projetoUrl));
                    },
                  ),
                  const SizedBox(
                    width: 32,
                  ),
                  OutfilledButtonWidget(
                    title: 'Github',
                    color: Colors.black,
                    backgroundColor: Colors.white,
                    onPressed: () {
                      launchUrl(Uri.parse(githubUrl));
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
