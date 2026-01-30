import 'package:etotronics/constants/colors.dart';
import 'package:etotronics/constants/texts.dart';
import 'package:etotronics/core/utils.dart';
import 'package:etotronics/widgets/image_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WhatWeDo extends StatelessWidget {
  const WhatWeDo({super.key});

  @override
  Widget build(BuildContext context) {
    final mobile = isMobile(context);

    return Container(
      padding: const EdgeInsets.all(20),
      color: AppColors.backgroundColor,
      child: mobile
          ? Column(
              children: [
                _title(context),
                const SizedBox(height: 20),
                Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  alignment: WrapAlignment.center,
                  children: _cards(),
                ),
                const SizedBox(height: 40),
                _rightText(context),
              ],
            )
          : Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      _title(context),
                      const SizedBox(height: 20),
                      Wrap(
                        spacing: 20,
                        runSpacing: 20,
                        children: _cards(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 40),
                Expanded(child: _rightText(context)),
              ],
            ),
    );
  }

  Widget _title(BuildContext context) {
    return Text(
      "What We can do for you",
      style: GoogleFonts.poppins(
        fontSize: isMobile(context) ? 24 : 30,
        color: Colors.white,
        fontWeight: FontWeight.w300,
      ),
      textAlign: TextAlign.center,
    );
  }

  List<Widget> _cards() {
    return [
      ImageTextCard(
        imagePath: "assets/images/sdk.png",
        title: "Custom SDK &\nAPI Engineering",
        onTap: () {},
      ),
      ImageTextCard(
        imagePath: "assets/images/embedded.png",
        title: "Android & Linux Based\nApplication Development",
        onTap: () {},
      ),
      ImageTextCard(
        imagePath: "assets/images/cloud.png",
        title: "Cloud Infrastructure,\nDevOps & API Security",
        onTap: () {},
      ),
      ImageTextCard(
        imagePath: "assets/images/apps.png",
        title: "Web and Mobile\nApplication Development",
        onTap: () {},
      ),
    ];
  }

  Widget _rightText(BuildContext context) {
    return Column(
      children: [
        Text(
          "We have a super",
          style: GoogleFonts.spaceGrotesk(
            fontSize: isMobile(context) ? 30 : 50,
            color: Colors.white,
            fontWeight: FontWeight.w900,
          ),
        ),
        Text(
          "efficient team 💪🏼 💯",
          style: GoogleFonts.spaceGrotesk(
            fontSize: isMobile(context) ? 30 : 50,
            color: Colors.white,
            fontWeight: FontWeight.w900,
          ),
        ),
        const SizedBox(height: 30),
        Text(
          AppText.whatWedo,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
