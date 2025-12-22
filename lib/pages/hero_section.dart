import 'package:etotronics/constants/colors.dart';
import 'package:etotronics/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroSection extends StatefulWidget {
  const HeroSection({super.key});

  @override
  State<HeroSection> createState() => _HeroSectionState();
}

class _HeroSectionState extends State<HeroSection> {




  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
    
      'assets/videos/earth.mp4',
    )..initialize().then((_) {
        _controller.setLooping(true);
        _controller.setVolume(0);
        _controller.play();
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


 @override
  Widget build(BuildContext context) {
    return Stack(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: double.infinity,
                  child: _controller.value.isInitialized
                      ? FittedBox(
                          fit: BoxFit.cover,
                          child: SizedBox(
                            width: _controller.value.size.width,
                            height: _controller.value.size.height,
                            child: VideoPlayer(_controller),
                          ),
                        )
                      : const Center(child: CircularProgressIndicator()),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  color: Colors.black.withOpacity(0.1),
                ),
              
                Center(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            """Engineering Software 
        That Powers 
        the Future 💪🏼""",
                            style: GoogleFonts.poppins(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 20),
                          Text(
                            """Crafting World-Class Digital Experiences
Precision engineering, refined design, and
 battle-tested performance—built to
                 power your business.""",
                            style: GoogleFonts.poppins(
                                fontSize: 20, color: AppColors.appWhite),
                          ),


                        // const  SizedBox(height: 30),

                        // IntroButton(text: "Book an Intro call", onPressed: () {
                        //   // Handle button press
                        // }),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
  }


  
}