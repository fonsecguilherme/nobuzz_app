import 'package:flutter/material.dart';
import 'package:nobuzz_app/core/providers/weather_provider.dart';
import 'package:nobuzz_app/helpers/functions.dart';
import 'package:nobuzz_app/helpers/style.dart';
import 'package:nobuzz_app/model/weather_model.dart';
import 'package:nobuzz_app/view/pages/forecast_details_page/forecast_details_page.dart';
import 'package:provider/provider.dart';

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
                style: Style.weekDayListViewText,
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
                      Functions.imageWeather(
                        day[0].manha![0].tempo,
                      ),
                    ),
                  ),
                  Text(
                    day[0].manha![0].tempo ?? 'Indisponível',
                    style: Style.conditionListViewText,
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Text(
                '${day[0].manha![0].graus}°',
                style: Style.temperatureListViewText,
              ),
            )
          ],
        ),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChangeNotifierProvider(
              create: (context) => WeatherProvider(),
              child: ForecastDetailPage(
                period: day,
                stateName: stateName,
              ),
            ),
          ),
        ),
      );
}
