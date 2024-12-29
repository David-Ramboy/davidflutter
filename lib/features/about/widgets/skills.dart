import 'package:flutter/material.dart';
import 'package:my_portfolio_flutter/core/utility/utility_strings.dart';
import 'package:my_portfolio_flutter/features/about/components/bullet_text.dart';

class SkillsAbout extends StatelessWidget {
  const SkillsAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 150),
                child: Text(
                  textScaler: TextScaler.linear(
                    UtilString.paragphTextScaleFactor(context),
                  ),
                  'My Technical Skills',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 150),
                width: 170,
                child: const Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BulletText(text: 'Flutter'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BulletText(text: 'Dart'),
                      ],
                    ),
                    Row(
                      children: [
                        BulletText(text: 'Python'),
                      ],
                    ),
                    Row(
                      children: [
                        BulletText(text: 'Javascript'),
                      ],
                    ),
                    Row(
                      children: [
                        BulletText(text: 'Django'),
                      ],
                    ),
                    Row(
                      children: [
                        BulletText(text: 'React js'),
                      ],
                    ),
                    Row(
                      children: [
                        BulletText(text: 'Nuxt js'),
                      ],
                    ),
                    Row(
                      children: [
                        BulletText(text: 'Vue js'),
                      ],
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        BulletText(text: 'MongoDB'),
                      ],
                    ),
                    Row(
                      children: [
                        BulletText(text: 'Tailwind css'),
                      ],
                    ),
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
