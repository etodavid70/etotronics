import 'package:etotronics/constants/colors.dart';
import 'package:etotronics/constants/texts.dart';
import 'package:etotronics/widgets/image_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WhatWeDo extends StatefulWidget {
  const WhatWeDo({super.key});

  @override
  State<WhatWeDo> createState() => _WhatWeDoState();
}

class _WhatWeDoState extends State<WhatWeDo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,

      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: AppColors.backgroundColor,
        // borderRadius: BorderRadius.circular(12),
      ),

      //main row for what we do section
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //column for text and image cards
          Column(
            children: [
              Text(
                "What We can  do for you",
                style: GoogleFonts.poppins(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  ImageTextCard(
                    imagePath: "assets/images/sdk.png",
                    title: """Custom SDK & 
    API Engineering
    """, // imageHeight: 50,
                    onTap: () {},
                  ),
                  const SizedBox(width: 20),
                  ImageTextCard(
                    imagePath: "assets/images/embedded.png",
                    title: """Android & Linux Based
Application Development""",
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  ImageTextCard(
                    imagePath: "assets/images/cloud.png",
                    title: """Cloud Infrastructure,
DevOps & API Security""",
                    onTap: () {},
                  ),
                  const SizedBox(width: 20),
                  ImageTextCard(
                    imagePath: "assets/images/apps.png",
                    title: """Web and Mobile
Application Development""",
                    onTap: () {},
                  ),
                ],
              )
            ],
          ),
          const SizedBox(width: 20),

          Column(
            children: [
              const SizedBox(height: 60),
              Text(
                "We have a super",
                style: GoogleFonts.spaceGrotesk(
                  fontSize: 50,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.center,
              ),
              // const SizedBox(height: 60),
              Text(
                "effecient team 💪🏼 💯",
                style: GoogleFonts.spaceGrotesk(
                  fontSize: 50,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50),
              Text(
                AppText.whatWedo,
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
