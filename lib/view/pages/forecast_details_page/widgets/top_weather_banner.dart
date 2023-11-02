import 'package:flutter/material.dart';
import 'package:nobuzz_app/helpers/functions.dart';
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
            style: const TextStyle(
              fontSize: 12,
              color: Colors.white,
            ),
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
            style: const TextStyle(
              fontSize: 80,
              color: Colors.white,
            ),
          ),
          Text(
            Functions.brazilianDate(),
            style: const TextStyle(
              fontSize: 12,
              color: Colors.white,
            ),
          )
        ],
      );
}
