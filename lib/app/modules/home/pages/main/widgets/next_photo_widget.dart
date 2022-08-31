import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_pessoal/app/shared/themes/app_text_styles.dart';
import 'package:portfolio_pessoal/app/shared/utils/breakpoint.dart';

class NextPhotoWidget extends StatelessWidget {
  final String title;
  final String description;
  final String? imageUrl;
  const NextPhotoWidget(
      {Key? key, required this.title, required this.description, this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    if (imageUrl == null) {
      return const Center(child: CircularProgressIndicator());
    } else {
      return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: CachedNetworkImageProvider(imageUrl!),
              fit: BoxFit.fill,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(
              bottom: width < breakpointTablet ? 24 : 32,
              left: width < breakpointTablet ? 12 : 32,
              right: width < breakpointTablet ? 12 : 32,
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: AppTextStyles.h1.copyWith(
                          fontSize: width < breakpointMobile ? 20 : 36,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: width < breakpointTablet ? 8 : 16,
                    ),
                    Text(
                      description,
                      textAlign: TextAlign.justify,
                      style: AppTextStyles.h2.copyWith(
                          fontSize: width < breakpointTablet ? 14 : 18,
                          color: Colors.white),
                    ),
                  ]),
            ),
          ));
    }
  }
}
