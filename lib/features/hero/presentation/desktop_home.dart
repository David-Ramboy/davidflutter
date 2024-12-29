import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio_flutter/core/utility/utility_strings.dart';
import 'package:my_portfolio_flutter/features/hero/widgets/intro_image.dart';
import 'package:my_portfolio_flutter/features/hero/widgets/introduction.dart';
import '../../../config/constants.dart' as constants;

class DHeroPage extends ConsumerWidget {
  const DHeroPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.only(top: 60, left: 75, right: 50),
      width: double.infinity,
      child: const Row(
        children: [
          IntroductionWidget(),
          IntroImageWidget(),
        ],
      ),
    );
  }
}
