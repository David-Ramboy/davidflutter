import 'package:flutter/material.dart';
import 'package:my_portfolio_flutter/core/widgets/navbar/nav_desktop.dart';
import 'package:my_portfolio_flutter/features/about/presentation/desktop_about.dart';
import 'package:my_portfolio_flutter/features/experiences/presentation/V3/desktop_experiences.dart';
import 'package:my_portfolio_flutter/features/experiences/presentation/desktop_experiences.dart';
import 'package:my_portfolio_flutter/features/hero/presentation/V3/desktop_home.dart';
import 'package:my_portfolio_flutter/features/projects/presentation/projects_screen.dart';
import 'package:my_portfolio_flutter/features/skills/presentation/skills.dart';
import '../../core/config/constants.dart' as constants;

class TabletHomeBody extends StatelessWidget {
  const TabletHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(
                  minWidth: 0, maxWidth: constants.desktop),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // decoration: BoxDecoration(
                    //   border: Border.all(color: Colors.white),
                    // ),
                    child: const DesktopNav(),
                  ),
                  // Container(
                  //   height: 100,
                  // ),
                  // const DAboutPage(),
                  // Container(
                  //   height: 100,
                  // ),
                  // const DesktopExperiences(),

                  const DHeroPageV3(),
                  const SizedBox(
                    height: 250,
                  ),

                  const DExperiencePageV3(),
                  const SizedBox(
                    height: 250,
                  ),

                  const SkillPage(),
                  const SizedBox(
                    height: 250,
                  ),
                  const ProjectsPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
