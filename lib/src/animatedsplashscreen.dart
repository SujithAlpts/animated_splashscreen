import 'package:alp_animated_splashscreen/src/dimensions.dart';
import 'package:alp_animated_splashscreen/src/textwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AnimatedSplashScreen extends StatefulWidget {
  final Color backgroundcolor;
  final Color foregroundcolor;
  final String logo;
  final String brandname;
  final Color brandnamecolor;
  final String companyname;

  const AnimatedSplashScreen(
      {super.key,
      required this.backgroundcolor,
      required this.foregroundcolor,
      required this.logo,
      required this.brandname,
      this.brandnamecolor = Colors.black,
      this.companyname = ''});

  @override
  State<AnimatedSplashScreen> createState() => _AnimatedSplashScreenState();
}

class _AnimatedSplashScreenState extends State<AnimatedSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.backgroundcolor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Stack(
              children: [
                // This is to fill the entire stack
                Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 130),
                    child: CircleAvatar(
                      backgroundColor: widget.foregroundcolor,
                    )
                        .animate()
                        .slideY(begin: -0.5, end: 0.2, duration: 0.5.seconds)
                        .then(delay: 1.milliseconds)
                        .slideY(end: -0.3, duration: 0.5.seconds)
                        .then(delay: 1.milliseconds)
                        .slideY(end: 0.1, duration: 0.5.seconds)
                        .then(delay: 0.1.seconds)
                        .scaleXY(end: 20, duration: 2.seconds)
                        .then(delay: 2.seconds),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: Di.container115,
                        child: Image(image: AssetImage(widget.logo))
                            .animate()
                            .fadeIn(
                                delay: 2.seconds, duration: 900.milliseconds)
                            .slideX(begin: 3, duration: 0.5.seconds),
                      ),
                      const SizedBox(
                          height:
                              20), // Add some spacing between the logo and the text
                      buildtext(
                              text: widget.brandname,
                              fontsize: Di.fontSize18,
                              fontweight: FontWeight.bold,
                              fontcolor: widget.brandnamecolor)
                          .animate()
                          .fadeIn(
                            delay: 3
                                .seconds, // Start the fade-in after the logo animation
                            duration: 900.milliseconds,
                          ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 40.0), // Adjust padding as needed
            child: Column(children: [
              widget.companyname == ''
                  ? buildtext(text: '')
                  : buildtext(
                          text: 'Powered By',
                          fontsize: Di.smallPrintFontSize,
                          fontcolor: Colors.grey)
                      .animate()
                      .fadeIn(delay: 2.5.seconds, duration: 900.milliseconds),
              buildtext(text: widget.companyname, fontweight: FontWeight.bold)
                  .animate()
                  .fadeIn(delay: 2.5.seconds, duration: 900.milliseconds),
            ]), // Optional animation
          ),
        ],
      ),
    );
  }
}
