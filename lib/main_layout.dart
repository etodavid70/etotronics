// main_layout.dart
import 'package:etotronics/constants/colors.dart';
import 'package:etotronics/core/utils.dart';
import 'package:etotronics/landing_page/landing_page.dart';
import 'package:etotronics/widgets/appBar.dart';
import 'package:etotronics/widgets/button.dart';
import 'package:etotronics/widgets/mobile_drawer.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';


class MainLayout extends StatelessWidget {
  final Widget child;

  const MainLayout({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final mobile = isMobile(context);

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,

      // 🔝 APP BAR
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),

            //  IMPORTANT FIX
            child: Builder(
              builder: (scaffoldContext) {
                return mobile
                    ? MobileAppBar(
                        onMenuTap: () {
                          Scaffold.of(scaffoldContext).openEndDrawer();
                        },
                      )
                    : buildDesktopAppBar(context);
              },
            ),
          ),
        ),
      ),

      endDrawer: mobile ? const MobileDrawer() : null,

      body: child,
    );
  }
}
