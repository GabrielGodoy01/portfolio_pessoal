import 'package:flutter/material.dart';
import 'package:portfolio_pessoal/app/shared/utils/breakpoint.dart';

class ConhecimentosButtonWidget extends StatelessWidget {
  final int indexToShow;
  final int myIndex;
  final String icon;
  final Function()? onPressed;
  const ConhecimentosButtonWidget({
    Key? key,
    this.onPressed,
    required this.indexToShow,
    required this.myIndex,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: Colors.white,
          padding: width < breakpointMobile
              ? EdgeInsets.all(myIndex == indexToShow ? 28 : 20)
              : EdgeInsets.all(myIndex == indexToShow ? 36 : 28),
        ),
        child: Image.network(
          icon,
          height: width < breakpointMobile ? 50 : null,
          width: width < breakpointMobile ? 50 : null,
        ));
  }
}
