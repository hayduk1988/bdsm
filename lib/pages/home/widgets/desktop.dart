import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_web_example/animations/onHoveredButton.dart';
import 'package:flutter_web_example/constants/content.dart';
import 'package:flutter_web_example/helpers/responsive.dart';
import 'package:flutter_web_example/helpers/style.dart';
import 'package:flutter_web_example/widgets/bottom_text_widget.dart';
import 'package:flutter_web_example/widgets/button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class DesktopScreen extends StatefulWidget {
  final GlobalKey key1;
  final GlobalKey key2;
  final GlobalKey key3;
  final GlobalKey key4;
  final GlobalKey key5;
  final GlobalKey key6;

  const DesktopScreen({
    Key key,
    this.key1,
    this.key2,
    this.key5,
    this.key3,
    this.key4,
    this.key6,
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
            // height: 1200,
            key: widget.key1,
            child: Stack(
              children: [
                Container(
                  height: 1000,
                  color: Colors.black,
                  child: Image.asset(
                    "assets/images/img.png",
                    width: screenSize.width,
                    fit: BoxFit.fitHeight,
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
                            height: 450,
                          ),
                          RichText(
                            textAlign: TextAlign.center,
                              text: TextSpan(
                            children: [
                              TextSpan(
                                  text: "The token you must deserve and to which you will be bound",
                                  
                                  style: TextStyle(
                                      fontFamily: 'HumanSans',
                                      fontSize:
                                          ResponsiveWidget.isMediumScreen(
                                                  context)
                                              ? 70
                                              : 50,
                                      color: active,
                                      fontWeight: FontWeight.w500)),
                            ],
                          )),
                          SizedBox(
                            height: 40,
                          ),
                          // HoverButton(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              
              Container(
                  alignment: Alignment.center,
                  key: widget.key2,
                  constraints: BoxConstraints(maxWidth: 1440),
                  height: 875,
                  color: Colors.black,
                  child: Stack(
                    alignment: Alignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Positioned(
                        top: 10,
                        left: 280,
                        child: RotationTransition(
                          turns: new AlwaysStoppedAnimation(35 / 360),
                          child: CustomPaint(
                            painter: MyPainter(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:60.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  'This is \nThe next big step',
                                  textAlign:TextAlign.left,
                                  style: TextStyle(
                                      fontFamily: 'HumanSans',
                                      fontSize: 40,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                
                              ),
                              SizedBox(height: 40,),
                              FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  'Decentralized community token for \nthose who want to get the most \nexciting and sinful expirience',
                                  textAlign:TextAlign.left,
                                  style: TextStyle(
                                      fontFamily: 'HumanSans',
                                      fontSize: 25,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                                
                              ),
                              SizedBox(height: 40,),
                              FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Padding(
                                  padding: const EdgeInsets.only(left:.0),
                                  child: Row(
                                    children: [
                                      HoverButton(),
                                        SizedBox(width: 40,),
                                      HoverButton()
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      
                      Padding(
                        padding: const EdgeInsets.only(right:120.0),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Lottie.asset('lottie/lf30_pe3xqua5.json',
                              height: 437, width: 462),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
          Container(
            key: widget.key3,
            color: Colors.black,
            width: double.infinity,
            height: 870,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
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
                      style: TextStyle(
                          fontFamily: 'HumanSans',
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BlurrContainer(
                          image: 'images/img1.png',
                          title: 'Your masked privacy',
                          subtitle:
                              'The anonymous of all desires - the BDSM crypto token - is here to give you the freedom to explore your wildest fantasies. Whether for pleasure or power, the token will help you express your desires with complete anonymity. With this token, you can explore the world from all angles without fear of condemnation or consequences. Get ready to explore the world of pleasure, pain and power!',
                        ),
                        BlurrContainer(
                          image: 'images/img2.png',
                          title: 'Swap and Play!',
                          subtitle:
                              'The BDSM Token is the perfect way to add a naughty edge to your crypto-trading experience! Trade and exchange with other users and indulge in some delightful BDSM-style activities - all while enjoying the convenience of a secure and decentralized blockchain technology. Enjoy the pleasure of anonymous trading and unleash your wildest fantasies!',
                        ),
                        BlurrContainer(
                          title: 'Unlock Your freedom',
                          image: 'images/img3.png',
                          subtitle:
                              'The ultimate crypto token for those looking to get involved in the wild world of sins! With it convenient support community, you can connect with fellow from around the globe and share stories, tips, and advice. Plus, tokens can be used to pay for services and products within the community, making it a great way to take your experience to the next level!',
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
                  style: TextStyle(
                      fontFamily: 'HumanSans',
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
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
                            dot: true,
                            title: 'Phase 1',
                            subtitle:
                                '* Token presale \n * BDSM whitepaper \n * Website development \n * Social media Huge marketing rollout \n * Pancake Swap launch \n * Referral program.',
                          ),
                          TextBox(
                            dot: true,
                            title: 'Phase 2',
                            subtitle:
                                '* Listing on CoinGecko \n * Listing on CoinMarketCap \n * Logo on Web3 wallets \n * Merch launch \n * BDSM token new bridges, Ethereum, Polygon, Fantom \n * Contract audit \n * NFT launch Celebrity hosts and events, YouTube/social influencers',
                          ),
                          TextBox(
                            dot: true,
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
          ),
          Container(
            key: widget.key5,
            height: 814,
            color: Colors.black,
            child: Column(
              children: [
                SizedBox(
                  height: 108,
                ),
                Text(
                  'Tokenomics',
                  style: TextStyle(
                      fontFamily: 'HumanSans',
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 60.0,vertical: 50),
                                child: Text(
                                  'This cryptocurrency token is designed to be used as a medium of exchange within the community. It was first issued in 2023, where 10 million tokens will be initially released in ICO. These tokens can then be used to purchase goods and services within the BDSM community, allowing for a safe, anonymous and secure way for members to transact with each other.',
                                  style: TextStyle(
                                    fontFamily: 'HumanSans',
                                    fontSize: 25,
                                    height: 1.5,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                Stack(
                  children: [
                    Container(
                      height: 400,
                      child: Image.asset("assets/images/waves2.png",
                          width: screenSize.width, fit: BoxFit.fill),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TokenomicBox(
                                subtitlesize: 20,
                                subtitle1: 'Total suply — ',
                                subtitleRed: '1,000,000,000 ',
                                subtitle2: 'BDSM tokens',
                              ),
                              TokenomicBox(
                                subtitlesize: 20,
                                subtitle2:
                                    'Initial liquidity increase',
                                subtitleRed: '12% ',
                                subtitle1: 'Presale fundraising — ',
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              TokenomicBox(
                                subtitlesize: 20,
                                subtitle2:
                                    'For devs who also enjoy toys and leather suits(locked for 4 months by chains and ropes)',
                                subtitleRed: '7% ',
                                subtitle1: 'Dev team — ',
                              ),
                              TokenomicBox(
                                subtitlesize: 20,
                                subtitle2:
                                    ' Burning each transfer / Buy / Sell',
                                subtitleRed: '2% ',
                                subtitle1: 'Burn — ',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            key: widget.key6,
            height: 800,
            color: Colors.black,
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Text(
                  'Team',
                  style: TextStyle(
                      fontFamily: 'HumanSans',
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TeamBox(
                        imageString: '',
                        title: 'Michael',
                        subtitle: 'CEO/CTO/Developer\nA seasoned professional and the current head of development in the financial industry. He has extensive experience, having been involved in the launch of numerous fintech systems, banks, and marketplaces.',
                      ),
                      TeamBox(
                        imageString: '',
                        title: 'Pablo',
                        subtitle: 'Developer\nPablo is a dedicated developer in the financial industry, with a proven track record of successfully launching multiple fintech systems and banks.',
                      ),
                      TeamBox(
                        imageString: '',
                        title: 'Anton',
                        subtitle: 'Designer\nAnton is a talented designer who has made a significant impact in the world of design. He has launched numerous projects that are used by people on a daily basis, showcasing his innovative and user-centered approach to design.',
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Column(
            children: [
              Container(
                alignment: Alignment.center,
                // key: widget.key5,
                height: 500,
                color: Colors.black,
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Interested?',
                      style: TextStyle(
                          fontFamily: 'HumanSans',
                          fontSize: 58,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0, bottom: 40),
                      child: Center(
                        child: Text(
                          'Leave your email and we will notify you about the start of sales',
                          style: TextStyle(
                            fontFamily: 'HumanSans',
                            fontSize: 24,
                            height: 2.6,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: screenSize.width / 4,
                          right: screenSize.width / 4,
                          bottom: 150),
                      padding: EdgeInsets.only(
                          left: 24, right: 4, top: 4, bottom: 4),
                      decoration: BoxDecoration(
                          border: Border.all(color: disable),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(.1),
                                offset: Offset(0, 40),
                                blurRadius: 80)
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: screenSize.width / 4,
                            padding: EdgeInsets.only(left: 4),
                            child: TextField(
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'HumanSans',
                                fontSize: 20,
                              ),
                              decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'HumanSans',
                                    fontSize: 20,
                                  ),
                                  // icon: Icon(
                                  //   Icons.email_outlined,
                                  //   color: Colors.grey,
                                  // ),
                                  hintText: "Enter your email",
                                  border: InputBorder.none),
                            ),
                          ),
                          CustomButton(
                            text: "Notify me",
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                // bottom: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.elliptical((screenSize.width / 2), 100),
                    topRight: Radius.elliptical(screenSize.width / 2, 100),
                  ),
                  child: Container(
                    padding: EdgeInsets.only(bottom: 50),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'BDSM Token 2021 © All rights reserved',
                        style: TextStyle(
                          fontFamily: 'HumanSans',
                          fontSize: 24,
                          height: 2.6,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    height: 100,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                          disable.withOpacity(0.2),
                          disable.withOpacity(0.05),
                          disable.withOpacity(0.01)
                        ])),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class HoverButton extends StatelessWidget {
  const HoverButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnHoverButton(
      child: TextButton(
        style: ButtonStyle(
          shape:
              MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(50))),
          padding: MaterialStateProperty.all<
              EdgeInsetsGeometry>(EdgeInsets.all(40)),
          backgroundColor:
              MaterialStateProperty.all<Color>(disable),
          foregroundColor:
              MaterialStateProperty.all<Color>(
                  Colors.blue),
          overlayColor:
              MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered))
                return Colors.blue.withOpacity(0.04);
              if (states
                      .contains(MaterialState.focused) ||
                  states.contains(MaterialState.pressed))
                return Colors.blue.withOpacity(0.12);
              return null; // Defer to the widget's default.
            },
          ),
        ),
        onPressed: () {},
        child: Text(
          'Buy BDSM token',
          style: TextStyle(
              fontFamily: 'HumanSans',
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.white),
        ),
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
          filter:
              ImageFilter.blur(sigmaX: 5, sigmaY: 5, tileMode: TileMode.mirror),
          child: Container(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 296.0),
                              child: Text(
                                title,
                                style: TextStyle(
                                    fontFamily: 'HumanSans',
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30.0),
                                child: Text(
                                  subtitle,
                                  style: TextStyle(
                                    fontFamily: 'HumanSans',
                                    fontSize: 17,
                                    height: 1.5,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white.withOpacity(0.8),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 56.0),
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xffD50420).withOpacity(0.65),
                                  spreadRadius: 5,
                                  blurRadius: 60,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Image.asset(
                              image,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),     
                      ),
                    ],
                  ),
                ],
              ),
              height: 650,
              width: 390,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.02),
                  borderRadius: BorderRadius.circular(32))),
        ),
      ),
    );
  }
}

class TeamBox extends StatelessWidget {
  const TeamBox(
      {Key key, this.title, this.imageString, this.subtitle, this.subtitlesize})
      : super(key: key);

  final String title;
  final String imageString;
  final String subtitle;
  final int subtitlesize;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 7, right: 7, top: 0),
      child: Container(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Container(
                width: 150,
                height: 200,
                child: Image.asset(
                  imageString.isEmpty
                      ? "images/teamImage.png"
                      : "images/$imageString.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            title != ''
                ? Text(
                    title,
                    style: TextStyle(
                        fontFamily: 'HumanSans',
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: active),
                  )
                : Container(),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  subtitle,
                  style: TextStyle(
                    fontFamily: 'HumanSans',
                    fontSize: subtitlesize ?? 14,
                    height: 2.6,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
        height: 600,
        width: 370,
      ),
    );
  }
}

class TextBox extends StatelessWidget {
  const TextBox(
      {Key key, this.title, this.dot, this.subtitle, this.subtitlesize})
      : super(key: key);

  final String title;
  final bool dot;
  final String subtitle;
  final int subtitlesize;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 7, right: 7, top: 18),
      child: Container(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            dot == true
                ? Padding(
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
                  )
                : Container(),
            title != ''
                ? Text(
                    title,
                    style: TextStyle(
                        fontFamily: 'HumanSans',
                        fontSize: 50,
                        fontWeight: FontWeight.w600,
                        color: disable),
                  )
                : Container(),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Padding(
                padding: const EdgeInsets.only(left: 90.0),
                child: Text(
                  subtitle,
                  
                  style: TextStyle(
                    fontFamily: 'HumanSans',
                    
                    fontSize: subtitlesize ?? 16,
                    height: 2.6,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
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

class TokenomicBox extends StatelessWidget {
  const TokenomicBox(
      {Key key,
      this.subtitle1,
      this.subtitlesize,
      this.subtitleRed,
      this.subtitle2})
      : super(key: key);

  final String subtitle1;
  final String subtitleRed;
  final String subtitle2;
  final int subtitlesize;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: subtitle1,
                  children: <TextSpan>[
                    TextSpan(
                        text: subtitleRed, style: TextStyle(color: disable)),
                    TextSpan(
                        text: subtitle2,
                        style: TextStyle(fontWeight: FontWeight.normal)),
                  ],
                  style: TextStyle(
                    fontFamily: 'HumanSans',
                    fontSize: subtitlesize ?? 16,
                    height: 2,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      height: 100,
      width: 561,
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTRB(20, 100, 500, 800);
    final paint = Paint()
      ..color = Color(0xffC8000F).withOpacity(0.16)
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, 400)
      ..style = PaintingStyle.fill;

    canvas.drawOval(rect, paint);
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return false;
  }
}
