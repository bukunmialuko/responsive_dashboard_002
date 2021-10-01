import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard_002/screens/main/model/side_menu_tile_model.dart';

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
