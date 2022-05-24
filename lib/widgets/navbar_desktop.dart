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
  final GlobalKey key6;

  const NavBar(
      {Key key,
      this.key1,
      this.key5,
      this.key2,
      this.key3,
      this.key4,
      this.key6})
      : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final List _isHovering = [false, false, false, false, false, false];

  Future scrollToItem(GlobalKey kkey) async {
    final context = kkey.currentContext;
    await Scrollable.ensureVisible(context,
        duration: Duration(milliseconds: 300));
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: screenSize.width / 8),
                        TabBarButton(
                          scrollKey: widget.key1,
                          label: 'Buy',
                          isHovering: _isHovering,
                          index: 0,
                        ),
                        TabBarButton(
                          scrollKey: widget.key2,
                          label: 'Ecosystem',
                          isHovering: _isHovering,
                          index: 1,
                        ),
                        TabBarButton(
                          scrollKey: widget.key3,
                          label: 'About',
                          isHovering: _isHovering,
                          index: 2,
                        ),
                        TabBarButton(
                          scrollKey: widget.key4,
                          label: 'RoadMap',
                          isHovering: _isHovering,
                          index: 3,
                        ),
                        TabBarButton(
                          scrollKey: widget.key5,
                          label: 'Tokenomics',
                          isHovering: _isHovering,
                          index: 4,
                        ),
                        TabBarButton(
                          scrollKey: widget.key6,
                          label: 'Team',
                          isHovering: _isHovering,
                          index: 5,
                        )
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

class TabBarButton extends StatefulWidget {
  final GlobalKey scrollKey;
  final String label;

  final int index;
  final List isHovering;

  const TabBarButton({this.scrollKey, this.index, this.isHovering, this.label});

  @override
  State<TabBarButton> createState() => _TabBarButtonState();
}

class _TabBarButtonState extends State<TabBarButton> {
  Future scrollToItem(GlobalKey kkey) async {
    final context = kkey.currentContext;
    await Scrollable.ensureVisible(context,
        duration: Duration(milliseconds: 300));
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(width: screenSize.width / 35),
        InkWell(
          onHover: (value) {
            setState(() {
              value
                  ? widget.isHovering[widget.index] = true
                  : widget.isHovering[widget.index] = false;
            });
          },
          hoverColor: Colors.transparent,
          onTap: () {
            scrollToItem(widget.scrollKey);
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 12,
              ),
              AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 500),
                style: widget.isHovering[widget.index]
                    ? TextStyle(
                        fontFamily: 'HumanSans',
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: active,
                      )
                    : TextStyle(
                        fontFamily: 'HumanSans',
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: disable,
                      ),
                child: Text(
                  widget.label,
                ),
              ),
              SizedBox(height: 5),
              AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                decoration: BoxDecoration(
                    color: widget.isHovering[widget.index]
                        ? active
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(20)),
                height: 7,
                width: 7,
              )
            ],
          ),
        ),
      ],
    );
  }
}
