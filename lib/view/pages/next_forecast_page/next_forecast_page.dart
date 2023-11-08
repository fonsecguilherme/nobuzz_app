import 'package:flutter/material.dart';
import 'package:nobuzz_app/helpers/functions.dart';
import 'package:nobuzz_app/helpers/style.dart';
import 'package:nobuzz_app/model/weather_model.dart';
import 'package:nobuzz_app/view/pages/next_forecast_page/widgets/listview_item_widget.dart';
import 'package:nobuzz_app/view/pages/next_forecast_page/widgets/today_banner_widget.dart';

class NextForecastsPage extends StatelessWidget {
  final String? stateName;
  final List<Dias>? days;

  const NextForecastsPage({super.key, this.days, this.stateName});

  @override
  Widget build(BuildContext context) {
    List<String> weekdays = [
      'Segunda',
      'Terça',
      'Quarta',
      'Quinta',
      'Sexta',
      'Sábado',
      'Domingo'
    ];

    String temp = days![0].segunda![0].manha![0].graus;
    String? condition = days![0].segunda![0].manha![0].tempo;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text('7 dias'),
        centerTitle: true,
      ),
      body: Container(
        decoration: Style.appBackground(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 75,
              ),
              Text(
                Functions.weekDay(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Flexible(
                flex: 4,
                child: TodayBannerWidget(temp: temp, condition: condition),
              ),
              Flexible(
                flex: 6,
                child: ListView(
                  padding: const EdgeInsets.only(
                    bottom: 8.0,
                  ),
                  children: [
                    ListViewItemWidget(
                        weekday: weekdays[0],
                        day: days![0].segunda!,
                        stateName: stateName),
                    ListViewItemWidget(
                        weekday: weekdays[1],
                        day: days![0].terca!,
                        stateName: stateName),
                    ListViewItemWidget(
                        weekday: weekdays[2],
                        day: days![0].quarta!,
                        stateName: stateName),
                    ListViewItemWidget(
                        weekday: weekdays[3],
                        day: days![0].quinta!,
                        stateName: stateName),
                    ListViewItemWidget(
                        weekday: weekdays[4],
                        day: days![0].sexta!,
                        stateName: stateName),
                    ListViewItemWidget(
                        weekday: weekdays[5],
                        day: days![0].sabado!,
                        stateName: stateName),
                    ListViewItemWidget(
                        weekday: weekdays[6],
                        day: days![0].domingo!,
                        stateName: stateName),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
