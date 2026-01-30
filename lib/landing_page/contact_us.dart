import 'package:etotronics/constants/colors.dart';
import 'package:etotronics/core/utils.dart';
import 'package:etotronics/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

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

      
  child: Align(
  alignment: mobile ? Alignment.center : Alignment.centerLeft,
  child: mobile
      ? Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _left(context),
            const SizedBox(height: 40),
            _newsletter(context),
          ],
        )
      : Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _left(context),
            const SizedBox(width: 200),
            _newsletter(context),
          ],
        ),
),

    ),
  );
}


  Widget _left(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       SizedBox(
          height: 100,
          width: 200,
          child: Image.asset("assets/images/logo.png"),
        ),

        const SizedBox(height: 10),
        Text(
          "Send us an email",
          style: GoogleFonts.poppins(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          "info@etotronics.com",
          style: GoogleFonts.poppins(
            fontSize: 15,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: const [
            Icon(Icons.facebook, color: Colors.white),
            SizedBox(width: 10),
            FaIcon(FontAwesomeIcons.xTwitter, color: Colors.white),
            SizedBox(width: 10),
            FaIcon(FontAwesomeIcons.linkedin, color: Colors.white),
            SizedBox(width: 10),
            FaIcon(FontAwesomeIcons.instagram, color: Colors.white),
            SizedBox(width: 10),
            FaIcon(FontAwesomeIcons.github, color: Colors.white),
          ],
        )
      ],
    );
  }

  Widget _newsletter(BuildContext context) {
    return Column(
      children: [
        Text(
          "Subscribe to our Newsletter",
          style: GoogleFonts.poppins(
            fontSize: isMobile(context) ? 26 : 36,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            SizedBox(
              width: isMobile(context) ? 220 : 400,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Enter your email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            IntroButton(text: "Subscribe", onPressed: () {}),
          ],
        ),
      ],
    );
  }
}

