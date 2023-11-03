import 'package:flutter/material.dart';
import 'package:nobuzz_app/helpers/functions.dart';
import 'package:nobuzz_app/model/weather_model.dart';
import 'package:nobuzz_app/view/pages/next_forecast_page/next_forecast_page.dart';

class CitiesBuilder extends StatefulWidget {
  final Weather result;

  const CitiesBuilder({super.key, required this.result});

  @override
  State<CitiesBuilder> createState() => _CitiesBuilderState();
}

class _CitiesBuilderState extends State<CitiesBuilder> {
  @override
  Widget build(BuildContext context) {
    List<Estados> states = widget.result.result!.estados!;

    return ListView.builder(
      itemCount: states.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16),
          child: GestureDetector(
            child: Container(
              height: 90,
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 36.0),
                    child: Text(
                      states[index].estado!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 36.0),
                    child: Image.asset(
                      Functions.imageWeather(
                          states[index].dias![0].segunda![0].manha![0].tempo),
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      NextForecastsPage(days: states[index].dias),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
