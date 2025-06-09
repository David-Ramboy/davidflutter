import 'package:flutter/material.dart';
import '../../../core/config/constants.dart' as constants;

class BulletText extends StatelessWidget {
  const BulletText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 6),
          padding: const EdgeInsets.all(0),
          child: const Text(
            textAlign: TextAlign.start,
            '\u2022',
            style: TextStyle(height: .4, color: constants.blue, fontSize: 43),
          ),
        ),
        Text(' $text'),
      ],
    );
  }
}
