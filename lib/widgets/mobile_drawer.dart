import 'package:etotronics/constants/colors.dart';
import 'package:etotronics/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.backgroundColor,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Image.asset(
                "assets/images/logo.png",
                height: 50,
              ),
            ),

            const Divider(color: Colors.white24),

            _drawerItem(context, "Home", "/"),
            _drawerItem(context, "What We Do", "/"),
            _drawerItem(context, "Contact", "/"),

            const Spacer(),

            Padding(
              padding: const EdgeInsets.all(16),
              child: IntroButton(
                text: "Book an Intro Call",
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _drawerItem(BuildContext context, String title, String route) {
    return ListTile(
      title: Text(
        title,
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
      onTap: () {
        Navigator.pop(context);
        context.go(route);
      },
    );
  }
}
