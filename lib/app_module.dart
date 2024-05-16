import 'package:flutter_modular/flutter_modular.dart';
import 'package:weather_app/data/services/weather_service.dart';
import 'package:weather_app/features/weather/weather_module.dart';

class AppModule extends Module {
  @override
  void routes(RouteManager r) {
    r.module("/", module: WeatherModule());

    super.routes(r);
  }

  @override
  void binds(Injector i) {
    i.addLazySingleton(() => WeatherService());
    super.binds(i);
  }
}
