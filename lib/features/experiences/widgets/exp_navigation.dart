import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/config/constants.dart' as colors;

class ExpNavigationWidget extends ConsumerWidget {
  const ExpNavigationWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.only(left: 150),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: SizedBox(
              width: 300,
              child: Column(
                children: [
                  const Text('(UTOL) Unified Transport Operations League.'),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(color: colors.blue))),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: SizedBox(
              width: 300,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('SMESoft Inc.'),
                  SizedBox(
                    height: 5,
                  ),
                  // Container(
                  //   decoration: BoxDecoration(
                  //       border: Border(bottom: BorderSide(color: colors.blue))),
                  // ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: SizedBox(
              width: 300,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Freelance'),
                  SizedBox(
                    height: 5,
                  ),
                  // Container(
                  //   decoration: BoxDecoration(
                  //       border: Border(bottom: BorderSide(color: colors.blue))),
                  // ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
