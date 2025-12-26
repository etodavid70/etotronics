// main_layout.dart
import 'package:etotronics/constants/colors.dart';
import 'package:etotronics/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class MainLayout extends StatelessWidget {
  final Widget child;

  const MainLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: Container(
          //change it to transparent white
          color: Colors.black.withOpacity(0.1),

          //  AppColors.backgroundColor,
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  context.go("/"); // GoRouter navigation
                },
                child: Row(
                  children: [
                    SizedBox(
                      height: 200,
                      width: 150,
                      child: Image.asset("assets/images/logo.png"),
                    ),
                  ],
                ),
              ),

              // Navigation options
              Row(
                children: [
                  // _NavItem(label: 'Home', route: '/'),

                  const SizedBox(width: 20),
                  IntroButton(
                      text: 'Book an Intro call',
                      onPressed: () {
                        context.go("/"); // GoRouter navigation
                      }),
                ],
              ),
            ],
          ),
        ),
      ),
      body: child,
    );
  }
}
