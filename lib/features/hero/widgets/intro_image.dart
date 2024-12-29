import 'package:flutter/material.dart';

class IntroImageWidget extends StatelessWidget {
  const IntroImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.only(right: 80),
              child: Column(
                children: [
                  ConstrainedBox(
                    constraints:
                        const BoxConstraints(maxHeight: 400, minHeight: 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(90.0),
                      child: Image.asset(
                        'assets/images/me.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
