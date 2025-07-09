import 'package:flutter/material.dart';
import 'package:my_portfolio_flutter/core/widgets/footer/footer.dart';
import 'package:my_portfolio_flutter/core/widgets/navbar/nav_desktop.dart';
import 'package:my_portfolio_flutter/features/about/presentation/desktop_about.dart';
import 'package:my_portfolio_flutter/features/experiences/presentation/V3/desktop_experiences.dart';
import 'package:my_portfolio_flutter/features/experiences/presentation/V3/mobile_experiences.dart';
import 'package:my_portfolio_flutter/features/experiences/presentation/desktop_experiences.dart';
import 'package:my_portfolio_flutter/features/hero/presentation/V3/desktop_home.dart';
import 'package:my_portfolio_flutter/features/hero/presentation/V3/mobile_home.dart';
import 'package:my_portfolio_flutter/features/projects/presentation/mobile_projects_screen.dart';
import 'package:my_portfolio_flutter/features/projects/presentation/projects_screen.dart';
import 'package:my_portfolio_flutter/features/skills/presentation/mobile_skills.dart';
import 'package:my_portfolio_flutter/features/skills/presentation/skills.dart';
import '../../core/config/constants.dart' as constants;

class MobileHomeBody extends StatelessWidget {
  const MobileHomeBody({super.key});

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
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  DesktopNav(),
                  SizedBox(
                    height: 100,
                  ),
                  MHeroPageV3(),
                  SizedBox(
                    height: 120,
                  ),
                  MProjectsPage(),
                  SizedBox(
                    height: 100,
                  ),
                  MExperiencePageV3(),
                  SizedBox(
                    height: 150,
                  ),
                  MSkillPage(),
                  SizedBox(
                    height: 250,
                  ),
                  Footer()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
