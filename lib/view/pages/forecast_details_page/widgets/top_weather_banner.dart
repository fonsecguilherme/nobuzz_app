import 'package:flutter/material.dart';
import 'package:nobuzz_app/helpers/functions.dart';
import 'package:nobuzz_app/helpers/style.dart';
import 'package:nobuzz_app/model/weather_model.dart';

class TopWeatherBanner extends StatelessWidget {
  final List<Periodo> periodo;

  const TopWeatherBanner({
    super.key,
    required this.periodo,
  });

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            Functions.weekDay(),
            style: Style.weekdayForecastDetailpageText,
          ),
          const SizedBox(height: 12),
          Image.asset(
            Functions.imageWeather(
              periodo[0].manha![0].tempo,
            ),
            fit: BoxFit.cover,
            width: 172,
            height: 139,
          ),
          Text(
            '${periodo[0].manha![0].graus}',
            style: Style.temperatureForecastDetailpageText,
          ),
          Text(
            Functions.brazilianDate(),
            style: Style.dateForecastDetailpageText,
          )
        ],
      );
}
