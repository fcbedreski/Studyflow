
import 'package:flutter/material.dart';

class AppPage extends StatelessWidget {
  const AppPage({
    super.key,
    required this.child,
    this.maxWidth = 1200,
  });

  final Widget child;
  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    //Safe Area/external level: we want the content to respect the device safe area
    return SafeArea(
      //Layout Builder: allows the interface to decide based on the space restrictions received by the widget
      child: LayoutBuilder(
        builder: (context, constraints) {
          final horizontalPadding =
              constraints.maxWidth < 600
                  ? 16.0
                  : constraints.maxWidth < 1024
                      ? 24.0
                      : 32.0;
          //Align: content at the top and at the center, horizontally
          return Align(
            alignment: Alignment.topCenter,
            //Constrained Box: on an ultra wide monitor, the content doesn't need to fill all the space of the window
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: maxWidth,
              ),
              //Padding: keep the content away from the borders
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: horizontalPadding,
                  vertical: 16,
                ),
                child: child,
              ),
            ),
          );
        },
      ),
    );
  }
}
