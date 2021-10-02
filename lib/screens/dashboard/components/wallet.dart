import 'package:flutter/material.dart';
import 'package:responsive_dashboard_002/screens/dashboard/components/wallet_card.dart';

import '../../../constants.dart';

class Wallet extends StatelessWidget {
  const Wallet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            flex: 7,
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Wallets",
                      style:
                          Theme.of(context).textTheme.headline6!.copyWith(color: Color(0xff223354)),
                    ),
                    Spacer(),
                    TextButton.icon(
                      icon: Icon(
                        Icons.add,
                        color: Color(
                          0xff1A75FF,
                        ),
                      ),
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          minimumSize: Size(50, 30),
                          padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                          alignment: Alignment.center),
                      label: Text(
                        'Purchase now',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none,
                          fontSize: 14,
                          color: Color(0xff1A75FF),
                        ),
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
                GridView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4, crossAxisSpacing: defaultPadding, childAspectRatio: 1),
                  itemBuilder: (context, index) => WalletCard(),
                )
              ],
            ),
          ),
          Expanded(
              flex: 3,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Account Security",
                      style:
                          Theme.of(context).textTheme.headline6!.copyWith(color: Color(0xff223354)),
                    ),
                    Container(
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
                            "2FA Authentication",
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(color: Color(0xff242E6F)),
                          ),
                          subtitle: Text(
                            "Disabled",
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(color: Color(0xff242E6F)),
                          ),
                          trailing: Switch(
                            value: true,
                            onChanged: (value) {},
                            activeTrackColor: Colors.lightGreenAccent,
                            activeColor: Colors.green,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
