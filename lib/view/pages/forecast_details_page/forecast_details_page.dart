import 'package:flutter/material.dart';
import 'package:nobuzz_app/core/providers/weather_provider.dart';
import 'package:nobuzz_app/helpers/style.dart';
import 'package:nobuzz_app/model/weather_model.dart';
import 'package:nobuzz_app/view/pages/forecast_details_page/widgets/bottom_carousel_widget.dart';
import 'package:nobuzz_app/view/pages/forecast_details_page/widgets/period_item_widget.dart';
import 'package:nobuzz_app/view/pages/forecast_details_page/widgets/top_weather_banner.dart';
import 'package:provider/provider.dart';

class ForecastDetailPage extends StatefulWidget {
  final List<Periodo> period;
  final String? stateName;

  const ForecastDetailPage({
    super.key,
    required this.period,
    this.stateName,
  });

  @override
  State<ForecastDetailPage> createState() => _ForecastDetailPageState();
}

class _ForecastDetailPageState extends State<ForecastDetailPage> {
  WeatherProvider get weatherProvider => context.read<WeatherProvider>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      weatherProvider.getAllWeather();
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text(widget.stateName!),
          centerTitle: true,
        ),
        body: Container(
          decoration: Style.appBackground(),
          child: Column(
            children: [
              const SizedBox(
                height: 75,
              ),
              Flexible(
                flex: 3,
                child: TopWeatherBanner(
                  periodo: widget.period,
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
              Flexible(flex: 1, child: _bottomStates()),
            ],
          ),
        ),
      );

  Widget _bottomStates() => Consumer<WeatherProvider>(
        builder: (context, value, child) => _builder(value),
      );

  Widget _builder(WeatherProvider value) {
    if (value.isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else if (value.weather == null) {
      return const Center(
        child: Text('Erro ao obter dados!'),
      );
    } else if (value.weather != null) {
      return BottomCarouselWidget(
        weather: value.weather!,
      );
    }
    return const SizedBox();
  }

  Widget _todayForecast() => SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            PeriodItemWidget(info: widget.period[0].manha, periodo: 'Manhã'),
            PeriodItemWidget(info: widget.period[0].tarde, periodo: 'Tarde'),
            PeriodItemWidget(info: widget.period[0].noite, periodo: 'Noite'),
          ],
        ),
      );
}
