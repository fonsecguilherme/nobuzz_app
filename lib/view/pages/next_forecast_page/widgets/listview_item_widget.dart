import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nobuzz_app/core/cubit/weather_cubit/weather_cubit.dart';
import 'package:nobuzz_app/helpers/functions.dart';
import 'package:nobuzz_app/model/weather_model.dart';
import 'package:nobuzz_app/view/pages/forecast_details_page/forecast_details_page.dart';

class ListViewItemWidget extends StatelessWidget {
  final String weekday;
  final String? stateName;
  final List<Periodo> day;

  const ListViewItemWidget({
    super.key,
    required this.weekday,
    required this.day,
    required this.stateName,
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 1,
              child: Text(
                weekday,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  SizedBox(
                    width: 55,
                    height: 50,
                    child: Image.asset(
                      Functions.imageWeather(day[0].manha![0].tempo),
                    ),
                  ),
                  Text(
                    day[0].manha![0].tempo ?? 'Indisponível',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Text(
                '${day[0].manha![0].graus}°',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            )
          ],
        ),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BlocProvider.value(
              value: WeatherCubit(),
              child: ForecastDetailPage(
                period: day,
                stateName: stateName,
              ),
            ),
          ),
        ),
      );
}
