import 'package:flutter/material.dart';
import 'package:nobuzz_app/core/providers/feedback_provider.dart';
import 'package:nobuzz_app/helpers/functions.dart';
import 'package:nobuzz_app/helpers/style.dart';
import 'package:nobuzz_app/model/weather_model.dart';
import 'package:nobuzz_app/view/pages/feedback_page/feedback_page.dart';
import 'package:provider/provider.dart';

class PeriodItemWidget extends StatelessWidget {
  final List<Info>? info;
  final String periodo;

  const PeriodItemWidget({
    required this.periodo,
    super.key,
    this.info,
  });

  @override
  Widget build(BuildContext context) => Padding(
        padding:
            const EdgeInsets.only(right: 8.0, left: 8.0, top: 8.0, bottom: 36),
        child: GestureDetector(
          child: Container(
            padding: const EdgeInsets.all(8),
            height: 155,
            width: 115,
            decoration: Style.containerDecoration(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  periodo,
                  style: Style.weekdayForecastDetailpageText,
                ),
                Image.asset(
                  Functions.imageWeather(info![0].tempo),
                ),
                Text(
                  '${info![0].graus}°',
                  style: Style.weekdayForecastDetailpageText,
                ),
              ],
            ),
          ),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChangeNotifierProvider<FeedbackProvider>(
                create: (_) => FeedbackProvider(),
                child: const FeedbackPage(),
              ),
            ),
          ),
        ),
      );
}
