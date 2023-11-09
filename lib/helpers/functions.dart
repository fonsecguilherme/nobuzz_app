import 'package:intl/intl.dart';

class Functions {
  // static String imagePhoto(List<Dias> dias) {
  //   String asset;

  //   final shift = shiftOfDay();
  //   final weekday = weekDay();

  //   if (shift == 'dia') {
  //     asset = imageWeather(dias[weekday].segunda);
  //     return asset;
  //   } else if (shift == 'tarde') {
  //     asset = imageWeather(periodo.manha![1].tempo);
  //     return asset;
  //   } else {
  //     asset = imageWeather(periodo.manha![2].tempo);
  //     return asset;
  //   }
  // }

  // static String shiftOfDay() {
  //   final hour = DateTime.now().hour;

  //   if (hour >= 5 && hour < 12) {
  //     return 'manha';
  //   } else if (hour >= 12 && hour < 18) {
  //     return 'tarde';
  //   } else {
  //     return 'noite';
  //   }
  // }

  static String weekDay() {
    final now = DateTime.now();
    String day = DateFormat('EEEE').format(now);

    if (day == 'Monday') {
      return 'Segunda';
    } else if (day == 'Tuesday') {
      return 'Terça';
    } else if (day == 'Wednesday') {
      return 'Quarta';
    } else if (day == 'Thursday') {
      return 'Quinta';
    } else if (day == 'Friday') {
      return 'Sexta';
    } else if (day == 'Saturday') {
      return 'Sábado';
    } else {
      return 'Domingo';
    }
  }

  static String brazilianDate() {
    final now = DateTime.now();
    String day = DateFormat('d').format(now);
    String month = DateFormat('MMMM', 'pt_Br').format(now);
    String year = DateFormat('y').format(now);

    return '$day de $month de $year';
  }

  static List<String> weekdayOrder() {
    List<String> weekDays = [
      'Segunda',
      'Terça',
      'Quarta',
      'Quinta',
      'Sexta',
      'Sábado',
      'Domingo',
    ];
    DateTime now = DateTime.now();

    int today = now.weekday;

    List<String> newList = [];

    for (int i = today - 1; i < weekDays.length; i++) {
      newList.add(weekDays[i]);
    }

    for (int i = 0; i < today - 1; i++) {
      newList.add(weekDays[i]);
    }

    return newList;
  }

  static String imageWeather(String? weather) {
    if (weather == 'Sol') {
      return 'assets/images/sol.png';
    } else if (weather == 'Nublado') {
      return 'assets/images/nublado.png';
    } else if (weather == 'Chuva') {
      return 'assets/images/chuva.png';
    } else if (weather == 'Neve') {
      return 'assets/images/neve.png';
    } else if (weather == 'Tempestade') {
      return 'assets/images/tempestade.png';
    } else if (weather == 'Trovão') {
      return 'assets/images/trovao.png';
    } else {
      return 'assets/images/sol.png';
    }
  }
}
