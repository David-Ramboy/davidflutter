import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio_flutter/core/utility/utility_strings.dart';
import '../../../config/constants.dart' as constants;

class DAboutPage extends ConsumerWidget {
  const DAboutPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.only(top: 60, left: 75, right: 50),
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
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
                      margin: EdgeInsets.only(bottom: 8),
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
                    Text(
                        style: TextStyle(
                          fontSize: 14,
                        ),
                        textScaler: TextScaler.linear(
                            UtilString.paragphTextScaleFactor(context)),
                        'I’m David Bryan Ramboy lived in Rizal, Philippines. and My Profession is Software Developer, I’ve been working several Projects on  Website,  Desktop, Mobile and Game development, I was working in different Technology in my past experience as a Coder, and I’m Passionate to it, and I Love to align my skills to the real world where i can contribute to the other people’s Dream Projects.'),
                    Text(
                        style: TextStyle(
                          fontSize: 14,
                        ),
                        'I’ve been working independently as my carreer start and trusting me to finish the project, from managing project to a Team Cooperation. That’s my strong side but I can be a team a player in different Team, so the knowledge i have in my expertise i can teach, and same of them to me.'),
                    Text(
                        style: TextStyle(
                          fontSize: 14,
                        ),
                        'I’m Passionate and committed to my carreer and I love to learn and challenge my self to reach my limit, as a Software Developer I can be a fast paced Developer to a Quality product to serve with my diverse Technical Skills.'),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: const Text('My Technical Skills'),
            ),
          ),
        ],
      ),
    );
  }
}
