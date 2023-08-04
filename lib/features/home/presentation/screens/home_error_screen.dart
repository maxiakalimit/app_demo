import 'package:app_demo/presentations/widgets/error_info_widget.dart';
import 'package:flutter/material.dart';

class HomeErrorScreen extends StatelessWidget {
  final void Function() onPressed;

  const HomeErrorScreen({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ErrorInfoWidget(onPressed: onPressed);
  }
}
