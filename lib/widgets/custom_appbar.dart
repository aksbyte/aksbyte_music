import 'package:aksbyte_music/util/chroma.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final VoidCallback onPressed1;
  final VoidCallback onPressed2;
  final Icon icon1;
  final Icon icon2;
  final String? text;

  const CustomAppBar({
    super.key,
    this.text,
    required this.icon1,
    required this.icon2,
    required this.onPressed1,
    required this.onPressed2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: onPressed1,
          icon: icon1,
          color: Chroma.whiteColor,
        ),
        IconButton(
          onPressed: onPressed2,
          icon: icon2,
          color: Chroma.whiteColor,
        ),
        text != null && text!.isNotEmpty
            ? Text(
                text!,
                style: const TextStyle(color: Chroma.whiteColor),
              )
            : const SizedBox(),
      ],
    );
  }
}
