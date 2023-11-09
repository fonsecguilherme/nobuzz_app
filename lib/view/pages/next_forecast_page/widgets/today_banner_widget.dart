import 'package:flutter/material.dart';
import 'package:nobuzz_app/helpers/functions.dart';
import 'package:nobuzz_app/helpers/style.dart';

class TodayBannerWidget extends StatelessWidget {
  final String temp;
  final String? condition;

  const TodayBannerWidget({
    super.key,
    required this.temp,
    required this.condition,
  });

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(bottom: 40.0, top: 16.0),
        child: Container(
          height: 170,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF957DCD),
                Color(0xFF523D7F),
              ],
            ),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                fit: BoxFit.fill,
                height: 132,
                width: 169,
                Functions.imageWeather(condition),
              ),
              Text(
                '$temp°',
                style: Style.bannerTemperatureText,
              ),
            ],
          ),
        ),
      );
}
