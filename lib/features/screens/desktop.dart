import 'package:flutter/material.dart';
import 'package:my_portfolio_flutter/core/widgets/navbar/nav_desktop.dart';
import 'package:my_portfolio_flutter/core/widgets/responsive/responsive_layout.dart';
import 'package:my_portfolio_flutter/features/about/presentation/desktop_about.dart';
import 'package:my_portfolio_flutter/features/experiences/presentation/V3/desktop_experiences.dart';
import 'package:my_portfolio_flutter/features/experiences/presentation/desktop_experiences.dart';
import 'package:my_portfolio_flutter/features/hero/presentation/V3/desktop_home.dart';
import 'package:my_portfolio_flutter/features/hero/presentation/desktop_home.dart';
import 'package:my_portfolio_flutter/features/screens/mobile.dart';
import 'package:my_portfolio_flutter/features/screens/tablet.dart';
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        // decoration: BoxDecoration(
                        //   border: Border.all(color: Colors.white),
                        // ),
                        child: const DesktopNav()),
                    // Container(
                    //   height: 100,
                    // ),
                    // const DAboutPage(),
                    // Container(
                    //   height: 100,
                    // ),
                    // const DesktopExperiences(),

                    const DHeroPageV3(),
                    SizedBox(
                      height: 350,
                    ),

                    const DExperiencePageV3()
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
