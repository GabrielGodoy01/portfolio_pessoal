import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_pessoal/app/modules/home/pages/certificados/certificados_page.dart';
import 'package:portfolio_pessoal/app/modules/home/pages/main/main_page.dart';
import 'package:portfolio_pessoal/app/modules/home/pages/projetos/projetos_page.dart';
import 'package:portfolio_pessoal/app/modules/home/widgets/app_bar/app_bar_mobile.dart';
import 'package:portfolio_pessoal/app/shared/themes/app_text_styles.dart';
import 'package:portfolio_pessoal/app/shared/utils/breakpoint.dart';
import 'package:portfolio_pessoal/app/shared/widgets/buttons/outfilled_button_widget.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../shared/services/external_urls.dart';
import 'conhecimentos/conhecimentos_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeKey = GlobalKey();

  final conhecimentosKey = GlobalKey();

  final projetosKey = GlobalKey();

  final certificadosKey = GlobalKey();

  Future scrollToHome() async {
    final context = homeKey.currentContext;
    await Scrollable.ensureVisible(context!,
        duration: const Duration(milliseconds: 1500));
  }

  Future scrollToConhecimentos() async {
    final context = conhecimentosKey.currentContext;
    await Scrollable.ensureVisible(context!,
        duration: const Duration(milliseconds: 1500));
  }

  Future scrollToProjetos() async {
    final context = projetosKey.currentContext;
    await Scrollable.ensureVisible(context!,
        duration: const Duration(milliseconds: 1500));
  }

  Future scrollToCertificados() async {
    final context = certificadosKey.currentContext;
    await Scrollable.ensureVisible(context!,
        duration: const Duration(milliseconds: 1500));
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffD9D9D9),
      appBar: width < breakpointMobile
          ? PreferredSize(
              preferredSize:
                  Size(double.infinity, width < breakpointMobile ? 48 : 60),
              child: const AppBarMobile(),
            )
          : PreferredSize(
              preferredSize: const Size(double.infinity, 60),
              child: AppBar(
                title: InkWell(
                    onTap: () => scrollToHome(),
                    child: const Text('Bem-vindo!', style: AppTextStyles.h1)),
                elevation: 40,
                actions: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: width < breakpointTablet ? 8 : 16),
                    child: SizedBox(
                      width: width < breakpointTablet
                          ? 150
                          : MediaQuery.of(context).size.width / 8.3,
                      height: MediaQuery.of(context).size.height / 20,
                      child: OutfilledButtonWidget(
                        title: 'Conhecimentos',
                        onPrimary: Colors.white,
                        onPressed: () {
                          scrollToConhecimentos();
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: width < breakpointTablet ? 8 : 16),
                    child: SizedBox(
                      width: width < breakpointTablet
                          ? 150
                          : MediaQuery.of(context).size.width / 9,
                      height: MediaQuery.of(context).size.height / 20,
                      child: OutfilledButtonWidget(
                        title: 'Projetos',
                        onPrimary: Colors.white,
                        onPressed: () {
                          scrollToProjetos();
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: width < breakpointTablet ? 8 : 16),
                    child: SizedBox(
                      width: width < breakpointTablet
                          ? 150
                          : MediaQuery.of(context).size.width / 9,
                      height: MediaQuery.of(context).size.height / 20,
                      child: OutfilledButtonWidget(
                        title: 'Certificados',
                        onPrimary: Colors.white,
                        onPressed: () {
                          scrollToCertificados();
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: InkWell(
                        onTap: () {
                          launchUrl(
                            Uri.parse(githubUrl),
                            mode: LaunchMode.externalApplication,
                          );
                        },
                        child: const Icon(
                          FontAwesomeIcons.github,
                          size: 40,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: InkWell(
                        onTap: () {
                          launchUrl(
                            Uri.parse(linkedinUrl),
                            mode: LaunchMode.externalApplication,
                          );
                        },
                        child: const Icon(
                          FontAwesomeIcons.linkedin,
                          size: 40,
                        )),
                  ),
                ],
                backgroundColor: Colors.black,
              )),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1400),
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            children: [
              SizedBox(
                key: homeKey,
                height: MediaQuery.of(context).size.height - 60,
                child: const MainPage(),
              ),
              const Divider(color: Colors.black, thickness: 3),
              width < breakpointMobile
                  ? const ConhecimentosPage()
                  : SizedBox(
                      key: conhecimentosKey,
                      height: MediaQuery.of(context).size.height - 60,
                      child: const ConhecimentosPage(),
                    ),
              const Divider(color: Colors.black, thickness: 3),
              SizedBox(
                key: projetosKey,
                height: MediaQuery.of(context).size.height - 60,
                child: const ProjetosPage(),
              ),
              width < breakpointMobile
                  ? const Divider(color: Colors.black, thickness: 3)
                  : const SizedBox.shrink(),
              SizedBox(
                key: certificadosKey,
                height: MediaQuery.of(context).size.height - 60,
                child: const CertificadosPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
