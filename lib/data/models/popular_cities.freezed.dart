// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popular_cities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PopularCity _$PopularCityFromJson(Map<String, dynamic> json) {
  return _PopularCity.fromJson(json);
}

/// @nodoc
mixin _$PopularCity {
  String get city => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PopularCityCopyWith<PopularCity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularCityCopyWith<$Res> {
  factory $PopularCityCopyWith(
          PopularCity value, $Res Function(PopularCity) then) =
      _$PopularCityCopyWithImpl<$Res, PopularCity>;
  @useResult
  $Res call({String city, String state});
}

/// @nodoc
class _$PopularCityCopyWithImpl<$Res, $Val extends PopularCity>
    implements $PopularCityCopyWith<$Res> {
  _$PopularCityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
    Object? state = null,
  }) {
    return _then(_value.copyWith(
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PopularCityImplCopyWith<$Res>
    implements $PopularCityCopyWith<$Res> {
  factory _$$PopularCityImplCopyWith(
          _$PopularCityImpl value, $Res Function(_$PopularCityImpl) then) =
      __$$PopularCityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String city, String state});
}

/// @nodoc
class __$$PopularCityImplCopyWithImpl<$Res>
    extends _$PopularCityCopyWithImpl<$Res, _$PopularCityImpl>
    implements _$$PopularCityImplCopyWith<$Res> {
  __$$PopularCityImplCopyWithImpl(
      _$PopularCityImpl _value, $Res Function(_$PopularCityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
    Object? state = null,
  }) {
    return _then(_$PopularCityImpl(
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PopularCityImpl implements _PopularCity {
  const _$PopularCityImpl({required this.city, required this.state});

  factory _$PopularCityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PopularCityImplFromJson(json);

  @override
  final String city;
  @override
  final String state;

  @override
  String toString() {
    return 'PopularCity(city: $city, state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopularCityImpl &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, city, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PopularCityImplCopyWith<_$PopularCityImpl> get copyWith =>
      __$$PopularCityImplCopyWithImpl<_$PopularCityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PopularCityImplToJson(
      this,
    );
  }
}

abstract class _PopularCity implements PopularCity {
  const factory _PopularCity(
      {required final String city,
      required final String state}) = _$PopularCityImpl;

  factory _PopularCity.fromJson(Map<String, dynamic> json) =
      _$PopularCityImpl.fromJson;

  @override
  String get city;
  @override
  String get state;
  @override
  @JsonKey(ignore: true)
  _$$PopularCityImplCopyWith<_$PopularCityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
