import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:my_portfolio_flutter/core/common/styles/utol_text_styles.dart';
import 'package:my_portfolio_flutter/core/widgets/box_constraints/box_constraints.dart';

class ExperiencesWidget extends StatelessWidget {
  const ExperiencesWidget(
      {super.key, this.title, this.subTitle, this.description});
  final String? title;
  final String? subTitle;
  final String? description;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 7),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title ?? '',
                style: CustomTextStyles.title2Sp.copyWith(
                  fontSize: 22,
                  fontFamily: 'Inter',
                  height: 2,
                  fontWeight: FontWeight.w100,
                ),
              ),
              Text(
                subTitle ?? '',
                style: CustomTextStyles.title2Sp.copyWith(
                  fontSize: 10,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w100,
                ),
              ),
            ],
          ),
        ),
        BoxConstraintsWidth(
          desktopMaxWidth: -350,
          widgetContent: Padding(
            padding: const EdgeInsets.only(top: 20, right: 10),
            child: MarkdownBody(
              data: description ?? '',
              styleSheet: MarkdownStyleSheet(
                p: CustomTextStyles.bodyMedium.copyWith(
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w100,
                ),
                listBullet: CustomTextStyles.bodyMedium.copyWith(
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
