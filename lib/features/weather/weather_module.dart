import 'package:flutter_modular/flutter_modular.dart';
import 'package:weather_app/data/models/weather_info.dart';
import 'package:weather_app/features/weather/view/weather.dart';
import 'package:weather_app/features/weather/view/weather_info.dart';

import 'bloc/weather_bloc.dart';

class WeatherModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child(
      "/",
      child: (context) => WeatherScreen(),
    );
    r.child(
      "/info",
      child: (context) =>
          WeatherInfoView(weatherInfo: Modular.args.data as WeatherInfo),
    );

    super.routes(r);
  }

  @override
  void binds(Injector i) {
    i.addLazySingleton(
      () => WeatherBloc(i.get())..add(const WeatherEvent.started()),
    );
  }
}
