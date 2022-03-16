import 'package:flutter/material.dart';
import 'package:white_dark/size_config.dart';

class CountryCard extends StatelessWidget {
  const CountryCard({
    Key? key,
    required this.period,
    required this.country,
    required this.timeZone,
    required this.iconSrc,
    required this.time,
  }) : super(key: key);

  final String period;
  final String country;
  final String timeZone;
  final String iconSrc;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: getProportionateScreenWidth(20.0),
      ),
      child: SizedBox(
        width: getProportionateScreenWidth(233.0),
        child: AspectRatio(
          aspectRatio: 1.32,
          child: Container(
            padding: EdgeInsets.all(
              getProportionateScreenWidth(20.0),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(
                color: Theme.of(context).primaryIconTheme.color!,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  country,
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        fontSize: getProportionateScreenWidth(16.0),
                      ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(timeZone),
                const Spacer(),
                Row(
                  children: <Widget>[
                    // SvgPicture.asset('assets/icons/Liberty.svg'),
                    const Spacer(),
                    Text(
                      time,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    RotatedBox(
                      quarterTurns: 3,
                      child: Text(period),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
