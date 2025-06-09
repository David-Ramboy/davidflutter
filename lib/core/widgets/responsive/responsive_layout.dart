import 'package:flutter/material.dart';
import 'package:my_portfolio_flutter/core/config/constants.dart' as responsive;

//  ======================= Pages Layout Responsive =================
class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget tabletBody;
  final Widget desktopBody;

  const ResponsiveLayout({
    super.key,
    required this.mobileBody,
    required this.tabletBody,
    required this.desktopBody,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < responsive.mobileScreen) {
          return mobileBody;
        } else if (constraints.maxWidth < responsive.tabletScreen) {
          return tabletBody;
        } else {
          return desktopBody;
        }
      },
    );
  }
}
