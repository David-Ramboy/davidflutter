import 'package:flutter/material.dart';

class ExpNavigationWidget extends StatelessWidget {
  const ExpNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 150),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('(UTOL) Unified Transport Operations League.'),
          Text('SMESoft Inc.'),
          Text('Freelance')
        ],
      ),
    );
  }
}
