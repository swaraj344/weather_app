// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherInfoImpl _$$WeatherInfoImplFromJson(Map<String, dynamic> json) =>
    _$WeatherInfoImpl(
      weather: (json['weather'] as List<dynamic>)
          .map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
      main: Main.fromJson(json['main'] as Map<String, dynamic>),
      sys: Sys.fromJson(json['sys'] as Map<String, dynamic>),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$WeatherInfoImplToJson(_$WeatherInfoImpl instance) =>
    <String, dynamic>{
      'weather': instance.weather,
      'main': instance.main,
      'sys': instance.sys,
      'name': instance.name,
    };

_$MainImpl _$$MainImplFromJson(Map<String, dynamic> json) => _$MainImpl(
      temp: (json['temp'] as num).toDouble(),
      feelsLike: (json['feels_like'] as num).toDouble(),
      tempMin: (json['temp_min'] as num).toDouble(),
      tempMax: (json['temp_max'] as num).toDouble(),
    );

Map<String, dynamic> _$$MainImplToJson(_$MainImpl instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'temp_min': instance.tempMin,
      'temp_max': instance.tempMax,
    };

_$SysImpl _$$SysImplFromJson(Map<String, dynamic> json) => _$SysImpl(
      country: json['country'] as String,
      sunrise: json['sunrise'] as int,
      sunset: json['sunset'] as int,
    );

Map<String, dynamic> _$$SysImplToJson(_$SysImpl instance) => <String, dynamic>{
      'country': instance.country,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
    };

_$WeatherImpl _$$WeatherImplFromJson(Map<String, dynamic> json) =>
    _$WeatherImpl(
      id: json['id'] as int,
      main: json['main'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$WeatherImplToJson(_$WeatherImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
    };
