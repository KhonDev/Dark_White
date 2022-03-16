import 'package:flutter/material.dart';

import 'package:white_dark/clock.dart';
import 'package:white_dark/country_card.dart';
import 'package:white_dark/time_in_hour_and_minut.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Text(
              'Newport Beach, USA | PST',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            const TimeInHourAndMinute(),
            const Spacer(),
            const Clock(),
            const Spacer(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const <Widget>[
                  CountryCard(
                    country: 'New York, USA',
                    iconSrc: '',
                    period: 'PM',
                    time: '9:20',
                    timeZone: '+3 HRS | EST',
                  ),
                  CountryCard(
                    country: 'Sydney, UA',
                    iconSrc: '',
                    period: 'AM',
                    time: '1:20',
                    timeZone: '+19 HRS | AEST',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
