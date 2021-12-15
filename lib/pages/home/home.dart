import 'package:backdrop/backdrop.dart';
import 'package:backdrop/scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_web_example/helpers/responsive.dart';
import 'package:flutter_web_example/helpers/style.dart';
import 'package:flutter_web_example/pages/home/widgets/desktop.dart';
import 'package:flutter_web_example/pages/home/widgets/mobile.dart';
import 'package:flutter_web_example/widgets/navbar_desktop.dart';
import 'package:flutter_web_example/widgets/drawer.dart';
import 'package:flutter_web_example/widgets/mobile_navbar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final key1 = GlobalKey();
  final key2 = GlobalKey();
  final key3 = GlobalKey();
  final key4 = GlobalKey();
  AnimationController controller;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return ResponsiveWidget.isSmallScreen(context)
        ? BackdropScaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(80.0),
              child: BackdropAppBar(
                backgroundColor: Colors.black,
                centerTitle: false,
                automaticallyImplyLeading: false,
                title: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
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
                      ],
                    ),
                  ],
                ),
                actions: <Widget>[
                  Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          BackdropToggleButton(
                            icon: AnimatedIcons.list_view,
                          ),
                          SizedBox(
                            width: 10,
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            backLayer: Center(
              child: Text("Back Layer"),
            ),
            frontLayer: MobileScreen())
        : Scaffold(
            extendBodyBehindAppBar: true,
            key: scaffoldKey,
            appBar: ResponsiveWidget.isSmallScreen(context)
                ? mobileTopBar(scaffoldKey)
                : PreferredSize(
                    preferredSize: Size(screenSize.width, 1000),
                    child: NavBar(
                      key1: key1,
                      key2: key2,
                      key3: key3,
                      key4: key4,
                    ),
                  ),
            drawer: MobileMenu(),
            body: ResponsiveWidget(
              largeScreen: DesktopScreen(
                key1: key1,
                key2: key2,
                key3: key3,
                key4: key4,
              ),
              smallScreen: MobileScreen(),
            ));
  }
}
