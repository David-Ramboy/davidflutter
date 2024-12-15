import 'package:flutter/material.dart';
import 'package:my_portfolio_flutter/features/body_responsive/desktop.dart';
import 'package:my_portfolio_flutter/services/responsive_layout.dart';
import 'config/constants.dart' as constant_color;

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: constant_color.backgroundScreen,
        fontFamily: 'Inter',
      ),
      home: const Scaffold(
        body: ResponsiveLayout(
          mobileBody: Placeholder(),
          tabletBody: Placeholder(),
          desktopBody: DesktopBody(),
        ),
      ),
    );
  }
}
