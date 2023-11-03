import 'package:flutter/material.dart';
import 'package:nobuzz_app/helpers/functions.dart';
import 'package:nobuzz_app/model/feedback_model.dart';

class FeedbackGridWidget extends StatelessWidget {
  final Result? result;

  const FeedbackGridWidget(this.result, {super.key});

  @override
  Widget build(BuildContext context) {
    final estados = result!.estados;

    return GridView.builder(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemCount: result!.estados!.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black.withOpacity(.3),
                image: DecorationImage(
                  image: AssetImage(
                    Functions.imageWeather(
                      estados![index].toString(),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                estados[index],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
