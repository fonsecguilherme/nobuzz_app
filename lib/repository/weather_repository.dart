import 'package:nobuzz_app/core/htpp/http_dio.dart';
import 'package:nobuzz_app/core/htpp/i_http.dart';
import 'package:nobuzz_app/model/weather_model.dart';

class WeatherRepository {
  final IHttp http = HttpDio();

  Future<Weather?> getAllWeatherRepo() async {
    final response = await http.post('informacoes_do_tempo');

    if (response.data != null) {
      return Weather.fromJson(response.data);
    }
    return null;
  }
}
