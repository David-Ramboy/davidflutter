import 'package:flutter/material.dart';
import 'package:my_portfolio_flutter/core/widgets/navbar/nav_desktop.dart';
import 'package:my_portfolio_flutter/features/about/presentation/desktop_about.dart';
import 'package:my_portfolio_flutter/features/experiences/presentation/desktop_experiences.dart';
import 'package:my_portfolio_flutter/features/hero/presentation/V3/desktop_home.dart';
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
                  // const DesktopNav(),
                  // Container(
                  //   height: 100,
                  // ),
                  // const DAboutPage(),
                  // Container(
                  //   height: 100,
                  // ),
                  // const DesktopExperiences(),

                  DHeroPageV3(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
