import 'package:flutter/material.dart';
import 'package:nobuzz_app/model/weather_model.dart';
import 'package:nobuzz_app/repository/weather_repository.dart';

class WeatherProvider extends ChangeNotifier {
  WeatherProvider({WeatherRepository? weatherRepository})
      : _weatherRepository = weatherRepository ?? WeatherRepository();

  final WeatherRepository _weatherRepository;
  bool isLoading = false;
  Weather? _weather;
  Weather? get weather => _weather;

  Future<void> getAllWeather() async {
    isLoading = true;
    notifyListeners();

    final response = await _weatherRepository.getAllWeatherRepo();

    _weather = response;
    isLoading = false;
    notifyListeners();
  }
}
