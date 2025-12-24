import 'package:etotronics/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageTextCard extends StatelessWidget {
  final String imagePath;
  final String title;
  // final double imageHeight;
  final VoidCallback? onTap;

  const ImageTextCard({
    super.key,
    required this.imagePath,
    required this.title,
    // this.imageHeight = 12,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        height: 250,
        width: 275,
        // elevation: 4,
        decoration: BoxDecoration(
        color: AppColors.backgroundColor1,
        borderRadius: BorderRadius.circular(12),
      ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image
            Image.asset(
              imagePath,
              height: 50,
              width: 50,
              fit: BoxFit.cover,
            ),

            // Text
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                title,
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
