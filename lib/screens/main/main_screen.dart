import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard_002/constants.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SideMenu(),
            ),
            Expanded(flex: 5, child: Container())
          ],
        ),
      ),
    );
  }
}

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      color: Colors.white,
      child: ListView(
        children: [
          Container(
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  backgroundColor: Color(0xff1A75FF),
                  padding: EdgeInsets.all(defaultPadding),
                  minimumSize: Size(50, 30),
                  alignment: Alignment.center),
              child: Text(
                'Purchase now',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.none,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(
              height: 2,
              color: Color(0xfF6F8FB),
            ),
          ),
          SideMenuTile(model: overViewMenu),
          SideMenuTile(model: dashboardsMenu),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 16, 0, 8),
            child: Text(
              "Applications",
              style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Color(0xffCCCEDD)),
            ),
          ),
          SideMenuTile(model: applicationsMenu),
          SideMenuTile(model: dashboard2Menu),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 16, 0, 8),
            child: Text(
              "Foundation",
              style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Color(0xffCCCEDD)),
            ),
          ),
          ListTile(
            onTap: () {},
            horizontalTitleGap: 0.0,
            leading: SvgPicture.asset(
              "assets/icons/menu_airline_seat_flat_angled.svg",
              height: 16,
            ),
            title: Text(
              "Elements",
              style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Color(0xff242E6F)),
            ),
          ),
          ListTile(
            onTap: () {},
            horizontalTitleGap: 0.0,
            leading: SvgPicture.asset(
              "assets/icons/menu_airline_seat_flat_angled.svg",
              height: 16,
            ),
            title: Text(
              "Widgets",
              style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Color(0xff242E6F)),
            ),
          ),
          ListTile(
            onTap: () {},
            horizontalTitleGap: 0.0,
            leading: SvgPicture.asset(
              "assets/icons/menu_airline_seat_flat_angled.svg",
              height: 16,
            ),
            title: Text(
              "Plugins",
              style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Color(0xff242E6F)),
            ),
          ),
        ],
      ),
    );
  }
}

var overViewMenu = SideMenuTileModel(
  title: "Overview",
  children: [""],
  svgSrc: "assets/icons/menu_blocking.svg",
);
var dashboardsMenu = SideMenuTileModel(
  title: "Dashboards",
  children: [
    "",
    "Commerce",
    "Finance",
    "Analytics",
    "Crypto",
    "Helpdesk",
    "Monitoring",
    "Tasks",
    "Fitness",
    "Learning",
    "Healthcare",
  ],
  svgSrc: "assets/icons/menu_dashboards.svg",
);

var applicationsMenu = SideMenuTileModel(
  title: "Application",
  children: [""],
  svgSrc: "assets/icons/menu_airline_seat_flat_angled.svg",
);

var dashboard2Menu = SideMenuTileModel(
  title: "Dashboard",
  children: [""],
  svgSrc: "assets/icons/menu_airline_seat_flat_angled.svg",
);

class SideMenuTileModel {
  final String title;
  final List<String> children;
  final String svgSrc;

  SideMenuTileModel({required this.title, required this.children, required this.svgSrc});
}

class SideMenuTile extends StatelessWidget {
  const SideMenuTile({
    Key? key,
    required this.model,
  }) : super(key: key);

  final SideMenuTileModel model;

  @override
  Widget build(BuildContext context) {
    return ListTileTheme(
      horizontalTitleGap: 0.0,
      child: ExpansionTile(
        initiallyExpanded: true,
        collapsedTextColor: Color(0xff242E6F),
        leading: SvgPicture.asset(
          model.svgSrc,
          height: 16,
        ),
        title: Text(
          model.title,
          style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Color(0xff242E6F)),
        ),
        trailing: Icon(
          Icons.keyboard_arrow_down,
          color: Color(0xff242E6F),
        ),
        children: buildChildren(model.children),
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }

  buildChildren(List<String> i) {
    List<Widget> result = [];
    i.forEach((element) {
      if (element != "") {
        result.add(TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            minimumSize: Size.zero,
            padding: EdgeInsets.fromLTRB(8, 11, 4, 11),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Text(
            element,
            style: TextStyle(color: Color(0xff6E759F)),
            textAlign: TextAlign.left,
          ),
        ));
      }
    });
    return result;
  }
}
