import 'package:etotronics/constants/colors.dart';
import 'package:etotronics/core/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Partners extends StatelessWidget {
  const Partners({super.key});

  @override
  Widget build(BuildContext context) {
    final mobile = isMobile(context);

    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height,
      ),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        color: AppColors.backgroundColor,
        child: Center(
          child: mobile
              ? Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _partnersCard(context),
                    const SizedBox(height: 30),
                    _stats("10+", "Successfully\nCompleted\nProjects"),
                    const SizedBox(height: 20),
                    _stats("250M+", "Users using\nour Softwares"),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _partnersCard(context),
                    const SizedBox(width: 40),
                    _stats("10+", "Successfully\nCompleted\nProjects"),
                    const SizedBox(width: 20),
                    _stats("250M+", "Users using\nour Softwares"),
                  ],
                ),
        ),
      ),
    );
  }

  Widget _partnersCard(BuildContext context) {
    return Container(
      width: isMobile(context)
          ? double.infinity
          : MediaQuery.of(context).size.width * 0.55,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.backgroundColor1,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Our Trusted Partners",
            style: GoogleFonts.poppins(
              fontSize: 20,
              color: AppColors.appWhite,
            ),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: [
              _logo("assets/images/flobooks.png"),
              _logo("assets/images/mega.png"),
              _logo("assets/images/polaris.png"),
              _logo("assets/images/techgeospartial.png"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _logo(String path) {
    return SizedBox(
      height: 80,
      width: 80,
      child: Image.asset(path),
    );
  }

  Widget _stats(String value, String text) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          value,
          style: GoogleFonts.poppins(
            fontSize: 40,
            color: AppColors.appBrownLight,
            fontWeight: FontWeight.w900,
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            fontSize: 18,
            color: AppColors.appWhite,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
