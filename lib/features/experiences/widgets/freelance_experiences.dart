import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:my_portfolio_flutter/core/common/styles/utol_text_styles.dart';
import 'package:my_portfolio_flutter/core/widgets/box_constraints/box_constraints.dart';

class InternExperiences extends StatelessWidget {
  const InternExperiences({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 7),
          child: Text(
            "Freelance FullStack Software Developer - MERN - 4 months",
            style: UtolTextStyles.title2Sp.copyWith(
              fontSize: 22,
              fontFamily: 'Inter',
              height: 3,
              fontWeight: FontWeight.w100,
            ),
          ),
        ),
        BoxConstraintsWidth(
          desktopMaxWidth: -350,
          widgetContent: Padding(
            padding: const EdgeInsets.only(top: 20, right: 10),
            child: MarkdownBody(
              data:
                  " - Developed and Launch Hotel Management System using MERN Stack.",
              styleSheet: MarkdownStyleSheet(
                p: UtolTextStyles.bodyMedium.copyWith(
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w100,
                ),
                listBullet: UtolTextStyles.bodyMedium.copyWith(
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
