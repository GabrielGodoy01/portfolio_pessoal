import 'package:flutter/material.dart';
import 'package:portfolio_pessoal/app/shared/themes/app_text_styles.dart';

class OutfilledButtonWidget extends StatelessWidget {
  final String title;
  final Color? color;
  final Color? onPrimary;
  final Color? backgroundColor;
  final Function()? onPressed;
  const OutfilledButtonWidget(
      {Key? key,
      required this.title,
      this.onPressed,
      this.color,
      this.backgroundColor,
      this.onPrimary})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 9,
      height: MediaQuery.of(context).size.height / 20,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              onPrimary: onPrimary ?? Colors.grey.shade900,
              primary: backgroundColor ?? Colors.transparent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(color: color ?? Colors.white, width: 3))),
          child: Text(
            title,
            style: AppTextStyles.h1
                .copyWith(color: color ?? Colors.white, fontSize: 16),
            textAlign: TextAlign.center,
          )),
    );
  }
}
