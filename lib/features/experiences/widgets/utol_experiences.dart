import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:my_portfolio_flutter/core/common/styles/utol_text_styles.dart';
import 'package:my_portfolio_flutter/core/widgets/box_constraints/box_constraints.dart';

class UtolExperiences extends StatelessWidget {
  const UtolExperiences({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 7),
          child: Text(
            "Front End - Software Developer - Flutter - 1yr & 8 months",
            style: CustomTextStyles.title2Sp.copyWith(
              fontSize: 22,
              fontFamily: 'Inter',
              height: 3,
              fontWeight: FontWeight.w100,
            ),
          ),
        ),
        BoxConstraintsWidth(
          desktopMaxWidth: -350,
          widgetContent: Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, right: 10),
              child: MarkdownBody(
                data:
                    " - Responsible For Developing and Maintaining the Landing Website of the Company.\n - Streamline the Admin tool for the company and lead new features.\n - Streamline Two Mobile Application of the Company.",
                styleSheet: MarkdownStyleSheet(
                  p: CustomTextStyles.bodyMedium.copyWith(
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w100,
                  ),
                  listBullet: CustomTextStyles.bodyMedium.copyWith(
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
