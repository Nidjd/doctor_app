import 'package:doctor_app/core/theming/colors.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  final void Function() onPressed;
  const GetStartedButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: MaterialStatePropertyAll(
          ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: const MaterialStatePropertyAll(
          Size(double.infinity, 50.0),
        ),
        backgroundColor: const MaterialStatePropertyAll(
          ColorsManager.mainBlue,
        ),
      ),
      onPressed: onPressed,
      child: Text(
        'Get Started',
        style: TextStyles.font16WhiteSemiBold,
      ),
    );
  }
}
