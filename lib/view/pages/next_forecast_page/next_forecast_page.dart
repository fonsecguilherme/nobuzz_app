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
    String temp = days![0].segunda![0].manha![0].graus;
    String? condition = days![0].segunda![0].manha![0].tempo;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          '7 dias',
          style: Style.appbarText,
        ),
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
                style: Style.weekdayText,
              ),
              Flexible(
                flex: 4,
                child: TodayBannerWidget(
                  temp: temp,
                  condition: condition,
                ),
              ),
              Flexible(
                flex: 6,
                child: _listViewForecasts(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _listViewForecasts() => ListView(
        padding: const EdgeInsets.only(
          bottom: 8.0,
        ),
        children: [
          ListViewItemWidget(
            weekday: Functions.weekdayOrder()[0],
            day: days![0].segunda!,
            stateName: stateName,
          ),
          ListViewItemWidget(
            weekday: Functions.weekdayOrder()[1],
            day: days![0].terca!,
            stateName: stateName,
          ),
          ListViewItemWidget(
            weekday: Functions.weekdayOrder()[2],
            day: days![0].quarta!,
            stateName: stateName,
          ),
          ListViewItemWidget(
            weekday: Functions.weekdayOrder()[3],
            day: days![0].quinta!,
            stateName: stateName,
          ),
          ListViewItemWidget(
            weekday: Functions.weekdayOrder()[4],
            day: days![0].sexta!,
            stateName: stateName,
          ),
          ListViewItemWidget(
            weekday: Functions.weekdayOrder()[5],
            day: days![0].sabado!,
            stateName: stateName,
          ),
          ListViewItemWidget(
            weekday: Functions.weekdayOrder()[6],
            day: days![0].domingo!,
            stateName: stateName,
          ),
        ],
      );
}
