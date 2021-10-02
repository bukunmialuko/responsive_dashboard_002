import 'package:flutter/material.dart';

import '../../../constants.dart';

class WalletCard extends StatelessWidget {
  const WalletCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding * 0.75),
      decoration:
          BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/icons/btc.png",
            height: 44,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'BTC',
            style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Color(0xff223354)),
          ),
          Text(
            'Bitcoin',
            style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Color(0xff223354)),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            '\$3,594.23',
            style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Color(0xff223354)),
          ),
          Text(
            '1.2356 BTC',
            style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Color(0xff223354)),
          ),
        ],
      ),
    );
  }
}
