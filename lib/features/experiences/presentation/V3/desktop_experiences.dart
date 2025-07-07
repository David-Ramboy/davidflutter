import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio_flutter/core/common/styles/utol_text_styles.dart';
import 'package:my_portfolio_flutter/features/experiences/widgets/experience_widget.dart';
import '../../../../core/config/constants.dart' as responsive;

class DExperiencePageV3 extends ConsumerWidget {
  const DExperiencePageV3({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size screenSize = MediaQuery.of(context).size;
    return Container(
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
              crossAxisAlignment: screenSize.width < responsive.mobileScreen ||
                      screenSize.width < responsive.tabletScreen
                  ? CrossAxisAlignment.start
                  : CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 100,
                ),
                const ExperiencesWidget(
                  title:
                      'Front End - Software Developer - Flutter - 1yr & 8 months',
                  subTitle: 'UTOL - Unified Transport Operations League Corp.',
                  description:
                      "- Responsible For Developing and Maintaining the Landing Website of the Company.\n - Streamline the Admin tool for the company and lead new features.\n - Streamline Two Mobile Application of the Company.",
                ),
                const SizedBox(
                  height: 100,
                ),
                Container(
                    alignment: screenSize.width < responsive.mobileScreen ||
                            screenSize.width < responsive.tabletScreen
                        ? Alignment.center
                        : null,
                    child: Text(
                      '|',
                      style: CustomTextStyles.body,
                    )),
                const SizedBox(
                  height: 100,
                ),
                const ExperiencesWidget(
                  title:
                      'Inter Full-Stack Software Developer - Django - 4 months',
                  subTitle: 'SME Soft Inc. Makati City, Philippines',
                  description:
                      " - Developed Full-stack Course management System using django\n - Cooperate with teams developing MIS for the company using django.\n",
                ),
                const SizedBox(
                  height: 100,
                ),
                Container(
                    alignment: screenSize.width < responsive.mobileScreen ||
                            screenSize.width < responsive.tabletScreen
                        ? Alignment.center
                        : null,
                    child: Text(
                      '|',
                      style: CustomTextStyles.body,
                    )),
                const SizedBox(
                  height: 100,
                ),
                const ExperiencesWidget(
                  title: 'Freelance FullStack Software Developer - MERN Stack',
                  subTitle: 'Self - Employed',
                  description:
                      " - Developed and Launch Hotel Management System using MERN Stack.",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
