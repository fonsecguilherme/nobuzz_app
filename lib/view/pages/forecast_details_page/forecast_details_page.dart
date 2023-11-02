import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nobuzz_app/core/cubit/weather_cubit.dart';
import 'package:nobuzz_app/core/cubit/weather_state.dart';
import 'package:nobuzz_app/model/weather_model.dart';
import 'package:nobuzz_app/view/pages/forecast_details_page/widgets/bottom_carousel_widget.dart';
import 'package:nobuzz_app/view/pages/forecast_details_page/widgets/period_item_widget.dart';
import 'package:nobuzz_app/view/pages/forecast_details_page/widgets/top_weather_banner.dart';

class ForecastDetailPage extends StatefulWidget {
  final List<Periodo> periodo;

  const ForecastDetailPage({
    super.key,
    required this.periodo,
  });

  @override
  State<ForecastDetailPage> createState() => _ForecastDetailPageState();
}

class _ForecastDetailPageState extends State<ForecastDetailPage> {
  WeatherCubit get weatherCubit => context.read<WeatherCubit>();

  @override
  void initState() {
    super.initState();
    weatherCubit.getAllWeather();
  }

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
                  periodo: widget.periodo,
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

  Widget _bottomStates() => BlocBuilder<WeatherCubit, WeatherState>(
        builder: _builder,
      );

  Widget _builder(BuildContext context, WeatherState state) {
    if (state is WeatherErrorState) {
      return Center(
        child: Text(state.errorMessage),
      );
    } else if (state is WeatherLoadingState) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else if (state is WeatherInitialState) {
      return const Center(
        child: Text('Estado inicial'),
      );
    } else if (state is WeatherFetchedState) {
      return BottomCarouselWidget(
        weather: state.result,
      );
    }
    return const SizedBox();
  }

  Widget _todayForecast() => SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            PeriodItemWidget(info: widget.periodo[0].manha, periodo: 'Manhã'),
            PeriodItemWidget(info: widget.periodo[0].tarde, periodo: 'Tarde'),
            PeriodItemWidget(info: widget.periodo[0].noite, periodo: 'Noite'),
          ],
        ),
      );
}
