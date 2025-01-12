import 'package:flutter/material.dart';
import 'package:my_portfolio_flutter/core/utility/utility_strings.dart';
import 'package:my_portfolio_flutter/features/experiences/widgets/exp_description.dart';
import 'package:my_portfolio_flutter/features/experiences/widgets/exp_navigation.dart';

class DesktopExperiences extends StatelessWidget {
  const DesktopExperiences({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 60, left: 75, right: 50, bottom: 100),
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 9,
                child: Container(
                  height: 1.0,
                  color: Colors.black,
                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 8),
                child: Text(
                  textScaler: TextScaler.linear(
                      UtilString.paragphTextScaleFactor(context)),
                  'My Experiences',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 100,
              ),
              Expanded(
                  child: Container(
                height: 1.0,
                color: Colors.black,
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
              )),
              SizedBox(
                width: 50,
              )
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 50),
            child: Row(
              children: [
                Expanded(child: ExpUtolDescriptionWidget()),
                Expanded(child: ExpNavigationWidget()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
