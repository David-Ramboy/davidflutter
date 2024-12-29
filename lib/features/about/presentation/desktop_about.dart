import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio_flutter/features/about/widgets/description.dart';
import 'package:my_portfolio_flutter/features/about/widgets/skills.dart';

class DAboutPage extends ConsumerWidget {
  const DAboutPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.only(top: 60, left: 75, right: 50),
      width: double.infinity,
      child: const Row(
        children: [
          DescriptionAbout(),
          SkillsAbout(),
        ],
      ),
    );
  }
}
