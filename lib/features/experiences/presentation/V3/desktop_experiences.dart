import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio_flutter/core/common/styles/utol_text_styles.dart';
import 'package:my_portfolio_flutter/core/widgets/box_constraints/box_constraints.dart';
import 'package:my_portfolio_flutter/features/experiences/widgets/freelance_experiences.dart';
import 'package:my_portfolio_flutter/features/experiences/widgets/utol_experiences.dart';
import 'package:my_portfolio_flutter/features/hero/widgets/intro_image.dart';
import 'package:my_portfolio_flutter/features/hero/widgets/introduction.dart';

class DExperiencePageV3 extends ConsumerWidget {
  const DExperiencePageV3({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.only(top: 60, left: 75, right: 50),
      width: double.infinity,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 7),
              child: Text(
                "Experience",
                style: CustomTextStyles.title2.copyWith(fontSize: 28),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 100,
                ),
                UtolExperiences(),
                const SizedBox(
                  height: 100,
                ),
                Container(
                    padding: EdgeInsets.only(right: 30),
                    child: Text(
                      '|',
                      style: CustomTextStyles.body,
                    )),
                const SizedBox(
                  height: 100,
                ),
                const InternExperiences(),
                const SizedBox(
                  height: 100,
                ),
                Container(
                    padding: EdgeInsets.only(right: 30),
                    child: Text(
                      '|',
                      style: CustomTextStyles.body,
                    )),
                const SizedBox(
                  height: 100,
                ),
                const InternExperiences(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
