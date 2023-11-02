import 'package:flutter/material.dart';
import 'package:nobuzz_app/helpers/functions.dart';
import 'package:nobuzz_app/model/weather_model.dart';

class ListViewItemWidget extends StatelessWidget {
  final String weekday;
  final List<Info> manha;

  const ListViewItemWidget({
    super.key,
    required this.weekday,
    required this.manha,
  });

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 1,
            child: Text(
              weekday,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                SizedBox(
                  width: 55,
                  height: 50,
                  child: Image.asset(
                    Functions.imageWeather(manha[0].tempo),
                  ),
                ),
                Text(
                  manha[0].tempo ?? 'Indisponível',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                )
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Text(
              '${manha[0].graus}°',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          )
        ],
      );
}
