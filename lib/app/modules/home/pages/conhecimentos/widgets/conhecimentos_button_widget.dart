import 'package:flutter/material.dart';

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
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            padding: EdgeInsets.all(myIndex == indexToShow ? 36 : 28),
            primary: Colors.white),
        child: Image.network(icon));
  }
}
