import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/svgs/doc_doc_logo_low_opacity.dart.svg'),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0),
              ],
              stops: const [0.14, 0.4],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: Image.asset('assets/images/doctor.png'),
        ),
        Positioned(
          bottom: 30,
          left: 0.0,
          right: 0.0,
          child: Text(
            'Best Doctor\nAppointment App',
            textAlign: TextAlign.center,
            style: TextStyles.font32BlueBold.copyWith(height: 1.4,),
          ),
        ),
      ],
    );
  }
}
