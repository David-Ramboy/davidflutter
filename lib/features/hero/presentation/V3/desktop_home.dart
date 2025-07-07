import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio_flutter/core/common/styles/utol_text_styles.dart';
import 'package:my_portfolio_flutter/core/widgets/box_constraints/box_constraints.dart';
import 'package:my_portfolio_flutter/features/hero/widgets/intro_image.dart';
import 'package:my_portfolio_flutter/features/hero/widgets/introduction.dart';
import '../../../../core/config/constants.dart' as responsive;

class DHeroPageV3 extends ConsumerWidget {
  const DHeroPageV3({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size screenSize = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      child: Center(
        child: BoxConstraintsWidth(
          desktopMaxWidth: -340,
          widgetContent: Container(
            // decoration: BoxDecoration(border: Border.all()),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 0,
                ),
                SvgPicture.asset('assets/images/text/hi.svg'),
                SizedBox(height: 2),
                SvgPicture.asset('assets/images/text/david_bryan.svg'),
                Padding(
                  padding: const EdgeInsets.only(left: 2),
                  child: Text(
                    "MIS Developer | Front-End Specialist | Flutter Enthusiast",
                    style: CustomTextStyles.title2Sp.copyWith(
                      fontSize: 22,
                      fontFamily: 'Inter',
                      height: 3,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
                BoxConstraintsWidth(
                  desktopMaxWidth: -400,
                  widgetContent: Padding(
                    padding: const EdgeInsets.only(left: 2, top: 20),
                    child: Text(
                      "A passionate programmer with experience in front-end, along with MIS, Web and mobile app development using Flutter",
                      style: CustomTextStyles.title2Sp.copyWith(
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
