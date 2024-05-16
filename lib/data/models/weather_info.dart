// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'weather_info.freezed.dart';
part 'weather_info.g.dart';

@freezed
class WeatherInfo with _$WeatherInfo {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
  )
  const factory WeatherInfo({
    required List<Weather> weather,
    required Main main,
    required Sys sys,
    required String name,
  }) = _WeatherInfo;

  factory WeatherInfo.fromJson(Map<String, dynamic> json) =>
      _$WeatherInfoFromJson(json);
}

@freezed
class Main with _$Main {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
  )
  const factory Main({
    required double temp,
    required double feelsLike,
    required double tempMin,
    required double tempMax,
  }) = _Main;

  factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);
}

@freezed
class Sys with _$Sys {
  const factory Sys({
    required String country,
    required int sunrise,
    required int sunset,
  }) = _Sys;

  factory Sys.fromJson(Map<String, dynamic> json) => _$SysFromJson(json);
}

@freezed
class Weather with _$Weather {
  const factory Weather({
    required int id,
    required String main,
    required String description,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}
