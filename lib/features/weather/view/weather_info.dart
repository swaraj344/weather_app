import 'package:flutter/material.dart';
import 'package:weather_app/data/models/weather_info.dart';

class WeatherInfoView extends StatelessWidget {
  final WeatherInfo weatherInfo;
  const WeatherInfoView({super.key, required this.weatherInfo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${weatherInfo.name}, ${weatherInfo.sys.country}",
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (weatherInfo.weather.isNotEmpty)
              WeatherIcon(
                weatherDescription: weatherInfo.weather[0].description,
              ),
            const SizedBox(
              height: 14,
            ),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                  style: Theme.of(context).textTheme.displayLarge,
                  text: weatherInfo.main.temp.toInt().toString(),
                ),
                WidgetSpan(
                  child: Transform.translate(
                    offset: const Offset(0, -24),
                    child: const Text("°C",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          // fontFeatures: [FontFeature.superscripts()],
                        )),
                  ),
                ),
              ]),
            ),
            if (weatherInfo.weather.isNotEmpty)
              Text(
                weatherInfo.weather[0].description,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "${weatherInfo.main.tempMin} ~ ${weatherInfo.main.tempMin}°C",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  "Feels like ${weatherInfo.main.feelsLike}°C",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class WeatherIcon extends StatelessWidget {
  final String weatherDescription;
  const WeatherIcon({
    super.key,
    required this.weatherDescription,
  });

  getWeatherIcon() {
    if (weatherDescription.contains("cloud")) {
      return "🌤️";
    }
    if (weatherDescription.contains("rain")) {
      return "🌧️";
    }
    if (weatherDescription.contains("sun")) {
      return "☀️";
    }
    if (weatherDescription.contains("snow")) {
      return "🌨️";
    }
    if (weatherDescription.contains("storm")) {
      return "⛈️";
    }
    if (weatherDescription.contains("mist")) {
      return "🌫️";
    }
    if (weatherDescription.contains("smoke")) {
      return "🌫️";
    }
    return "🌤️";
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      getWeatherIcon(),
      style: const TextStyle(
        fontSize: 120,
      ),
    );
  }
}
