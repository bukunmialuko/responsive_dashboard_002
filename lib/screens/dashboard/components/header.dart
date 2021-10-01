import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 75,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            "assets/images/logo.svg",
            // color: Colors.white54,
            height: 40,
            width: 100,
          ),
          SizedBox(
            width: defaultPadding,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Elements",
                  style: TextStyle(color: Colors.black),
                ),
                Container(
                  height: 4,
                  width: 28,
                  decoration: BoxDecoration(
                      color: Colors.blue, borderRadius: BorderRadius.all(Radius.circular(8))),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Widgets",
                  style: TextStyle(color: Colors.black),
                ),
                Container(
                  height: 4,
                  width: 28,
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(8))),
                )
              ],
            ),
          ),
          SizedBox(
            width: 100,
            child: ExpansionTile(
              initiallyExpanded: true,
              collapsedTextColor: Color(0xff242E6F),
              title: Text(
                "Help",
                style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Color(0xff242E6F)),
              ),
              trailing: Icon(
                Icons.keyboard_arrow_down,
                color: Color(0xff242E6F),
              ),
              children: [],
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
            ),
          ),
          Spacer(),
          Row(
            children: [
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
                margin: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
                child: Icon(
                  Icons.search,
                  color: Color(0xff1A75FF),
                ),
              ),
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                    color: Color(0xffF6F8FB), borderRadius: BorderRadius.all(Radius.circular(10))),
                margin: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
                child: Icon(
                  Icons.notifications_none,
                  color: Color(0xff1A75FF),
                ),
              ),
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
                margin: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
                child: Icon(
                  Icons.settings,
                  color: Color(0xff1A75FF),
                ),
              ),
              Container(
                color: Colors.green,
                margin: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
                width: 45,
                height: 45,
                child: Image.asset(
                  "assets/images/profile_pic.png",
                  height: 44,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Randy S.",
                    style: TextStyle(color: Color(0xff000C57), fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "Lead Developer",
                    style: TextStyle(color: Color(0xff6E759F), fontWeight: FontWeight.w400),
                  )
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.blue,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
