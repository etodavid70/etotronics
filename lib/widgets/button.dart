import 'package:etotronics/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroButton extends StatelessWidget {
   final String text;
  final VoidCallback? onPressed;
  // final double? width;

  IntroButton({
    super.key,
    // required this.width,
    required this.text, // default value
    this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
                          // side: BorderSide(width: 0
                          //     // color:
                          //     ),
                        ),
                        backgroundColor: AppColors.appBrown,
                      ),
                      onPressed: onPressed ?? () {},
                      child:  Text(
                        text,
                       style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: AppColors.appBlack,
                        fontWeight: FontWeight.w400,
                      ),
                      ),
                    );
  }
}