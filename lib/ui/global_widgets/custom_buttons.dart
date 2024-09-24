import 'package:flutter/material.dart';
import 'package:flutter_getx_demo/utils/flutter/utilities.dart';

class CustomPrimaryButton extends StatelessWidget {
  final Color buttonColor;
  final String textValue;
  final Color textColor;
  final VoidCallback onClick;

  const CustomPrimaryButton({
    Key? key,
    required this.buttonColor,
    required this.textValue,
    required this.textColor,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: FxRadius.all(14.0),
      elevation: 0,
      child: Container(
        height: 42,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: FxRadius.all(14.0),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onClick,
            borderRadius: FxRadius.all(14.0),
            child: Center(
              child: Text(
                textValue,
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(color: textColor, fontSize: 16),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
