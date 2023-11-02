import 'package:flutter/material.dart';
import 'package:nobuzz_app/model/weather_model.dart';
import 'package:nobuzz_app/view/pages/next_forecast_page/widgets/listview_item_widget.dart';
import 'package:nobuzz_app/view/pages/next_forecast_page/widgets/today_banner_widget.dart';

class NextForecastsPage extends StatelessWidget {
  final List<Dias>? dias;

  const NextForecastsPage({super.key, this.dias});

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

    String temp = dias![0].segunda![0].manha![0].graus;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text('7 dias'),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF331972),
              Color(0xFF352163),
              Color(0xFF33143C),
            ],
          ),
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
            opacity: 0.2,
          ),
        ),
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
                        weekday: weekdays[0],
                        manha: dias![0].segunda![0].manha!),
                    ListViewItemWidget(
                        weekday: weekdays[1], manha: dias![0].terca![0].manha!),
                    ListViewItemWidget(
                        weekday: weekdays[2],
                        manha: dias![0].quarta![0].manha!),
                    ListViewItemWidget(
                        weekday: weekdays[3],
                        manha: dias![0].quinta![0].manha!),
                    ListViewItemWidget(
                        weekday: weekdays[4], manha: dias![0].sexta![0].manha!),
                    ListViewItemWidget(
                        weekday: weekdays[5],
                        manha: dias![0].sabado![0].manha!),
                    ListViewItemWidget(
                        weekday: weekdays[6],
                        manha: dias![0].domingo![0].manha!),
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
