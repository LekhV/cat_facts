import 'package:flutter/material.dart';

// --Text--
const _kAnotherFact = 'Another fact!';
const _kFactHistory = 'Fact history';

class FactButtonsWidget extends StatelessWidget {
  const FactButtonsWidget({
    Key? key,
    required this.onTapAnother,
    required this.onTapHistory,
  }) : super(key: key);

  final VoidCallback onTapAnother;
  final VoidCallback onTapHistory;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(
          onPressed: onTapAnother,
          child: const Text(
            _kAnotherFact,
          ),
        ),
        ElevatedButton(
          onPressed: onTapHistory,
          child: const Text(
            _kFactHistory,
          ),
        )
      ],
    );
  }
}
