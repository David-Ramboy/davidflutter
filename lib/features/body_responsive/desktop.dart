import 'package:flutter/material.dart';
import 'package:my_portfolio_flutter/features/about/presentation/desktop_about.dart';
import 'package:my_portfolio_flutter/features/hero/presentation/desktop_home.dart';
import 'package:my_portfolio_flutter/features/navigation/nav_desktop.dart';
import '../../config/constants.dart' as constants;

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});

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
                  DHeroPage(),
                  DAboutPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
