import 'package:flutter/material.dart';

class MainButtonWidget extends StatelessWidget {
  const MainButtonWidget({
    super.key,
    required this.label,
    required this.colors,
    this.ontapFunction, required this.buttonWidth, required this.buttonHeight,
  });

  final String label;
  final List<Color> colors;
  final void Function()? ontapFunction;
  final double buttonWidth;
  final double buttonHeight;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        splashFactory: NoSplash.splashFactory, 
        padding: const EdgeInsets.all(0.0),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      onPressed: ontapFunction,
      child: Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colors,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          width: buttonWidth,
          height: buttonHeight,
          // constraints:  BoxConstraints(minWidth: width),
          child: Center(
            child: Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
