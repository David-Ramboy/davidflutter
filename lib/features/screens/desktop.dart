import 'package:flutter/material.dart';
import 'package:my_portfolio_flutter/core/widgets/footer/footer.dart';
import 'package:my_portfolio_flutter/core/widgets/navbar/nav_desktop.dart';
import 'package:my_portfolio_flutter/core/widgets/responsive/responsive_layout.dart';
import 'package:my_portfolio_flutter/features/about/presentation/desktop_about.dart';
import 'package:my_portfolio_flutter/features/experiences/presentation/V3/desktop_experiences.dart';
import 'package:my_portfolio_flutter/features/experiences/presentation/desktop_experiences.dart';
import 'package:my_portfolio_flutter/features/hero/presentation/V3/desktop_home.dart';
import 'package:my_portfolio_flutter/features/projects/presentation/projects_screen.dart';
import 'package:my_portfolio_flutter/features/screens/mobile.dart';
import 'package:my_portfolio_flutter/features/screens/tablet.dart';
import 'package:my_portfolio_flutter/features/skills/presentation/skills.dart';
import '../../core/config/constants.dart' as constants;

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: ResponsiveLayout(
        mobileBody: const MobileHomeBody(),
        tabletBody: const TabletHomeBody(),
        desktopBody: SizedBox(
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
                      height: 140,
                    ),
                    DHeroPageV3(),
                    SizedBox(
                      height: 140,
                    ),
                    ProjectsPage(),
                    SizedBox(
                      height: 100,
                    ),
                    DExperiencePageV3(),
                    SizedBox(
                      height: 150,
                    ),
                    SkillPage(),
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
      )),
    );
  }
}
