import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_web_example/constants/content.dart';
import 'package:flutter_web_example/helpers/responsive.dart';
import 'package:flutter_web_example/helpers/style.dart';
import 'package:flutter_web_example/widgets/bottom_text_widget.dart';
import 'package:flutter_web_example/widgets/button.dart';
import 'package:google_fonts/google_fonts.dart';

class DesktopScreen extends StatefulWidget {
  final GlobalKey key1;
  final GlobalKey key2;
  final GlobalKey key3;
  final GlobalKey key4;

  const DesktopScreen({
    Key key,
    this.key1,
    this.key2,
    this.key3,
    this.key4,
  }) : super(key: key);

  @override
  State<DesktopScreen> createState() => _DesktopScreenState();
}

class _DesktopScreenState extends State<DesktopScreen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: EdgeInsets.zero,
      child: Column(
        children: [
          Container(
            key: widget.key1,
            child: Stack(
              children: [
                Container(
                  color: Colors.black,
                  child: Image.asset(
                    "assets/images/img.png",
                    width: screenSize.width,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Center(
                  child: Container(
                    constraints: BoxConstraints(maxWidth: 1440),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      width: screenSize.width / 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 200,
                          ),
                          RichText(
                              text: TextSpan(
                            children: [
                              TextSpan(
                                  text: "The token you \n must deserve",
                                  style: GoogleFonts.roboto(
                                      fontSize: ResponsiveWidget.isMediumScreen(
                                              context)
                                          ? 68
                                          : 68,
                                      color: active,
                                      fontWeight: FontWeight.w900)),
                            ],
                          )),
                          SizedBox(
                            height: 40,
                          ),
                          TextButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(41))),
                              padding:
                                  MaterialStateProperty.all<EdgeInsetsGeometry>(
                                      EdgeInsets.all(32)),
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(disable),
                              foregroundColor:
                                  MaterialStateProperty.all<Color>(Colors.blue),
                              overlayColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.hovered))
                                    return Colors.blue.withOpacity(0.04);
                                  if (states.contains(MaterialState.focused) ||
                                      states.contains(MaterialState.pressed))
                                    return Colors.blue.withOpacity(0.12);
                                  return null; // Defer to the widget's default.
                                },
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Buy BDSM token',
                              style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            key: widget.key2,
            constraints: BoxConstraints(maxWidth: 1440),
            height: 875,
            color: Colors.red,
          ),
          Container(
            key: widget.key3,
            color: Colors.black,
            width: double.infinity,
            height: 870,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/images/whatistoken.png",
                    width: screenSize.width,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 82,
                    ),
                    Text(
                      'What is BDSM token',
                      style: GoogleFonts.roboto(
                          fontSize: 64,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 120,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BlurrContainer(
                          image: 'assets/images/imageMask.png',
                          title: 'Simple exchange',
                          subtitle:
                              'Buy and resell tokens in one click, with a convenient and understandable conversion.',
                        ),
                        BlurrContainer(
                          image: 'assets/images/imageMask.png',
                          title: 'Pay to merchants',
                          subtitle:
                              'Pay for your naughty purchases at affiliate stores.',
                        ),
                        BlurrContainer(
                          title: 'Support community',
                          image: 'assets/images/imageMask.png',
                          subtitle:
                              'You are not alone, there are a lot of us and we support the community.',
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            key: widget.key4,
            height: 894,
            color: Colors.black,
            child: Column(
              children: [
                SizedBox(
                  height: 108,
                ),
                Text(
                  'Roadmap',
                  style: GoogleFonts.roboto(
                      fontSize: 58,
                      fontWeight: FontWeight.w800,
                      color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 111.0),
                  child: Stack(
                    children: [
                      Image.asset(
                        "assets/images/Vector.png",
                        width: screenSize.width,
                        fit: BoxFit.fitWidth,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextBox(
                            title: 'Phase 1',
                            subtitle:
                                '* Token presale \n * BDSM whitepaper \n * Website development \n * Social media Huge marketing rollout \n * Pancake Swap launch \n * Referral program.',
                          ),
                          TextBox(
                            title: 'Phase 2',
                            subtitle:
                                '* Listing on CoinGecko Listing on CoinMarketCap \n * Logo on Web3 wallets \n * Merch launch \n * BDSM token new bridges, Ethereum, Polygon, Fantom \n * Contract audit \n * NFT launch Celebrity hosts and events, YouTube/social influencers',
                          ),
                          TextBox(
                            title: 'Phase 3',
                            subtitle:
                                '* Expand development team \n * CEX listings, Hotbit, Whitebit, Bitmart \n * BDSM payments app development \n * Expand payment app to merchants worldwide \n * Continued R&D of BDSM token use in sequence with the ever changing crypto market',
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BlurrContainer extends StatelessWidget {
  const BlurrContainer({
    Key key,
    this.image,
    this.title,
    this.subtitle,
  }) : super(key: key);
  final String image;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 7),
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 20,
            sigmaY: 20,
          ),
          child: Container(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Image.asset(
                    image,
                    fit: BoxFit.cover,
                    height: 270,
                  ),
                  Text(
                    title,
                    style: GoogleFonts.roboto(
                        fontSize: 32,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        subtitle,
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                          height: 1.8,
                          fontWeight: FontWeight.w800,
                          color: Colors.white.withOpacity(0.6),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              height: 489,
              width: 370,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(30))),
        ),
      ),
    );
  }
}

class TextBox extends StatelessWidget {
  const TextBox({
    Key key,
    this.title,
    this.subtitle,
  }) : super(key: key);

  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 7, right: 7, top: 20),
      child: Container(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 44.0),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: disable,
                  boxShadow: [
                    BoxShadow(
                      color: disable,
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
                width: 26,
                height: 26,
              ),
            ),
            Text(
              title,
              style: GoogleFonts.roboto(
                  fontSize: 64, fontWeight: FontWeight.w800, color: disable),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  subtitle,
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    height: 2.6,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
        height: 560,
        width: 370,
      ),
    );
  }
}
