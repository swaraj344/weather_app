import 'package:freezed_annotation/freezed_annotation.dart';

part 'popular_cities.freezed.dart';
part 'popular_cities.g.dart';

@freezed
class PopularCity with _$PopularCity {
  const factory PopularCity({
    required String city,
    required String state,
  }) = _PopularCity;

  factory PopularCity.fromJson(Map<String, dynamic> json) =>
      _$PopularCityFromJson(json);
}
