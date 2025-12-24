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
      // height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(
            "What We can  do for you",
            style: GoogleFonts.poppins(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),

          // Row(children: [

          // ]),

          // const SizedBox(width: 20),

          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              const SizedBox(width: 20),
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
          ),


        const  SizedBox(height: 100),
          Row(
            children: [
              ClipRRect(
                borderRadius: const BorderRadiusGeometry.all(Radius.circular(128)),
                child: Image.asset(
                  "assets/images/software.png",
                  height: 300,
                  width: 300,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 40),

              // Spacer(),
              Text(
                AppText.whatWedo,
                style: GoogleFonts.poppins(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.left,
              ),
              //  Text(
              //   AppText.t100,
              //   style: GoogleFonts.poppins(
              //     fontSize: 100,
              //     // color: Colors.white,
              //     fontWeight: FontWeight.w900,
              //   ),
              //   textAlign: TextAlign.left,
              // )
            ],
          )
        ],
      ),
    );
  }
}
