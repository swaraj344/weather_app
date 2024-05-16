import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:weather_app/core/failures.dart';
import 'package:weather_app/data/models/popular_cities.dart';
import 'package:weather_app/data/models/weather_info.dart';
import 'package:weather_app/data/popular_cities.dart';

class WeatherService {
  final String endpoint = "https://api.openweathermap.org";

  late final Dio client;

  WeatherService() {
    client = Dio(BaseOptions(
      baseUrl: endpoint,
      queryParameters: {
        "APPID": "7c6d111754fb88c4a738f49f7e343714",
      },
    ));
  }

  /// Retrieves the weather information for a given city.
  ///
  /// Parameters:
  ///   - city: The name of the city for which to retrieve the weather information.
  ///
  /// Returns:
  ///   - A `Future` that resolves to an `Either` type. The `Either` type represents
  ///     either a success with the weather information (`WeatherInfo`) or a failure
  ///     with an `InfraFailure`.
  ///
  /// Throws:
  ///   - A `DioException` if there is an error with the HTTP request.
  ///   - Any other exception that occurs during the execution of the function.
  Future<Either<InfraFailure, WeatherInfo>> getWeather(String city) async {
    try {
      final response = await client.get("/data/2.5/weather", queryParameters: {
        "q": city,
        "units": "metric",
      });
      if (response.statusCode == 200) {
        return right(WeatherInfo.fromJson(response.data));
      }

      return left(const InfraFailure.unexpected());
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionError ||
          e.type == DioExceptionType.connectionTimeout) {
        return left(const InfraFailure.noInternet());
      }

      if (e.response?.statusCode == 404) {
        return left(InfraFailure.serverError(
          errorMessage: e.response?.data['message'] ?? "City Not Found",
        ));
      }
      return left(InfraFailure.serverError(
        errorMessage: e.response?.data['message'] ?? "Unknown error",
      ));
    } catch (e) {
      return left(InfraFailure.unexpected(errorMessage: e.toString()));
    }
  }

  List<PopularCity> getPopularCities() {
    return cities.map((e) => PopularCity.fromJson(e)).toList();
  }
}
