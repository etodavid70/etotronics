import 'package:etotronics/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Partners extends StatefulWidget {
  const Partners({super.key});

  @override
  State<Partners> createState() => _PartnersState();
}

class _PartnersState extends State<Partners> {
  @override
  Widget build(BuildContext context) {
    //patners and statistics section
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          //partner section
          Container(
            // height: MediaQuery.of(context).size.height*0.5,
            width: MediaQuery.of(context).size.width * 0.55,
             height: MediaQuery.of(context).size.height*0.3,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.backgroundColor1,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Text(
                  """Our Trusted Partners""",
                  style: GoogleFonts.poppins(
                      fontSize: 20, color: AppColors.appWhite),
                ),
                const SizedBox(height: 20),
                const Row(
                  spacing: 20, // horizontal spacing
                  // runSpacing: 20,    // vertical spacing
                  // alignment: WrapAlignment.spaceAround,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.home),
                    Icon(Icons.person),
                    Icon(Icons.settings),
                    Icon(Icons.notifications),
                    Icon(Icons.lock),
                    Icon(Icons.help),
                  ],
                ),
                const SizedBox(height: 20),
                const Row(
                  spacing: 20, // horizontal spacing
                  // runSpacing: 20,    // vertical spacing
                  // alignment: WrapAlignment.spaceAround,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.home),
                    Icon(Icons.person),
                    Icon(Icons.settings),
                    Icon(Icons.notifications),
                    Icon(Icons.lock),
                    Icon(Icons.help),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 40),

          // statistics section
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "10+",
                style: GoogleFonts.poppins(
                    fontSize: 40,
                    color: AppColors.appBrownLight,
                    fontWeight: FontWeight.w900),
              ),
              Text(
                """Successfully 
    Completed
    Projects""",
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: AppColors.appWhite,
                    fontWeight: FontWeight.w900),
              ),
            ],
          ),
          const SizedBox(width: 20),
        // const  Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "250M+",
                style: GoogleFonts.poppins(
                    fontSize: 40,
                    color: AppColors.appBrownLight,
                    fontWeight: FontWeight.w900),
              ),
              Text(
                """ Users 
    using our
    Softwares""",
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: AppColors.appWhite,
                    fontWeight: FontWeight.w900),
              )
            ],
          ),
        ],
      ),
    );
  }
}
