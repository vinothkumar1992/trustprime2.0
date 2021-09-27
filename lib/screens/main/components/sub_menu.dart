import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SubMenu extends StatelessWidget {
  const SubMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey[500],
      width: 200,
      child: Drawer(
        child: ListView(
          // padding: EdgeInsets.only(top: 160),
          children: ListTile.divideTiles(context: context, tiles: [
            DrawerListTile(
              title: "Dashboard 1",
              svgSrc: "assets/icons/menu_dashbord.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Dashboard 1",
              svgSrc: "assets/icons/menu_tran.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Dashboard 1",
              svgSrc: "assets/icons/menu_task.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Dashboard 1",
              svgSrc: "assets/icons/menu_doc.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Dashboard 1",
              svgSrc: "assets/icons/menu_store.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Dashboard 1",
              svgSrc: "assets/icons/menu_notification.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Dashboard 1",
              svgSrc: "assets/icons/menu_profile.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Dashboard 1",
              svgSrc: "assets/icons/menu_setting.svg",
              press: () {},
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 40,
              ),
              child: DrawerListTile(
                title: "Dashboard 1",
                svgSrc: "assets/icons/menu_setting.svg",
                press: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
              ),
              child: DrawerListTile(
                title: "Dashboard ",
                svgSrc: "assets/icons/menu_setting.svg",
                press: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
              ),
              child: DrawerListTile(
                title: "Dashboard 1",
                svgSrc: "assets/icons/menu_setting.svg",
                press: () {},
              ),
            )
          ]).toList(),
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // tileColor: Color(0xff2a384b),
      // selectedTileColor: Colors.white,
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
        height: 18,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.blueGrey[100], fontSize: 12),
      ),
    );
  }
}
