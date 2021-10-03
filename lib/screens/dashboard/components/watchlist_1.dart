import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../constants.dart';

class WatchList1 extends StatefulWidget {
  const WatchList1({Key? key}) : super(key: key);

  @override
  _WatchList1State createState() => _WatchList1State();
}

class _WatchList1State extends State<WatchList1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Watch List",
              style: Theme.of(context).textTheme.headline6!.copyWith(color: Color(0xff223354)),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xff1A75FF),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(6), bottomLeft: Radius.circular(6))),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.apps,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(6), bottomRight: Radius.circular(6))),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.table_rows,
                      color: Color(0xff1A75FF),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        GridView.builder(
          shrinkWrap: true,
          itemCount: 4,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, crossAxisSpacing: defaultPadding, childAspectRatio: 1),
          itemBuilder: (context, index) => ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/icons/btc.png",
                                height: 44,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Bitcoin',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(color: Color(0xff223354)),
                                  ),
                                  Text(
                                    'BTC',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(color: Color(0xff223354)),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text("\$56,475.00",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(color: Color(0xff223354))),
                              Text("+ 12.5%",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(color: Colors.green))
                            ],
                          ),
                          Row(
                            children: [
                              TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                    backgroundColor: Color(0xffECFBE6),
                                    padding: EdgeInsets.fromLTRB(8, 4, 8, 4),
                                    minimumSize: Size(30, 30),
                                    alignment: Alignment.center),
                                child: Text(
                                  '+\$500',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.none,
                                    fontSize: 10,
                                    color: Color(0xff3BB900),
                                  ),
                                ),
                              ),
                              SizedBox(width: 8),
                              Text("last 24h",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(color: Colors.green, fontSize: 8))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(flex: 3, child: Container(child: _buildTypesSplineChart())),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  SfCartesianChart _buildTypesSplineChart() {
    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      margin: EdgeInsets.zero,
      primaryXAxis: CategoryAxis(isVisible: false, labelPlacement: LabelPlacement.onTicks),
      primaryYAxis: NumericAxis(
        isVisible: false,
      ),
      series: _getSplineAreaSeries(),
      tooltipBehavior: _tooltipBehavior,
    );
  }

  List<ChartSeries<_SplineAreaData, double>> _getSplineAreaSeries() {
    final List<_SplineAreaData> chartData = <_SplineAreaData>[
      _SplineAreaData(2010, 30.53, 3.3),
      _SplineAreaData(2011, 9.5, 5.4),
      _SplineAreaData(2012, 10, 2.65),
      _SplineAreaData(2013, 9.4, 2.62),
      _SplineAreaData(2014, 5.8, 1.99),
      _SplineAreaData(2015, 4.9, 1.44),
      _SplineAreaData(2016, 4.5, 2),
      _SplineAreaData(2017, 3.6, 1.56),
      _SplineAreaData(2018, 3.43, 2.1),
    ];
    return <ChartSeries<_SplineAreaData, double>>[
      SplineAreaSeries<_SplineAreaData, double>(
        dataSource: chartData,
        color: const Color.fromRGBO(75, 135, 185, 0.6),
        borderColor: const Color.fromRGBO(75, 135, 185, 1),
        borderWidth: 1,
        name: 'India',
        xValueMapper: (_SplineAreaData sales, _) => sales.year,
        yValueMapper: (_SplineAreaData sales, _) => sales.y1,
      ),
    ];
  }

  late SplineType _spline;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _spline = SplineType.natural;
    _tooltipBehavior = TooltipBehavior(enable: true, header: '', canShowMarker: false);
    super.initState();
  }
}

class _SplineAreaData {
  _SplineAreaData(this.year, this.y1, this.y2);
  final double year;
  final double y1;
  final double y2;
}
