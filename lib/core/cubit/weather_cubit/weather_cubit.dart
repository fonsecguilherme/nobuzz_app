import 'package:bloc/bloc.dart';
import 'package:nobuzz_app/core/cubit/weather_cubit/weather_state.dart';
import 'package:nobuzz_app/repository/weather_repository.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit({WeatherRepository? weatherRepository})
      : _weatherRepository = weatherRepository ?? WeatherRepository(),
        super(WeatherInitialState());

  final WeatherRepository _weatherRepository;

  Future<void> getAllWeather() async {
    emit(WeatherLoadingState());

    try {
      final weatherList = await _weatherRepository.getAllWeatherRepo();

      if (weatherList != null) {
        emit(WeatherFetchedState(weatherList));
      } else {
        emit(WeatherErrorState('Dados nulos!'));
      }
    } on Exception {
      emit(WeatherErrorState('Erro ao obter dados!'));
    }
  }
}
