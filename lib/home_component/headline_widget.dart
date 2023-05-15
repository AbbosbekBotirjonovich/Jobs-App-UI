import 'package:flutter/material.dart';

class HeadlineWidget extends StatelessWidget {
  const HeadlineWidget({
    Key? key,
    required this.title,
    this.actionText = "see all",
    this.onActionTap,
  }) : super(key: key);

  final String title;
  final String actionText;
  final void Function()? onActionTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        Text(
          actionText,
          style: Theme.of(context)
              .textTheme
              .labelLarge
              ?.copyWith(color: Colors.blue),
        ),
      ],
    );
  }
}
