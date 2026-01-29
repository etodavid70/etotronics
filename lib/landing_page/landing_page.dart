import 'package:etotronics/constants/colors.dart';
import 'package:etotronics/landing_page/contact_us.dart';


import 'package:etotronics/pages/hero_section.dart';
import 'package:etotronics/pages/partners.dart';
import 'package:etotronics/pages/whatWeDo.dart';
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


// class LandingPage extends StatefulWidget {
//   const LandingPage({super.key});

//   @override
//   State<LandingPage> createState() => _LandingPageState();
// }

// class _LandingPageState extends State<LandingPage> {
//   @override
//   void initState() {
//     super.initState();
//   }

//   Widget buildSection({
//     required String title,

//     required String text,
//   }) {
//     return Container(
//       height: MediaQuery.of(context).size.height,
//       width: double.infinity,
//       color: AppColors.backgroundColor,
//       child: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(32.0),
//           child: Text(
//             text,
//             style: const TextStyle(
//               fontSize: 36,
//               color: Colors.white,
//               fontWeight: FontWeight.bold,
//             ),
//             textAlign: TextAlign.center,
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return
//         // Scaffold(
//         //   body:
//     const   SingleChildScrollView(
//       child: Column(
//         children: [
//            HeroSection(),
//            Align(alignment: Alignment.centerLeft, child: Partners()),
//            WhatWeDo(),
//           ContactUs()
//         ],
//       ),
//     );
//     // );
//   }
// }

