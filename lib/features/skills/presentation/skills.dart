import 'package:flutter/material.dart';
import 'package:my_portfolio_flutter/features/skills/widgets/skills_card.dart';

import 'package:my_portfolio_flutter/core/common/styles/utol_text_styles.dart';

class SkillPage extends StatelessWidget {
  const SkillPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 60, left: 160, right: 50),
      width: double.infinity,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 7),
              child: Text(
                "Skills",
                style: CustomTextStyles.title2.copyWith(fontSize: 28),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            const SkillsCard()
          ],
        ),
      ),
    );
  }
}
