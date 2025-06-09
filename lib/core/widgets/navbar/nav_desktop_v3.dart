import 'package:flutter/material.dart';
import 'package:my_portfolio_flutter/core/utilities/utility_strings.dart';
import '../../config/constants.dart' as constant_color;

class DesktopNavV3 extends StatelessWidget {
  const DesktopNavV3({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: const Text('Ramboy'),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: InkWell(
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    splashFactory: NoSplash.splashFactory,
                    onTap: () {},
                    focusColor: Colors.white,
                    child: Text(
                        textScaler: TextScaler.linear(
                          UtilString.paragphTextScaleFactor(context),
                        ),
                        'Home'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: InkWell(
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    splashFactory: NoSplash.splashFactory,
                    onTap: () {},
                    focusColor: Colors.white,
                    child: Text(
                        textScaler: TextScaler.linear(
                          UtilString.paragphTextScaleFactor(context),
                        ),
                        'About'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: InkWell(
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    splashFactory: NoSplash.splashFactory,
                    onTap: () {},
                    focusColor: Colors.white,
                    child: Text(
                        textScaler: TextScaler.linear(
                          UtilString.paragphTextScaleFactor(context),
                        ),
                        'Experience'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: InkWell(
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    splashFactory: NoSplash.splashFactory,
                    onTap: () {},
                    focusColor: Colors.white,
                    child: Text(
                        textScaler: TextScaler.linear(
                          UtilString.paragphTextScaleFactor(context),
                        ),
                        'Projects'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: InkWell(
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    splashFactory: NoSplash.splashFactory,
                    onTap: () {},
                    focusColor: Colors.white,
                    child: Text(
                        textScaler: TextScaler.linear(
                          UtilString.paragphTextScaleFactor(context),
                        ),
                        'Contacts'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: constant_color.blue,
                      minimumSize: const Size(140, 36),
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(2)),
                      ),
                    ),
                    child: Text(
                      textScaler: TextScaler.linear(
                        UtilString.paragphTextScaleFactor(context),
                      ),
                      'Resume',
                      style: const TextStyle(
                        inherit: true,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: InkWell(
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    splashFactory: NoSplash.splashFactory,
                    onTap: () {},
                    focusColor: Colors.white,
                    child: const Icon(Icons.dark_mode),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
