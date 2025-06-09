import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio_flutter/core/common/styles/utol_text_styles.dart';
import 'package:my_portfolio_flutter/core/widgets/box_constraints/box_constraints.dart';
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
            Text(
              "Experience",
              style: UtolTextStyles.title2,
            ),
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 2),
              child: Text(
                "Front End - Software Developer - Flutter - 1yr & 8 months",
                style: UtolTextStyles.title2Sp.copyWith(
                  fontSize: 25,
                  fontFamily: 'Inter',
                  height: 3,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
            BoxConstraintsWidth(
              desktopMaxWidth: -290,
              widgetContent: Padding(
                padding: const EdgeInsets.only(left: 2, top: 20),
                child: Text(
                  " -   A passionate programmer with experience in front-end, along with MIS and mobile app development using Flutter",
                  style: UtolTextStyles.title2Sp.copyWith(
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
