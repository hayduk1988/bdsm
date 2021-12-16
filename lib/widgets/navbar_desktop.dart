import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_web_example/helpers/style.dart';
import 'package:flutter_web_example/pages/home/widgets/desktop.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_web_example/pages/home/widgets/desktop.dart';

class NavBar extends StatefulWidget {
  final GlobalKey key1;
  final GlobalKey key2;
  final GlobalKey key3;
  final GlobalKey key4;
  final GlobalKey key5;

  const NavBar({Key key, this.key1, this.key5, this.key2, this.key3, this.key4})
      : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final List _isHovering = [false, false, false, false, false];

  Future scrollToItem(GlobalKey kkey) async {
    final context = kkey.currentContext;
    await Scrollable.ensureVisible(context,
        duration: Duration(milliseconds: 500));
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return PreferredSize(
      preferredSize: Size(screenSize.width, 1000),
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5,
            sigmaY: 5,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: screenSize.width / 8,
                  ),
                  SvgPicture.asset(
                    'assets/svg/logo1.svg',
                    height: 37,
                    width: 37,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  SvgPicture.asset(
                    'assets/svg/logoText.svg',
                    height: 37,
                    width: 37,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(width: screenSize.width / 8),
                        InkWell(
                          onHover: (value) {
                            setState(() {
                              value
                                  ? _isHovering[0] = true
                                  : _isHovering[0] = false;
                            });
                          },
                          hoverColor: Colors.transparent,
                          onTap: () {
                            scrollToItem(widget.key1);
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'block1',
                                style: TextStyle(
                                  fontFamily: 'HumanSans',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: _isHovering[0] ? active : disable,
                                ),
                              ),
                              SizedBox(height: 5),
                              Visibility(
                                maintainAnimation: true,
                                maintainState: true,
                                maintainSize: true,
                                visible: _isHovering[0],
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: active,
                                      borderRadius: BorderRadius.circular(20)),
                                  height: 7,
                                  width: 7,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: screenSize.width / 20),
                        InkWell(
                          onHover: (value) {
                            setState(() {
                              value
                                  ? _isHovering[1] = true
                                  : _isHovering[1] = false;
                            });
                          },
                          hoverColor: Colors.transparent,
                          onTap: () {
                            scrollToItem(widget.key2);
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'block2',
                                style: TextStyle(
                                  fontFamily: 'HumanSans',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: _isHovering[1] ? active : disable,
                                ),
                              ),
                              SizedBox(height: 5),
                              Visibility(
                                maintainAnimation: true,
                                maintainState: true,
                                maintainSize: true,
                                visible: _isHovering[1],
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: active,
                                      borderRadius: BorderRadius.circular(20)),
                                  height: 7,
                                  width: 7,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: screenSize.width / 20),
                        InkWell(
                          onHover: (value) {
                            setState(() {
                              value
                                  ? _isHovering[2] = true
                                  : _isHovering[2] = false;
                            });
                          },
                          hoverColor: Colors.transparent,
                          onTap: () {
                            scrollToItem(widget.key3);
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'block3',
                                style: TextStyle(
                                  fontFamily: 'HumanSans',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: _isHovering[2] ? active : disable,
                                ),
                              ),
                              SizedBox(height: 5),
                              Visibility(
                                maintainAnimation: true,
                                maintainState: true,
                                maintainSize: true,
                                visible: _isHovering[2],
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: active,
                                      borderRadius: BorderRadius.circular(20)),
                                  height: 7,
                                  width: 7,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: screenSize.width / 20),
                        InkWell(
                          onHover: (value) {
                            setState(() {
                              value
                                  ? _isHovering[3] = true
                                  : _isHovering[3] = false;
                            });
                          },
                          hoverColor: Colors.transparent,
                          onTap: () {
                            scrollToItem(widget.key4);
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'block4',
                                style: TextStyle(
                                  fontFamily: 'HumanSans',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: _isHovering[3] ? active : disable,
                                ),
                              ),
                              SizedBox(height: 5),
                              Visibility(
                                maintainAnimation: true,
                                maintainState: true,
                                maintainSize: true,
                                visible: _isHovering[3],
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: active,
                                      borderRadius: BorderRadius.circular(20)),
                                  height: 7,
                                  width: 7,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: screenSize.width / 20),
                        InkWell(
                          onHover: (value) {
                            setState(() {
                              value
                                  ? _isHovering[4] = true
                                  : _isHovering[4] = false;
                            });
                          },
                          hoverColor: Colors.transparent,
                          onTap: () {
                            scrollToItem(widget.key5);
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'block5',
                                style: TextStyle(
                                  fontFamily: 'HumanSans',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: _isHovering[4] ? active : disable,
                                ),
                              ),
                              SizedBox(height: 5),
                              Visibility(
                                maintainAnimation: true,
                                maintainState: true,
                                maintainSize: true,
                                visible: _isHovering[4],
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: active,
                                      borderRadius: BorderRadius.circular(20)),
                                  height: 7,
                                  width: 7,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: screenSize.width / 8),
                      ],
                    ),
                  ),
                  // CustomButton(
                  //   text: "Register",
                  // ),
                  // SizedBox(width: screenSize.width / 40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
