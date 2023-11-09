import 'package:flutter/material.dart';
import 'package:nobuzz_app/core/providers/weather_provider.dart';
import 'package:nobuzz_app/helpers/style.dart';
import 'package:nobuzz_app/view/pages/home_page/widgets/cities_builder_widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
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
          title: Text(
            'Procurar por estado',
            style: Style.appbarText,
          ),
          centerTitle: true,
        ),
        body: Container(
          decoration: Style.appBackground(),
          child: Consumer<WeatherProvider>(
            builder: (BuildContext context, value, Widget? child) =>
                _makeBody(value),
          ),
        ),
      );

  Widget _makeBody(WeatherProvider value) {
    if (value.isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else if (value.weather == null) {
      return const Center(
        child: Text('Erro ao obter dados!'),
      );
    } else if (value.weather != null) {
      final weather = value.weather;
      return CitiesBuilder(result: weather!);
    }
    return const SizedBox();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
