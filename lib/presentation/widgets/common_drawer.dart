import 'package:cv_creator/config/routes/app_router.gr.dart';
import 'package:cv_creator/presentation/widgets/container_gradient.dart';
import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class CommonDrawer extends StatefulWidget {
  CommonDrawer({Key? key}) : super(key: key);
  @override
  _CommonDrawerState createState() => _CommonDrawerState();
}

class _CommonDrawerState extends State<CommonDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: containerGradient(
          false,
          Container(
            //color:Color.fromRGBO(255, 255, 255, 0.8),
            child: ListView(
              children: [
                /* Container(
                  //color:Color.fromRGBO(255, 255, 255, 1),
                  child: DrawerHeader(
                    margin: EdgeInsets.all(0),
                    child: Center(
                      child: logo(context, 0.3, 0.15),
                    ),
                  ),
                ), */
                menuListTile(
                  context,
                  "Inicio",
                  const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14.0,
                      color: Colors.white),
                  const Icon(Icons.inventory, color: Colors.white),
                  HomeRoute().path,
                )
              ],
            ),
          )),
    );
  }
}

Widget menuListTile(BuildContext context, String text, TextStyle textStyle,
    Icon icon, String route) {
  return ListTile(
    title: Text(
      text,
      style: textStyle,
    ),
    leading: (icon != null) ? icon : null,
    hoverColor: Color.fromRGBO(128, 230, 255, 0.6),
    onTap: () {
      var isNewRouteSameAsCurrent = false;
      Navigator.popUntil(context, (currentRoute) {
        if (currentRoute.settings.name == route) {
          isNewRouteSameAsCurrent = true;
        }
        return true;
      });

      if (!isNewRouteSameAsCurrent) {
        Navigator.pop(context);
        Navigator.pushNamed(context, route);
      }
    },
  );
}
