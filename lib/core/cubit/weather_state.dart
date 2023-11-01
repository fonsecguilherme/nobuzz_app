import 'package:nobuzz_app/model/weather_model.dart';

abstract class WeatherState {}

class WeatherInitialState extends WeatherState {}

class WeatherLoadingState extends WeatherState {}

class WeatherFetchedState extends WeatherState {
  final Weather result;

  WeatherFetchedState(this.result);
}

class WeatherErrorState extends WeatherState {
  final String errorMessage;

  WeatherErrorState(this.errorMessage);
}
