import 'package:flutter/material.dart';

class CustomIndicatorWidget extends StatelessWidget {
  const CustomIndicatorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
