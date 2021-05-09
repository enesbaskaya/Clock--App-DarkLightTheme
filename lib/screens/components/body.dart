import 'package:analog_clock/screens/components/timeInHourAndMinute.dart';
import 'package:analog_clock/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'clock.dart';
import 'contryCard.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              'İstanbul | Türkiye',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            TimeInHourAndMinute(),
            Spacer(),
            Clock(),
            SizedBox(height: 35,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal ,
              child: Row(
                children: [
                  CountryCard(
                    country: 'New York, USA',
                    timeZone: '+3 HRS | EST',
                    iconSrc: 'assets/icons/Liberty.svg',
                    time: '09:20',
                  ),
                  CountryCard(
                    country: 'Sydney, USA',
                    timeZone: '+3 HRS | EST',
                    iconSrc: 'assets/icons/Sydney.svg',
                    time: '09:20',
                  ),
                ],
              ),

            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}

