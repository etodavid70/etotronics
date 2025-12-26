import 'package:etotronics/constants/colors.dart';
import 'package:etotronics/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: AppColors.backgroundColor,
        // borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 150,
                width: 100,
                child: Image.asset("assets/images/logo.png"),
              ),
              Text(
                "Send us an email",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                "info@etotronics.com",
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.center,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.facebook),
                  ),
                  IconButton(
                      icon: const FaIcon(FontAwesomeIcons.xTwitter),
                      onPressed: () {
                        // print("Pressed");
                      }),
                  // const SizedBox(width: 10),

                  IconButton(
                      icon: const FaIcon(FontAwesomeIcons.linkedin),
                      onPressed: () {
                        // print("Pressed");
                      }),

                  // const SizedBox(width: 10),

                  IconButton(
                      icon: const FaIcon(FontAwesomeIcons.instagram),
                      onPressed: () {
                        // print("Pressed");
                      }),

                  // const SizedBox(width: 10),

                  IconButton(
                      icon: const FaIcon(FontAwesomeIcons.github),
                      onPressed: () {
                        // print("Pressed");
                      }),
                  // IconButton(
                  //     onPressed: () {}, icon: const Icon(MdiIcons.linke)),
                ],
              )
            ],
          ),
          // const SizedBox(width: 50),
         const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Subscribe to our Newsletter",
                style: GoogleFonts.poppins(
                  fontSize: 36,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(
                    width: 400,
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
                  IntroButton(
                    text: "Subscribe",
                    onPressed: () {
                      // Handle button press
                    },
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
