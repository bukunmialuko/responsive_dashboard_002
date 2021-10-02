import 'package:flutter/material.dart';
import 'package:responsive_dashboard_002/constants.dart';

import 'chart.dart';

class AccountBalance extends StatelessWidget {
  const AccountBalance({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Account Balance",
                    style:
                        Theme.of(context).textTheme.bodyText2!.copyWith(color: Color(0xff223354)),
                  ),
                  SizedBox(height: 31),
                  Text(
                    '\$43,545.00',
                    style:
                        Theme.of(context).textTheme.bodyText2!.copyWith(color: Color(0xff223354)),
                  ),
                  Text(
                    '1.0058493432 BTC',
                    style:
                        Theme.of(context).textTheme.bodyText2!.copyWith(color: Color(0xff223354)),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: Color(0xff44D600),
                            borderRadius: BorderRadius.all(Radius.circular(6))),
                        child: Icon(Icons.arrow_upward),
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '\$3,594.23',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(color: Color(0xff223354)),
                          ),
                          Text(
                            'this month',
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
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              // primary: Colors.white,
                              backgroundColor: Colors.white,
                              onSurface: Colors.transparent,
                              side: BorderSide(color: Color(0xff1A75FF), width: 1),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Send",
                              style: TextStyle(color: Color(0xff1A75FF)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                          child: TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Color(0xff1A75FF),
                                side: BorderSide(color: Color(0xff1A75FF), width: 1)),
                            onPressed: () {},
                            child: Text(
                              "Restore",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
          VerticalDivider(
            thickness: 1,
            color: Color(0xff223354),
          ),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(flex: 1, child: Chart()),
                Expanded(
                  flex: 2,
                  child: Container(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 4,
                      itemBuilder: (c, i) => ListTile(
                        contentPadding: EdgeInsets.zero,
                        onTap: () {},
                        horizontalTitleGap: 0.0,
                        leading: Image.asset(
                          "assets/icons/btc.png",
                          height: 44,
                          fit: BoxFit.cover,
                        ),
                        title: Text(
                          "BTC",
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2!
                              .copyWith(color: Color(0xff242E6F)),
                        ),
                        subtitle: Text(
                          "Bitcoin",
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2!
                              .copyWith(color: Color(0xff242E6F)),
                        ),
                        trailing: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('37%',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2!
                                    .copyWith(color: Color(0xff242E6F))),
                            Text('+2.54%',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2!
                                    .copyWith(color: Color(0xff3BB900)))
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
