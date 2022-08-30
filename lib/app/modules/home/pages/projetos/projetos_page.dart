import 'package:flutter/material.dart';
import 'package:portfolio_pessoal/app/modules/home/pages/projetos/widgets/card_projeto_desktop_widget.dart';
import 'package:portfolio_pessoal/app/modules/home/pages/projetos/widgets/card_projeto_mobile_widget.dart';
import 'package:portfolio_pessoal/app/shared/utils/breakpoint.dart';

import '../../../../shared/themes/app_text_styles.dart';
import 'infra/projetos_enum.dart';

class ProjetosPage extends StatelessWidget {
  const ProjetosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      return width < breakpointTablet
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Projetos',
                  style: AppTextStyles.h1
                      .copyWith(fontSize: width < breakpointMobile ? 40 : 60),
                ),
                const SizedBox(
                  height: 24,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var item in ProjetosEnum.values)
                      CardProjetoMobileWidget(
                        title: item.title,
                        descricao: item.description,
                        githubUrl: item.githubUrl,
                        projetoUrl: item.projetoUrl,
                        imagem: item.imagem,
                      )
                  ],
                ),
              ],
            )
          : Padding(
              padding: const EdgeInsets.only(bottom: 60),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Projetos',
                    style: AppTextStyles.h1.copyWith(fontSize: 60),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (var item in ProjetosEnum.values)
                        CardProjetoDesktopWidget(
                          title: item.title,
                          descricao: item.description,
                          githubUrl: item.githubUrl,
                          projetoUrl: item.projetoUrl,
                          imagem: item.imagem,
                        )
                    ],
                  ),
                ],
              ),
            );
    });
  }
}
