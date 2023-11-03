import 'package:flutter/material.dart';
import 'package:nobuzz_app/helpers/style.dart';
import 'package:nobuzz_app/model/weather_model.dart';
import 'package:nobuzz_app/view/pages/next_forecast_page/widgets/listview_item_widget.dart';
import 'package:nobuzz_app/view/pages/next_forecast_page/widgets/today_banner_widget.dart';

class NextForecastsPage extends StatelessWidget {
  final List<Dias>? days;

  const NextForecastsPage({super.key, this.days});

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
              Flexible(
                flex: 4,
                child: TodayBannerWidget(temp: temp),
              ),
              Flexible(
                flex: 6,
                child: ListView(
                  padding: const EdgeInsets.only(
                    bottom: 8.0,
                  ),
                  children: [
                    ListViewItemWidget(
                        weekday: weekdays[0], day: days![0].segunda!),
                    ListViewItemWidget(
                        weekday: weekdays[1], day: days![0].terca!),
                    ListViewItemWidget(
                        weekday: weekdays[2], day: days![0].quarta!),
                    ListViewItemWidget(
                        weekday: weekdays[3], day: days![0].quinta!),
                    ListViewItemWidget(
                        weekday: weekdays[4], day: days![0].sexta!),
                    ListViewItemWidget(
                        weekday: weekdays[5], day: days![0].sabado!),
                    ListViewItemWidget(
                        weekday: weekdays[6], day: days![0].domingo!),
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
