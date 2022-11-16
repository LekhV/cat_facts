import 'package:flutter/material.dart';

import 'package:fact_cats/config.dart';
import 'package:fact_cats/domain/cat_fact/models/cat_fact.dart';
import 'package:fact_cats/ui_kit/custom_text_widget.dart';
import 'package:fact_cats/utils/date_utils.dart';

class FactWidget extends StatelessWidget {
  const FactWidget({
    Key? key,
    required this.catFact,
  }) : super(key: key);

  final CatFact catFact;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Flexible(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: screenHeight / 2,
              ),
              child: Image.network(
                config.imageUrl,
              ),
            ),
            const SizedBox(height: 8.0),
            CustomTextWidget(
              title: convertDateToString(catFact.dateTime),
              text: catFact.fact,
            ),
          ],
        ),
      ),
    );
  }
}
