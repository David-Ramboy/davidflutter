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
                "Works",
                style: CustomTextStyles.title2.copyWith(fontSize: 28),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            const BoxConstraintsWidth(
              desktopMaxWidth: -300,
              widgetContent: Wrap(
                spacing: 50,
                runSpacing: 50,
                children: [
                  SizedBox(
                    width: 300,
                    child: ProjectCardWithCarousel(
                      secondTitle: 'Hotel Management System',
                      subTitle: 'Independent',
                      description:
                          'Developed a full-stack MIS application using MERN|Stack',
                      imageUrls: [
                        'assets/images/projects/hotel/hotelM0.png',
                        'assets/images/projects/hotel/hotelM1.png',
                        'assets/images/projects/hotel/hotelM2.png',
                        'assets/images/projects/hotel/hotelM4.png',
                        'assets/images/projects/hotel/hotelM5.png',
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    child: ProjectCardWithCarousel(
                      title: 'UTOL WEBSITE',
                      subTitle: 'Collaboration',
                      description:
                          'Landing Page Developed using Flutter with Driver Registration',
                      imageUrls: [
                        'assets/images/projects/utol_website/utol_web_1.png',
                        'assets/images/projects/utol_website/utol_web_2.png',
                        'assets/images/projects/utol_website/utol_web_3.png',
                        'assets/images/projects/utol_website/utol_web_4.png',
                        'assets/images/projects/utol_website/utol_web_5.png',
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    child: ProjectCardWithCarousel(
                      title: 'UTOL Admin Tool',
                      subTitle: 'Collaboration',
                      description: 'Contributing on Enhancing the App Tool',
                      imageUrls: [
                        'assets/images/projects/utol_website/utol_web_1.png',
                        'assets/images/projects/utol_website/utol_web_2.png',
                        'assets/images/projects/utol_website/utol_web_3.png',
                        'assets/images/projects/utol_website/utol_web_4.png',
                        'assets/images/projects/utol_website/utol_web_5.png',
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    child: ProjectCardWithCarousel(
                      title: 'UTOL Mobile App',
                      subTitle: 'Collaboration',
                      description:
                          'Contributing on enhancement driver Application and bug fixes, ',
                      imageUrls: [
                        'assets/images/projects/utol_website/utol_web_1.png',
                        'assets/images/projects/utol_website/utol_web_2.png',
                        'assets/images/projects/utol_website/utol_web_3.png',
                        'assets/images/projects/utol_website/utol_web_4.png',
                        'assets/images/projects/utol_website/utol_web_5.png',
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
