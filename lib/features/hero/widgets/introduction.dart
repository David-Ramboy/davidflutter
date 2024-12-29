import 'package:flutter/material.dart';
import '../../../config/constants.dart' as constants;
import 'package:my_portfolio_flutter/core/utility/utility_strings.dart';

class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            textScaler:
                TextScaler.linear(UtilString.paragphTextScaleFactor(context)),
            'Hi my name is',
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Text(
              textScaler:
                  TextScaler.linear(UtilString.largeTextScaleFactor(context)),
              'David Bryan Ramboy',
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w900,
                color: constants.blue,
              ),
            ),
          ),
          SizedBox(
            child: RichText(
              textScaler:
                  TextScaler.linear(UtilString.paragphTextScaleFactor(context)),
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "I'm a Software Developer",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
                  ),
                  TextSpan(
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    text:
                        " based in the Philippines with a passion for building efficient, user-focused solutions. With experience spanning independent projects and collaborative team development, I’ve contributed to various software solutions across web and mobile platforms. My work reflects a commitment to innovation, seamless functionality, and delivering results that meet both client and user needs.",
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Image.asset(
                    'assets/images/logos/gitHub.png',
                    width: 35,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Image.asset(
                    'assets/images/logos/facebook.png',
                    width: 35,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Image.asset(
                    'assets/images/logos/linkedin.png',
                    width: 35,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
