import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_pessoal/app/modules/home/pages/certificados/infra/certificados_enum.dart';
import 'package:portfolio_pessoal/app/shared/utils/breakpoint.dart';

import '../../../../shared/themes/app_text_styles.dart';

class CertificadosPage extends StatefulWidget {
  const CertificadosPage({Key? key}) : super(key: key);

  @override
  State<CertificadosPage> createState() => _CertificadosPageState();
}

class _CertificadosPageState extends State<CertificadosPage> {
  var imgList = CertificadosEnum.values
      .map(
        (CertificadosEnum value) => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: CachedNetworkImageProvider(value.linkPhoto),
              fit: BoxFit.fill,
            ),
          ),
        ),
      )
      .toList();
  final CarouselController controller = CarouselController();
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      return width < breakpointMobile
          ? Padding(
              padding: const EdgeInsets.only(bottom: 48),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Certificados',
                        style: AppTextStyles.h1.copyWith(fontSize: 40),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Text(
                        CertificadosEnum.values[_current].title,
                        style: AppTextStyles.h1.copyWith(fontSize: 24),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(children: [
                          TextSpan(
                            text: CertificadosEnum.values[_current].description,
                            style: AppTextStyles.h3.copyWith(
                              fontSize: 16,
                            ),
                          ),
                          TextSpan(
                            text:
                                CertificadosEnum.values[_current].cargaHoraria,
                            style: AppTextStyles.h3.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: '.',
                            style: AppTextStyles.h3.copyWith(
                              fontSize: 16,
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            controller.previousPage();
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                            size: 40,
                          )),
                      Flexible(
                        child: CarouselSlider(
                          items: imgList,
                          carouselController: controller,
                          options: CarouselOptions(
                              autoPlay: true,
                              autoPlayInterval: const Duration(seconds: 20),
                              autoPlayAnimationDuration:
                                  const Duration(milliseconds: 800),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              viewportFraction: 1.0,
                              enlargeCenterPage: false,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  _current = index;
                                });
                              }),
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            controller.nextPage();
                          },
                          icon: const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                            size: 40,
                          )),
                    ],
                  )),
                ],
              ),
            )
          : Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(color: Colors.black),
                    child: Center(
                        child: Padding(
                      padding:
                          const EdgeInsets.only(right: 8, left: 8, bottom: 60),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {
                                controller.previousPage();
                              },
                              icon: const Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                                size: 40,
                              )),
                          Flexible(
                            child: CarouselSlider(
                              items: imgList,
                              carouselController: controller,
                              options: CarouselOptions(
                                  autoPlay: true,
                                  autoPlayInterval: const Duration(seconds: 20),
                                  autoPlayAnimationDuration:
                                      const Duration(milliseconds: 800),
                                  autoPlayCurve: Curves.fastOutSlowIn,
                                  viewportFraction: 1.0,
                                  enlargeCenterPage: false,
                                  onPageChanged: (index, reason) {
                                    setState(() {
                                      _current = index;
                                    });
                                  }),
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                controller.nextPage();
                              },
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                                size: 40,
                              )),
                        ],
                      ),
                    )),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 60, vertical: 80),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Certificados',
                            style: AppTextStyles.h1.copyWith(fontSize: 60),
                          ),
                          const SizedBox(
                            height: 100,
                          ),
                          Text(
                            CertificadosEnum.values[_current].title,
                            style: AppTextStyles.h1.copyWith(fontSize: 40),
                          ),
                          const SizedBox(
                            height: 28,
                          ),
                          RichText(
                            textAlign: TextAlign.justify,
                            text: TextSpan(children: [
                              TextSpan(
                                text: CertificadosEnum
                                    .values[_current].description,
                                style: AppTextStyles.h3.copyWith(
                                  fontSize: 18,
                                ),
                              ),
                              TextSpan(
                                text: CertificadosEnum
                                    .values[_current].cargaHoraria,
                                style: AppTextStyles.h3.copyWith(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: '.',
                                style: AppTextStyles.h3.copyWith(
                                  fontSize: 18,
                                ),
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
    });
  }
}
