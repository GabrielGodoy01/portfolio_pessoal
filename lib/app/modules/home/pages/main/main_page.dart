import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_pessoal/app/modules/home/pages/main/widgets/next_photo_widget.dart';
import 'package:portfolio_pessoal/app/shared/themes/app_text_styles.dart';
import 'package:portfolio_pessoal/app/shared/utils/breakpoint.dart';

import 'infra/introduction_photos_enum.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var imgList = IntroductionPhotosEnum.values
      .map((IntroductionPhotosEnum value) => NextPhotoWidget(
          title: value.title,
          description: value.description,
          imageUrl: value.linkPhoto))
      .toList();
  final CarouselController controller = CarouselController();
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return LayoutBuilder(builder: (context, constraints) {
      return width < breakpointTablet
          ? Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      'Olá, eu sou o Gabriel e você está em meu portfólio!',
                      style: AppTextStyles.h1.copyWith(fontSize: 34),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      'A seguir, você verá todos meus projetos, conhecimentos e hobbies, mas por enquanto aqui está uma breve introdução:',
                      style: AppTextStyles.h3.copyWith(
                          fontSize: width < breakpointMobile ? 18 : 22),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                  ],
                ),
                Column(
                  children: [
                    ConstrainedBox(
                      constraints: BoxConstraints(
                          maxWidth: 800, maxHeight: height / 1.9),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 2),
                        ),
                        child: CarouselSlider(
                          items: imgList,
                          carouselController: controller,
                          options: CarouselOptions(
                              autoPlay: true,
                              autoPlayInterval: const Duration(seconds: 10),
                              autoPlayAnimationDuration:
                                  const Duration(milliseconds: 800),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              height: height,
                              viewportFraction: 1.0,
                              enlargeCenterPage: false,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  _current = index;
                                });
                              }),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imgList.asMap().entries.map((entry) {
                        return GestureDetector(
                          onTap: () => controller.animateToPage(entry.key),
                          child: Container(
                            width: 12,
                            height: 12,
                            margin: const EdgeInsets.symmetric(
                                vertical: 16.0, horizontal: 6),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black.withOpacity(
                                    _current == entry.key ? 0.9 : 0.4)),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
              ],
            )
          : Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Olá, eu sou o Gabriel e você está em meu portfólio!',
                          style: AppTextStyles.h1.copyWith(fontSize: 48),
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        Text(
                          'A seguir, você verá todos meus projetos, conhecimentos e hobbies, mas por enquanto aqui está uma breve introdução:',
                          style: AppTextStyles.h3.copyWith(fontSize: 24),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: 2),
                            ),
                            height: height * 0.6,
                            width: width * 0.43,
                            child: CarouselSlider(
                              items: imgList,
                              carouselController: controller,
                              options: CarouselOptions(
                                  autoPlay: true,
                                  autoPlayInterval: const Duration(seconds: 10),
                                  autoPlayAnimationDuration:
                                      const Duration(milliseconds: 800),
                                  autoPlayCurve: Curves.fastOutSlowIn,
                                  height: height,
                                  viewportFraction: 1.0,
                                  enlargeCenterPage: false,
                                  onPageChanged: (index, reason) {
                                    setState(() {
                                      _current = index;
                                    });
                                  }),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: imgList.asMap().entries.map((entry) {
                              return GestureDetector(
                                onTap: () =>
                                    controller.animateToPage(entry.key),
                                child: Container(
                                  width: 15,
                                  height: 15,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 16.0, horizontal: 8),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black.withOpacity(
                                          _current == entry.key ? 0.9 : 0.4)),
                                ),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
    });
  }
}
