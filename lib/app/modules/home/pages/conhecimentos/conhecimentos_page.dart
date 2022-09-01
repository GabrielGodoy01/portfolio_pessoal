import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:portfolio_pessoal/app/modules/home/pages/conhecimentos/widgets/conhecimentos_button_widget.dart';
import 'package:portfolio_pessoal/app/shared/themes/app_text_styles.dart';
import 'package:portfolio_pessoal/app/shared/utils/breakpoint.dart';

import 'conhecimentos_controller.dart';
import 'infra/conhecimentos_enum.dart';

class ConhecimentosPage extends StatelessWidget {
  const ConhecimentosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = ConhecimentosController();
    final double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(bottom: 60),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Conhecimentos',
            style: AppTextStyles.h1
                .copyWith(fontSize: width < breakpointMobile ? 40 : 60),
          ),
          const SizedBox(
            height: 24,
          ),
          const Text(
            'Clique nos ícones para saber mais sobre as tecnologias e práticas que eu mais domino!',
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 32,
          ),
          Observer(builder: (_) {
            return Wrap(
              alignment: WrapAlignment.center,
              runSpacing: 16,
              children: [
                for (var i = 0; i < controller.list.length; i++)
                  ConhecimentosButtonWidget(
                    indexToShow: controller.indexToShow,
                    icon: controller.list[i].photo,
                    myIndex: i,
                    onPressed: () {
                      controller.alterarIndex(i);
                    },
                  ),
              ],
            );
          }),
          const SizedBox(
            height: 32,
          ),
          Observer(builder: (_) {
            return Text(
              controller.list[controller.indexToShow].title,
              style: AppTextStyles.h1
                  .copyWith(fontSize: width < breakpointMobile ? 20 : 36),
            );
          }),
          const SizedBox(
            height: 8,
          ),
          Observer(builder: (_) {
            return Flexible(
              child: SizedBox(
                height: 200,
                child: Text(controller.list[controller.indexToShow].description,
                    textAlign: TextAlign.justify,
                    style: AppTextStyles.h3.copyWith(
                        fontSize: width < breakpointMobile ? 16 : 20)),
              ),
            );
          }),
        ],
      ),
    );
  }
}
