import 'package:etotronics/constants/colors.dart';
import 'package:etotronics/landing_page/contact_us.dart';
import 'package:etotronics/landing_page/hero_section.dart';
import 'package:etotronics/landing_page/partners.dart';
import 'package:etotronics/landing_page/whatWeDo.dart';
import 'package:etotronics/widgets/button.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          HeroSection(),
          Partners(),
        // Align(alignment: Alignment.centerLeft, child: Partners()),
          WhatWeDo(),
          ContactUs(),
        ],
      ),
    );
  }
}