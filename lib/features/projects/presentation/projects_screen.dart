import 'package:flutter/material.dart';

import 'package:my_portfolio_flutter/core/common/styles/utol_text_styles.dart';
import 'package:my_portfolio_flutter/core/widgets/box_constraints/box_constraints.dart';
import 'package:my_portfolio_flutter/features/projects/widgets/project_card.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

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
                "Projects",
                style: UtolTextStyles.title2.copyWith(fontSize: 28),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            BoxConstraintsWidth(
              desktopMaxWidth: -300,
              widgetContent: Row(children: [
                ProjectCardWithCarousel(
                  imageUrls: [
                    'assets/images/projects/utol_website/utol_web_1.png',
                    'assets/images/projects/utol_website/utol_web_2.png',
                    'assets/images/projects/utol_website/utol_web_3.png',
                    'assets/images/projects/utol_website/utol_web_4.png',
                    'assets/images/projects/utol_website/utol_web_5.png',
                  ],
                ),
                ProjectCardWithCarousel(
                  imageUrls: [
                    'assets/images/projects/utol_website/utol_web_1.png',
                    'assets/images/projects/utol_website/utol_web_2.png',
                    'assets/images/projects/utol_website/utol_web_3.png',
                    'assets/images/projects/utol_website/utol_web_4.png',
                    'assets/images/projects/utol_website/utol_web_5.png',
                  ],
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
