import 'package:flutter/material.dart';
import 'package:nobuzz_app/helpers/functions.dart';
import 'package:nobuzz_app/helpers/style.dart';
import 'package:nobuzz_app/model/feedback_model.dart';

class FeedbackGridWidget extends StatelessWidget {
  final Result? result;

  const FeedbackGridWidget(this.result, {super.key});

  @override
  Widget build(BuildContext context) {
    final states = result!.estados;

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 5,
        mainAxisSpacing: 25,
      ),
      itemCount: result!.estados!.length,
      itemBuilder: (context, index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      states![index].toString(),
                    ),
                  ),
                ),
              ),
            ),
            Text(
              states[index],
              style: Style.conditionFeedbackPageText,
            ),
          ],
        );
      },
    );
  }
}
