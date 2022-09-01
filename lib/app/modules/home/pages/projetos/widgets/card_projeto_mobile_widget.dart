import 'package:flutter/material.dart';
import 'package:portfolio_pessoal/app/shared/utils/breakpoint.dart';

import '../../../../../shared/themes/app_text_styles.dart';
import 'dialog_projeto_widget.dart';

class CardProjetoMobileWidget extends StatelessWidget {
  final String title;
  final String descricao;
  final String githubUrl;
  final String projetoUrl;
  final String imagem;
  const CardProjetoMobileWidget(
      {Key? key,
      required this.title,
      required this.descricao,
      required this.githubUrl,
      required this.projetoUrl,
      required this.imagem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          Container(
            width: width < breakpointMobile ? width / 1.2 : width / 2,
            height: height / 6,
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: NetworkImage(imagem),
                fit: BoxFit.fill,
                alignment: Alignment.center,
              ),
            ),
          ),
          Container(
            width: width < breakpointMobile ? width / 1.2 : width / 2,
            height: height / 20,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: const BoxDecoration(color: Colors.white),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: AppTextStyles.h1.copyWith(fontSize: 20),
                ),
                TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => DialogProjetoWidget(
                              title: title,
                              descricao: descricao,
                              githubUrl: githubUrl,
                              projetoUrl: projetoUrl,
                            ));
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                  ),
                  child: const Text(
                    'Ler Mais >',
                    style: AppTextStyles.h3,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
