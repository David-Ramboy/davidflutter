import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio_flutter/core/utilities/utility_strings.dart';
import '../../config/constants.dart' as constant_color;
import '../../../../core/config/constants.dart' as responsive;

class DesktopNav extends StatelessWidget {
  const DesktopNav({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return const SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          SizedBox(
            height: 20,
          ),
          // Expanded(
          //   flex: 1,
          //   child: Padding(
          //     padding: const EdgeInsets.only(top: 10),
          //     child: SvgPicture.asset(
          //       'assets/images/david_logo_grey.svg',
          //     ),
          //   ),
          // ),
          Expanded(
            flex: 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [],
            ),
          ),
        ],
      ),
    );
  }
}
