import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nobuzz_app/core/cubit/weather_cubit.dart';
import 'package:nobuzz_app/core/cubit/weather_state.dart';
import 'package:nobuzz_app/view/pages/home_page/widgets/cities_builder_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  WeatherCubit get weatherCubit => context.read<WeatherCubit>();

  @override
  void initState() {
    super.initState();
    weatherCubit.getAllWeather();
  }

  @override
  Widget build(BuildContext context) => BlocBuilder<WeatherCubit, WeatherState>(
        builder: _builder,
      );

  Widget _builder(BuildContext context, WeatherState state) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text('Procurar por estado'),
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
        child: _makeBody(state),
      ),
    );
  }

  Widget _makeBody(WeatherState state) {
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
      return CitiesBuilder(result: state.result);
    }
    return const SizedBox();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
