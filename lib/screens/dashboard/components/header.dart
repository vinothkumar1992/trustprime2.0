import 'package:admin/controllers/MenuController.dart';
import 'package:admin/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      // width: 100,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.lightBlueAccent, width: 2),
        ),
        // borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          if (!Responsive.isDesktop(context))
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: context.read<MenuController>().controlMenu,
            ),
          if (!Responsive.isMobile(context))
            Image.asset(
              'assets/images/kiwitech.png',
              height: 70,
              // style: Theme.of(context).textTheme.headline6,
            ),
          Spacer(flex: Responsive.isDesktop(context) ? 10 : 1),
          Image.asset(
            'assets/images/trust.png',
            height: 70,
            // style: Theme.of(context).textTheme.headline6,
          ),
          if (!Responsive.isMobile(context))
            Spacer(flex: Responsive.isDesktop(context) ? 4 : 1),
          Expanded(
            child: Icon(
              Icons.notifications,
              color: Colors.lightBlue,
              size: 25,
            ),
          ),
          Container(
            width: 1,
            height: 40,
            color: Colors.grey,
          ),
          Expanded(
            child: Icon(
              Icons.email,
              color: Colors.lightBlue,
              size: 25,
            ),
          ),
          Container(
            width: 1,
            height: 40,
            color: Colors.grey,
          ),
          ChangeLanguage(),
          Container(
            width: 1,
            height: 40,
            color: Colors.grey,
          ),
          ProfileCard()
        ],
      ),
    );
  }
}

class ChangeLanguage extends StatelessWidget {
  const ChangeLanguage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: defaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
      ),
      // decoration: BoxDecoration(
      //   color: secondaryColor,
      //   borderRadius: const BorderRadius.all(Radius.circular(10)),
      //   border: Border.all(color: Colors.white10),
      // ),
      child: Row(
        children: [
          if (!Responsive.isMobile(context))
            Container(
              // width: 190.0,
              // height: 190.0,
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                "assets/images/profile_pic.png",
                height: 38,
                width: 38,
              ),
            ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
            child: Text(
              "Eng",
              style: TextStyle(color: Colors.lightBlue),
            ),
          ),
          Icon(
            Icons.keyboard_arrow_down_sharp,
            color: Colors.lightBlue,
          ),
        ],
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: defaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
      ),
      // decoration: BoxDecoration(
      //   color: secondaryColor,
      //   borderRadius: const BorderRadius.all(Radius.circular(10)),
      //   border: Border.all(color: Colors.white10),
      // ),
      child: Row(
        children: [
          if (!Responsive.isMobile(context))
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
              child: Text(
                "VinothKumar",
                style: TextStyle(color: Colors.lightBlue),
              ),
            ),
          Container(
            // width: 190.0,
            // height: 190.0,
            decoration: new BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              "assets/images/profile_pic.png",
              height: 38,
            ),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            color: Colors.lightBlue,
          ),
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search",
        fillColor: secondaryColor,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        suffixIcon: InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(defaultPadding * 0.75),
            margin: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: SvgPicture.asset("assets/icons/Search.svg"),
          ),
        ),
      ),
    );
  }
}
