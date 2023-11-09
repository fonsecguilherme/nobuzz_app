import 'package:flutter/material.dart';

class Style {
  static BoxDecoration appBackground() => const BoxDecoration(
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
      );

  //App bar text style
  static TextStyle appbarText = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w600,
    fontSize: 18,
  );

  //Home page text style
  static TextStyle stateNameListViewText = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w600,
    fontSize: 20,
  );

  //Next forecast page text style
  static TextStyle weekdayText = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w600,
    fontSize: 18,
  );
  static TextStyle bannerTemperatureText = const TextStyle(
    color: Colors.white,
    fontSize: 55,
    fontWeight: FontWeight.w600,
  );
  static TextStyle weekDayListViewText = const TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static TextStyle conditionListViewText = TextStyle(
    color: Colors.grey[400],
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static TextStyle temperatureListViewText = const TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  //Forecast details page text style
  static TextStyle weekdayForecastDetailpageText = const TextStyle(
    color: Colors.white,
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );
  static TextStyle temperatureForecastDetailpageText = const TextStyle(
    color: Colors.white,
    fontSize: 81,
    fontWeight: FontWeight.w600,
  );
  static TextStyle dateForecastDetailpageText = const TextStyle(
    color: Colors.white,
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );
  static TextStyle stateNameForecastDetailpageText = const TextStyle(
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  static TextStyle carouselTemperatureForecastDetailpageText = const TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  //Feedback page text style
   static TextStyle conditionFeedbackPageText = const TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
}
