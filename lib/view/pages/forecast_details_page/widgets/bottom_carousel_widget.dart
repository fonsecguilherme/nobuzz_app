import 'package:flutter/material.dart';
import 'package:nobuzz_app/helpers/functions.dart';
import 'package:nobuzz_app/model/weather_model.dart';

class BottomCarouselWidget extends StatelessWidget {
  final Weather weather;

  const BottomCarouselWidget({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    List<Estados> estados = weather.result!.estados!;

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(top: 16),
      itemCount: estados.length,
      itemBuilder: (context, index) {
        String condition =
            estados[index].dias![0].segunda![0].manha![0].tempo as String;

        String temp = estados[index].dias![0].segunda![0].manha![0].graus;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF957DCD),
                  Color(0xFF523D7F),
                ],
              ),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            height: 50,
            width: 156,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  height: 30,
                  width: 27,
                  Functions.imageWeather(
                    condition,
                  ),
                ),
                Text(
                  estados[index].estado.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                Flexible(
                  child: Text(
                    '$temp°',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
