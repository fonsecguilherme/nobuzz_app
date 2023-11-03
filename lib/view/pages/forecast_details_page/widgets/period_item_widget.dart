import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nobuzz_app/core/cubit/feedback_cubit/feedback_cubit.dart';
import 'package:nobuzz_app/helpers/functions.dart';
import 'package:nobuzz_app/model/weather_model.dart';
import 'package:nobuzz_app/view/pages/feedback_page/feedback_page.dart';

class PeriodItemWidget extends StatelessWidget {
  final List<Info>? info;
  final String periodo;

  const PeriodItemWidget({
    required this.periodo,
    super.key,
    this.info,
  });
//TODO: add navigation tofinal screen
  @override
  Widget build(BuildContext context) => Padding(
        padding:
            const EdgeInsets.only(right: 8.0, left: 8.0, top: 8.0, bottom: 36),
        child: GestureDetector(
          child: Container(
            padding: const EdgeInsets.all(8),
            height: 155,
            width: 115,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF957DCD),
                  Color(0xFF523D7F),
                ],
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  periodo,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
                Image.asset(
                  Functions.imageWeather(info![0].tempo),
                ),
                Text(
                  '${info![0].graus}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BlocProvider(
                  create: (context) => FeedbackCubit(),
                  child: const FeedbackPage(),
                ),
              ),
            );
          },
        ),
      );
}
