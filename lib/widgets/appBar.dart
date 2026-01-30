import 'package:etotronics/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MobileAppBar extends StatelessWidget {
  final VoidCallback onMenuTap;

  const MobileAppBar({
    super.key,
    required this.onMenuTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 50,
          child: Image.asset("assets/images/logo.png"),
        ),
        IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: onMenuTap,
        ),
      ],
    );
  }
}


Widget buildDesktopAppBar(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      InkWell(
        onTap: () => context.go("/"),
        child: SizedBox(
          height: 60,
          width: 140,
          child: Image.asset("assets/images/logo.png"),
        ),
      ),
      IntroButton(
        text: 'Book an Intro call',
        onPressed: () => context.go("/"),
      ),
    ],
  );
}
