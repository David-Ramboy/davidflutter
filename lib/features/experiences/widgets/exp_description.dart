import 'package:flutter/material.dart';
import 'package:my_portfolio_flutter/core/utilities/utility_strings.dart';
import '../../../core/config/constants.dart' as constants;

class ExpUtolDescriptionWidget extends StatelessWidget {
  const ExpUtolDescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          textScaler:
              TextScaler.linear(UtilString.paragphTextScaleFactor(context)),
          text: const TextSpan(
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                  text: 'Jr.Software Developer ',
                  style: TextStyle(color: constants.blue)),
              TextSpan(text: '- Unified Transport Operations League'),
            ],
          ),
        ),
        const Row(
          children: [Icon(Icons.business_center), Text('Aug 2023 - Present')],
        ),
        RichText(
          textScaler:
              TextScaler.linear(UtilString.paragphTextScaleFactor(context)),
          text: const TextSpan(
            children: [
              TextSpan(
                  text:
                      "Responsible for creating intuitive website the Front - end Landing page and driver registration that will introduce as a first website ride hailing app for the company. I also responsible for the Code design, Features and maintaining. Refactoring code, making resuable assets and consuming Api Making Responsive Layout.Transposing Website into another Front - end Technology Nuxt js, Vue js, Lastly Flutter"),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Column(
          children: [
            RichText(
              textScaler:
                  TextScaler.linear(UtilString.paragphTextScaleFactor(context)),
              text: const TextSpan(
                children: [
                  TextSpan(
                      style: TextStyle(
                        fontSize: 14,
                      ),
                      text:
                          "Msanaging Project into manageable timeline to ensures the derables"),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
