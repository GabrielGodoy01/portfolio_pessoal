import 'package:flutter/material.dart';
import 'package:portfolio_pessoal/app/modules/home/pages/projetos/widgets/dialog_projeto_widget.dart';
import 'package:portfolio_pessoal/app/shared/themes/app_text_styles.dart';

class CardProjetoDesktopWidget extends StatelessWidget {
  final String title;
  final String imagem;
  final String descricao;
  final String githubUrl;
  final String projetoUrl;
  const CardProjetoDesktopWidget(
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
      padding: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          Container(
            width: width < 1700 ? width / 4 : width / 4.5,
            height: height / 3,
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
            width: width < 1700 ? width / 4 : width / 4.5,
            height: height / 6,
            decoration: const BoxDecoration(color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: AppTextStyles.h1.copyWith(fontSize: 28),
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
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          'Ler Mais',
                          style: AppTextStyles.h3,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 12,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
