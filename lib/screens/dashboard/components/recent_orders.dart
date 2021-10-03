import 'package:flutter/material.dart';

class RecentOrders extends StatelessWidget {
  const RecentOrders({
    Key? key,
    required this.dts,
  }) : super(key: key);

  final DTS dts;
  final int _rowPerPage = 3;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(cardColor: Colors.white, dividerColor: Color(0x33223354)),
      child: Container(
        height: 300,
        // color: Colors.white,
        child: SingleChildScrollView(
          child: Expanded(
            child: PaginatedDataTable(
              dataRowHeight: 80,
              columns: [
                DataColumn(label: Text("Order Details")),
                DataColumn(label: Text("Order id")),
                DataColumn(label: Text("Source")),
                DataColumn(label: Text("Amount")),
                DataColumn(label: Text("Balance")),
                DataColumn(label: Text("Status")),
                DataColumn(label: Text("Actions")),
              ],
              source: dts,
              onPageChanged: (r) {},
              rowsPerPage: _rowPerPage,
            ),
          ),
        ),
      ),
    );
  }
}

class DTS extends DataTableSource {
  @override
  DataRow? getRow(int index) {
    return DataRow.byIndex(
      index: index,
      cells: [
        DataCell(
          ListTile(
            contentPadding: EdgeInsets.zero,
            onTap: () {},
            // horizontalTitleGap: 0.0,
            leading: Image.asset(
              "assets/icons/btc.png",
              height: 44,
              fit: BoxFit.cover,
            ),
            title: Text(
              "2FA Authentication",
              style: TextStyle(color: Color(0xff242E6F)),
            ),
            subtitle: Text(
              "Disabled",
              style: TextStyle(color: Color(0xff242E6F)),
            ),
          ),
        ),
        DataCell(
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "63GJ5DJFKS4H",
                style: TextStyle(color: Color(0xff242E6F)),
              ),
              Text(
                'Deposit',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.none,
                  fontSize: 14,
                  color: Color(0xff3BB900),
                ),
              )
            ],
          ),
        ),
        DataCell(
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Bank Account",
                style: TextStyle(color: Color(0xff242E6F)),
              ),
              Text(
                '**** 1111',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.none,
                  fontSize: 14,
                  color: Color(0xff3BB900),
                ),
              )
            ],
          ),
        ),
        DataCell(
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "+ 0.34587345 BTC",
                style: TextStyle(color: Color(0xff242E6F)),
              ),
              Text(
                '15,234.34 USD',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.none,
                  fontSize: 14,
                  color: Color(0xff3BB900),
                ),
              )
            ],
          ),
        ),
        DataCell(
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "+ 0.34587345 BTC",
                style: TextStyle(color: Color(0xff242E6F)),
              ),
              Text(
                '15,234.34 USD',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.none,
                  fontSize: 14,
                  color: Color(0xff3BB900),
                ),
              )
            ],
          ),
        ),
        DataCell(
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
                backgroundColor: Color(0xffECFBE6),
                padding: EdgeInsets.fromLTRB(16, 4, 16, 4),
                minimumSize: Size(30, 30),
                alignment: Alignment.center),
            child: Text(
              'Completed',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                decoration: TextDecoration.none,
                fontSize: 14,
                color: Color(0xff3BB900),
              ),
            ),
          ),
        ),
        DataCell(Row(
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.edit, color: Colors.blue)),
            IconButton(onPressed: () {}, icon: Icon(Icons.delete, color: Colors.red))
          ],
        )),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => true;

  @override
  int get rowCount => 1;

  @override
  int get selectedRowCount => 0;
}
