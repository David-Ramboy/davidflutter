import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio_flutter/core/widgets/box_constraints/box_constraints.dart';

class SkillsCard extends StatelessWidget {
  const SkillsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BoxConstraintsWidth(
      desktopMaxWidth: -300,
      widgetContent: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/logos_v3/flutter.svg'),
            Expanded(
              child: Container(),
            ),
            SvgPicture.asset('assets/images/logos_v3/vue.svg'),
            Expanded(
              child: Container(),
            ),
            SvgPicture.asset('assets/images/logos_v3/django.svg'),
            Expanded(
              child: Container(),
            ),
            SvgPicture.asset('assets/images/logos_v3/react.svg'),
            Expanded(
              child: Container(),
            ),
            SvgPicture.asset('assets/images/logos_v3/github.svg'),
          ]),
    );
  }
}
