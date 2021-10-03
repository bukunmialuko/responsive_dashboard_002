import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../constants.dart';

class WatchList2 extends StatefulWidget {
  const WatchList2({Key? key}) : super(key: key);

  @override
  _WatchList1State createState() => _WatchList1State();
}

class _WatchList1State extends State<WatchList2> {
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
                    child: Padding(
                      padding: EdgeInsets.all(defaultPadding * 0.75),
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
                  Expanded(flex: 3, child: _buildTypesSplineChart()),
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
      series: _getSplineTypesSeries(),
      tooltipBehavior: _tooltipBehavior,
    );
  }

  List<SplineSeries<_ChartData, num>> _getSplineTypesSeries() {
    final List<_ChartData> chartData = <_ChartData>[
      _ChartData(2011, 0.05),
      _ChartData(2011.25, 0),
      _ChartData(2011.50, 0.03),
      _ChartData(2011.75, 0),
      _ChartData(2012, 0.04),
      _ChartData(2012.25, 0.02),
      _ChartData(2012.50, -0.01),
      _ChartData(2012.75, 0.01),
      _ChartData(2013, -0.08),
      _ChartData(2013.25, -0.02),
      _ChartData(2013.50, 0.03),
      _ChartData(2013.75, 0.05),
      _ChartData(2014, 0.04),
      _ChartData(2014.25, 0.02),
      _ChartData(2014.50, 0.04),
      _ChartData(2014.75, 0),
      _ChartData(2015, 0.02),
      _ChartData(2015.25, 0.10),
      _ChartData(2015.50, 0.09),
      _ChartData(2015.75, 0.11),
      _ChartData(2016, 0.12),
    ];
    return <SplineSeries<_ChartData, num>>[
      SplineSeries<_ChartData, num>(

          /// To set the spline type here.
          splineType: _spline,
          dataSource: chartData,
          xValueMapper: (_ChartData sales, _) => sales.x,
          yValueMapper: (_ChartData sales, _) => sales.y,
          width: 2)
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

class _ChartData {
  _ChartData(this.x, this.y);
  final double x;
  final double y;
}
