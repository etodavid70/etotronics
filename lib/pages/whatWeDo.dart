import 'package:flutter/material.dart';

class WhatWeDo extends StatefulWidget {
  const WhatWeDo({super.key});

  @override
  State<WhatWeDo> createState() => _WhatWeDoState();
}

class _WhatWeDoState extends State<WhatWeDo> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text("What We Do Page"),
      ],
    );
  }
}