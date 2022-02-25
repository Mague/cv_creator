import 'package:cv_creator/config/themes/globals.dart';
import 'package:cv_creator/config/themes/uidata.dart';
import 'package:cv_creator/presentation/widgets/common_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CommonScaffold extends StatelessWidget {
  const CommonScaffold({
    Key? key,
    this.appTitle,
    this.bodyData,
    this.showFAB,
    this.showDrawer,
    this.backgroundColor,
    this.actionFirstIcon,
    this.scaffoldKey,
    this.showBottomNav = false,
    this.bottomNav,
    this.floatingIcon,
    this.floatingLocation = FloatingActionButtonLocation.endFloat,
    this.centerDocked,
    this.elevation,
    this.fncFAB,
    this.keyFAB = null,
    this.actions,
    this.resizeToAvoidBottomInset = false,
  }) : super(key: key);
  final appTitle;
  final Widget? bodyData;
  final showFAB;
  final showDrawer;
  final backgroundColor;
  final actionFirstIcon;
  final scaffoldKey;
  final showBottomNav;
  final BottomAppBar? bottomNav;
  final floatingIcon;
  final FloatingActionButtonLocation floatingLocation;
  final centerDocked;
  final elevation;
  final fncFAB;
  final keyFAB;
  final List<Widget>? actions;
  final resizeToAvoidBottomInset;
  @override
  Widget build(BuildContext context) {
    SystemChrome.restoreSystemUIOverlays();
    List<Widget> actionsList = [
      IconButton(
        icon: Icon(Icons.bug_report_outlined),
        onPressed: () {
          
        },
      )
    ];
    if (actions != null && actions!.isNotEmpty) {
      actionsList.addAll(actions!);
    }
    var appBar = Scaffold(
      key: scaffoldKey != null ? scaffoldKey : null,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              /* gradient: LinearGradient(
                colors: [
                  const Color.fromRGBO(128, 230, 255, 1),
                  const Color.fromRGBO(0, 204, 255, 1),
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp
			), */
              gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: true
                ? drawerColorDark
                : drawerColorLight,
          )),
        ),
        title: Text(appTitle != null ? appTitle : "Inventario"),
        actions: actionsList,
      ),
      backgroundColor: bgColorGrey,
      /*drawer: Theme(
        data:Theme.of(context).copyWith(
          canvasColor: Colors.transparent,
        ),
        child:showDrawer ? CommonDrawer() : null
      ),*/
      drawer: showDrawer ? CommonDrawer() : null,
      body: bodyData,
      bottomNavigationBar: showBottomNav ? bottomNav : null,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      floatingActionButtonLocation: floatingLocation,
      floatingActionButton: showFAB
          ? FloatingActionButton(
              child: Icon(floatingIcon),
              key: keyFAB != null ? keyFAB : null,
              backgroundColor: (true)
                  ? turquoiceOne
                  : cyanOne,
              foregroundColor: Colors.white,
              onPressed: this.fncFAB,
            )
          : null,
    );
    return appBar;
  }
  Widget sideBar(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: CommonDrawer(),
        ),
        Expanded(
          flex: 5,
          //child: DashboardScreen(),
          child: MaterialApp(
            title: 'IUNCI home',
            home: bodyData,
          ),
        )
      ],
    )));
  }
}