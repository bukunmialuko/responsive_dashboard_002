import 'package:flutter/material.dart';

import '../../../constants.dart';

class SubHeader extends StatelessWidget {
  const SubHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hello, Randy!",
            style: Theme.of(context).textTheme.headline6!.copyWith(color: Color(0xff223354)),
          ),
          Text(
            "Today is a good day to start trading crypto assets!",
            style: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(fontWeight: FontWeight.w400, color: Color(0xff223354)),
          )
        ],
      ),
    );
  }
}
