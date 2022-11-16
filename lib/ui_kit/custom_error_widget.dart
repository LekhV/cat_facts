import 'package:flutter/material.dart';

// --Text--
const _ktextError = 'Error';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        _ktextError,
      ),
    );
  }
}
