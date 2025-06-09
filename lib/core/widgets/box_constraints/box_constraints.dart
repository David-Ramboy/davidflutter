import 'package:flutter/material.dart';
import 'package:my_portfolio_flutter/core/config/constants.dart' as responsive;

class BoxConstraintsWidth extends StatelessWidget {
  const BoxConstraintsWidth({
    super.key,
    required this.widgetContent,
    this.mobileMaxWidth,
    this.tabletMaxWidth,
    this.desktopMaxWidth,
  });
  final Widget widgetContent;
  final num? mobileMaxWidth;
  final double? tabletMaxWidth;
  final double? desktopMaxWidth;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < responsive.mobileScreen) {
          return ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: responsive.mobileScreen - (mobileMaxWidth ?? 99),
            ),
            child: widgetContent,
          );
        } else if (constraints.maxWidth < responsive.tabletScreen) {
          return ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: responsive.tabletScreen - (tabletMaxWidth ?? 61),
            ),
            child: widgetContent,
          );
        } else {
          return ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: responsive.desktopScreen + (desktopMaxWidth ?? 350),
            ),
            child: widgetContent,
          );
        }
      },
    );
  }
}
