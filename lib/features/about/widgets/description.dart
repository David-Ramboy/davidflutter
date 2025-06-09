import 'package:flutter/material.dart';
import 'package:my_portfolio_flutter/core/utilities/utility_strings.dart';

class DescriptionAbout extends StatelessWidget {
  const DescriptionAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                  child: Container(
                height: 1.0,
                color: Colors.black,
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
              )),
              Container(
                margin: const EdgeInsets.only(bottom: 8),
                child: Text(
                  textScaler: TextScaler.linear(
                      UtilString.paragphTextScaleFactor(context)),
                  'About me',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 100,
              ),
              Expanded(
                  flex: 20,
                  child: Container(
                    height: 1.0,
                    color: Colors.black,
                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
                  )),
            ],
          ),
          Column(
            children: [
              RichText(
                textScaler: TextScaler.linear(
                    UtilString.paragphTextScaleFactor(context)),
                text: const TextSpan(
                  children: [
                    TextSpan(
                        style: TextStyle(
                          fontSize: 14,
                        ),
                        text:
                            'I’m David Bryan Ramboy lived in Rizal, Philippines. and My Profession is Software Developer, I’ve been working several Projects on  Website,  Desktop, Mobile and Game development, I was working in different Technology in my past experience as a Coder, and I’m Passionate to it, and I Love to align my skills to the real world where i can contribute to the other people’s Dream Projects.'),
                  ],
                ),
              ),
              Container(
                height: 10,
              ),
              RichText(
                textScaler: TextScaler.linear(
                    UtilString.paragphTextScaleFactor(context)),
                text: const TextSpan(
                  children: [
                    TextSpan(
                        style: TextStyle(
                          fontSize: 14,
                        ),
                        text:
                            'I’ve been working independently as my carreer start and trusting me to finish the project, from managing project to a Team Cooperation. That’s my strong side but I can be a team a player in different Team, so the knowledge i have in my expertise i can teach, and same of them to me.'),
                  ],
                ),
              ),
              Container(
                height: 10,
              ),
              RichText(
                textScaler: TextScaler.linear(
                    UtilString.paragphTextScaleFactor(context)),
                text: const TextSpan(
                  children: [
                    TextSpan(
                        style: TextStyle(
                          fontSize: 14,
                        ),
                        text:
                            'I’m Passionate and committed to my carreer and I love to learn and challenge my self to reach my limit, as a Software Developer I can be a fast paced Developer to a Quality product to serve with my diverse Technical Skills.'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
