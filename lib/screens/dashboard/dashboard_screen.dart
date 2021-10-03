import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard_002/constants.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'components/account_balance.dart';
import 'components/chart.dart';
import 'components/header.dart';
import 'components/recent_orders.dart';
import 'components/sub_header.dart';
import 'components/wallet.dart';
import 'components/wallet_card.dart';
import 'components/watchlist_1.dart';
import 'components/watchlist_2.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    var dts = DTS();
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header(),
          SubHeader(),
          AccountBalance(),
          Wallet(),
          RecentOrders(dts: dts),
          WatchList1(),
          WatchList2(),
          SizedBox(height: 80)
        ],
      ),
    ));
  }
}
