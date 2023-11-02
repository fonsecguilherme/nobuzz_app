import 'package:flutter/material.dart';
import 'package:nobuzz_app/model/weather_model.dart';
import 'package:nobuzz_app/view/pages/forecast_details_page/widgets/period_item_widget.dart';
import 'package:nobuzz_app/view/pages/forecast_details_page/widgets/top_weather_banner.dart';

class ForecastDetailPage extends StatelessWidget {
  final List<Periodo> periodo;

  const ForecastDetailPage({
    super.key,
    required this.periodo,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: const Text('Nome do estado'),
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
          child: Column(
            children: [
              const SizedBox(
                height: 75,
              ),
              Flexible(
                flex: 3,
                child: TopWeatherBanner(
                  periodo: periodo,
                ),
              ),
              const Text(
                'Hoje',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Flexible(
                flex: 2,
                child: _todayForecast(),
              ),
              const Text(
                'Estados',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      );

  Widget _todayForecast() => SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            PeriodItemWidget(info: periodo[0].manha, periodo: 'Manhã'),
            PeriodItemWidget(info: periodo[0].tarde, periodo: 'Tarde'),
            PeriodItemWidget(info: periodo[0].noite, periodo: 'Noite'),
          ],
        ),
      );
}
