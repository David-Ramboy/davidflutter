import 'package:flutter/material.dart';
import 'package:my_portfolio_flutter/core/widgets/box_constraints/box_constraints.dart';
import 'package:my_portfolio_flutter/features/skills/widgets/skills_card.dart';

import 'package:my_portfolio_flutter/core/common/styles/utol_text_styles.dart';
import '../../../../core/config/constants.dart' as responsive;

class SkillPage extends StatelessWidget {
  const SkillPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Container(
      // decoration: BoxDecoration(border: Border.all()),
      width: double.infinity,
      child: Center(
        child: BoxConstraintsWidth(
          desktopMaxWidth: -340,
          tabletMaxWidth: 370,
          widgetContent: Column(
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
      ),
    );
  }
}
