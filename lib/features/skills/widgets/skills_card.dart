import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio_flutter/core/widgets/box_constraints/box_constraints.dart';
import '../../../../core/config/constants.dart' as responsive;

class SkillsCard extends StatelessWidget {
  const SkillsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    final double mobileSize;

    return BoxConstraintsWidth(
      desktopMaxWidth: -350,
      widgetContent: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/logos_v3/flutter.svg',
              width: screenSize.width < responsive.mobileScreen
                  ? 50
                  : screenSize.width < responsive.tabletScreen
                      ? null
                      : null,
            ),
            Expanded(
              child: Container(),
            ),
            SvgPicture.asset(
              'assets/images/logos_v3/vue.svg',
              width: screenSize.width < responsive.mobileScreen
                  ? 50
                  : screenSize.width < responsive.tabletScreen
                      ? null
                      : null,
            ),
            Expanded(
              child: Container(),
            ),
            SvgPicture.asset(
              'assets/images/logos_v3/django.svg',
              width: screenSize.width < responsive.mobileScreen
                  ? 50 - 10
                  : screenSize.width < responsive.tabletScreen
                      ? null
                      : null,
            ),
            Expanded(
              child: Container(),
            ),
            SvgPicture.asset(
              'assets/images/logos_v3/react.svg',
              width: screenSize.width < responsive.mobileScreen
                  ? 50
                  : screenSize.width < responsive.tabletScreen
                      ? null
                      : null,
            ),
            Expanded(
              child: Container(),
            ),
            SvgPicture.asset(
              'assets/images/logos_v3/github.svg',
              width: screenSize.width < responsive.mobileScreen
                  ? 50
                  : screenSize.width < responsive.tabletScreen
                      ? null
                      : null,
            ),
          ]),
    );
  }
}
