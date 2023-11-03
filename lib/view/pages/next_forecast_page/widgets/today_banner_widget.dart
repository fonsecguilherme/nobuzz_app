import 'package:flutter/material.dart';
import 'package:nobuzz_app/helpers/functions.dart';

class TodayBannerWidget extends StatelessWidget {
  final String temp;
  final String? condition;

  const TodayBannerWidget({
    super.key,
    required this.temp,
    required this.condition,
  });

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            Functions.weekDay(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          Container(
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 36.0),
                  child: Image.asset(
                    fit: BoxFit.fill,
                    height: 132,
                    width: 169,
                    Functions.imageWeather(condition),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 36.0),
                  child: Text(
                    '$temp°',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 55,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
}
