import 'package:flutter/material.dart';
import 'package:responsive_dashboard_002/constants.dart';

import 'components/header.dart';
import 'components/sub_header.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header(),
          SubHeader(),
          Container(
            child: Row(
              children: [Column()],
            ),
          )
        ],
      ),
    ));
  }
}
