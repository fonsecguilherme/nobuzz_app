import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nobuzz_app/core/cubit/weather_cubit.dart';
import 'package:nobuzz_app/helpers/functions.dart';
import 'package:nobuzz_app/model/weather_model.dart';
import 'package:nobuzz_app/view/pages/forecast_details_page/forecast_details_page.dart';

class ListViewItemWidget extends StatelessWidget {
  final String weekday;
  final List<Periodo> dias;

  const ListViewItemWidget({
    super.key,
    required this.weekday,
    required this.dias,
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
                      Functions.imageWeather(dias[0].manha![0].tempo),
                    ),
                  ),
                  Text(
                    dias[0].manha![0].tempo ?? 'Indisponível',
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
                '${dias[0].manha![0].graus}°',
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
              child: ForecastDetailPage(periodo: dias),
            ),
          ),
        ),
      );
}
