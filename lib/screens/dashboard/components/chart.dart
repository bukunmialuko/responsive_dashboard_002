import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Chart extends StatelessWidget {
  const Chart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(PieChartData(
              sectionsSpace: 8,
              // centerSpaceRadius: 70,
              // startDegreeOffset: -90,
              sections: pieChartSectionData)),
          // Positioned.fill(
          //     child: Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     SizedBox(
          //       height: defaultPadding,
          //     ),
          //     Text(
          //       "29.1",
          //       style: Theme.of(context)
          //           .textTheme
          //           .headline4!
          //           .copyWith(color: Colors.white, fontWeight: FontWeight.w600, height: 0.5),
          //     ),
          //     Text("of 120GB")
          //   ],
          // ))
        ],
      ),
    );
  }
}

var pieChartSectionData = [
  PieChartSectionData(
    color: Color(0xffffcf26),
    value: 20,
    showTitle: false,
    radius: 30,
  ),
  PieChartSectionData(
    color: Color(0xffee2727),
    value: 20,
    showTitle: false,
    radius: 30,
  ),
  PieChartSectionData(
    color: Colors.green,
    value: 40,
    showTitle: false,
    radius: 22,
  ),
  PieChartSectionData(
    color: Colors.blue,
    value: 20,
    showTitle: false,
    radius: 30,
  ),
];
