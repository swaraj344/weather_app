// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeatherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String value) cityInputChange,
    required TResult Function() getWeatherClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String value)? cityInputChange,
    TResult? Function()? getWeatherClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String value)? cityInputChange,
    TResult Function()? getWeatherClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CityInputChange value) cityInputChange,
    required TResult Function(_GetWeatherClicked value) getWeatherClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CityInputChange value)? cityInputChange,
    TResult? Function(_GetWeatherClicked value)? getWeatherClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CityInputChange value)? cityInputChange,
    TResult Function(_GetWeatherClicked value)? getWeatherClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res, WeatherEvent>;
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res, $Val extends WeatherEvent>
    implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'WeatherEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String value) cityInputChange,
    required TResult Function() getWeatherClicked,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String value)? cityInputChange,
    TResult? Function()? getWeatherClicked,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String value)? cityInputChange,
    TResult Function()? getWeatherClicked,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CityInputChange value) cityInputChange,
    required TResult Function(_GetWeatherClicked value) getWeatherClicked,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CityInputChange value)? cityInputChange,
    TResult? Function(_GetWeatherClicked value)? getWeatherClicked,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CityInputChange value)? cityInputChange,
    TResult Function(_GetWeatherClicked value)? getWeatherClicked,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements WeatherEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$CityInputChangeImplCopyWith<$Res> {
  factory _$$CityInputChangeImplCopyWith(_$CityInputChangeImpl value,
          $Res Function(_$CityInputChangeImpl) then) =
      __$$CityInputChangeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$CityInputChangeImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$CityInputChangeImpl>
    implements _$$CityInputChangeImplCopyWith<$Res> {
  __$$CityInputChangeImplCopyWithImpl(
      _$CityInputChangeImpl _value, $Res Function(_$CityInputChangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$CityInputChangeImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CityInputChangeImpl implements _CityInputChange {
  const _$CityInputChangeImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'WeatherEvent.cityInputChange(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityInputChangeImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityInputChangeImplCopyWith<_$CityInputChangeImpl> get copyWith =>
      __$$CityInputChangeImplCopyWithImpl<_$CityInputChangeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String value) cityInputChange,
    required TResult Function() getWeatherClicked,
  }) {
    return cityInputChange(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String value)? cityInputChange,
    TResult? Function()? getWeatherClicked,
  }) {
    return cityInputChange?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String value)? cityInputChange,
    TResult Function()? getWeatherClicked,
    required TResult orElse(),
  }) {
    if (cityInputChange != null) {
      return cityInputChange(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CityInputChange value) cityInputChange,
    required TResult Function(_GetWeatherClicked value) getWeatherClicked,
  }) {
    return cityInputChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CityInputChange value)? cityInputChange,
    TResult? Function(_GetWeatherClicked value)? getWeatherClicked,
  }) {
    return cityInputChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CityInputChange value)? cityInputChange,
    TResult Function(_GetWeatherClicked value)? getWeatherClicked,
    required TResult orElse(),
  }) {
    if (cityInputChange != null) {
      return cityInputChange(this);
    }
    return orElse();
  }
}

abstract class _CityInputChange implements WeatherEvent {
  const factory _CityInputChange(final String value) = _$CityInputChangeImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$CityInputChangeImplCopyWith<_$CityInputChangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetWeatherClickedImplCopyWith<$Res> {
  factory _$$GetWeatherClickedImplCopyWith(_$GetWeatherClickedImpl value,
          $Res Function(_$GetWeatherClickedImpl) then) =
      __$$GetWeatherClickedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetWeatherClickedImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$GetWeatherClickedImpl>
    implements _$$GetWeatherClickedImplCopyWith<$Res> {
  __$$GetWeatherClickedImplCopyWithImpl(_$GetWeatherClickedImpl _value,
      $Res Function(_$GetWeatherClickedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetWeatherClickedImpl implements _GetWeatherClicked {
  const _$GetWeatherClickedImpl();

  @override
  String toString() {
    return 'WeatherEvent.getWeatherClicked()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetWeatherClickedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String value) cityInputChange,
    required TResult Function() getWeatherClicked,
  }) {
    return getWeatherClicked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String value)? cityInputChange,
    TResult? Function()? getWeatherClicked,
  }) {
    return getWeatherClicked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String value)? cityInputChange,
    TResult Function()? getWeatherClicked,
    required TResult orElse(),
  }) {
    if (getWeatherClicked != null) {
      return getWeatherClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CityInputChange value) cityInputChange,
    required TResult Function(_GetWeatherClicked value) getWeatherClicked,
  }) {
    return getWeatherClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CityInputChange value)? cityInputChange,
    TResult? Function(_GetWeatherClicked value)? getWeatherClicked,
  }) {
    return getWeatherClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CityInputChange value)? cityInputChange,
    TResult Function(_GetWeatherClicked value)? getWeatherClicked,
    required TResult orElse(),
  }) {
    if (getWeatherClicked != null) {
      return getWeatherClicked(this);
    }
    return orElse();
  }
}

abstract class _GetWeatherClicked implements WeatherEvent {
  const factory _GetWeatherClicked() = _$GetWeatherClickedImpl;
}

/// @nodoc
mixin _$WeatherState {
  String get cityName => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;
  Option<Either<InfraFailure, Unit>> get weatherFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  List<PopularCity> get cities => throw _privateConstructorUsedError;
  List<PopularCity> get suggestedCities => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherStateCopyWith<WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res, WeatherState>;
  @useResult
  $Res call(
      {String cityName,
      bool isLoading,
      bool showError,
      Option<Either<InfraFailure, Unit>> weatherFailureOrSuccessOption,
      List<PopularCity> cities,
      List<PopularCity> suggestedCities});
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res, $Val extends WeatherState>
    implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityName = null,
    Object? isLoading = null,
    Object? showError = null,
    Object? weatherFailureOrSuccessOption = null,
    Object? cities = null,
    Object? suggestedCities = null,
  }) {
    return _then(_value.copyWith(
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      weatherFailureOrSuccessOption: null == weatherFailureOrSuccessOption
          ? _value.weatherFailureOrSuccessOption
          : weatherFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<InfraFailure, Unit>>,
      cities: null == cities
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<PopularCity>,
      suggestedCities: null == suggestedCities
          ? _value.suggestedCities
          : suggestedCities // ignore: cast_nullable_to_non_nullable
              as List<PopularCity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherStateImplCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$$WeatherStateImplCopyWith(
          _$WeatherStateImpl value, $Res Function(_$WeatherStateImpl) then) =
      __$$WeatherStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String cityName,
      bool isLoading,
      bool showError,
      Option<Either<InfraFailure, Unit>> weatherFailureOrSuccessOption,
      List<PopularCity> cities,
      List<PopularCity> suggestedCities});
}

/// @nodoc
class __$$WeatherStateImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherStateImpl>
    implements _$$WeatherStateImplCopyWith<$Res> {
  __$$WeatherStateImplCopyWithImpl(
      _$WeatherStateImpl _value, $Res Function(_$WeatherStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityName = null,
    Object? isLoading = null,
    Object? showError = null,
    Object? weatherFailureOrSuccessOption = null,
    Object? cities = null,
    Object? suggestedCities = null,
  }) {
    return _then(_$WeatherStateImpl(
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      weatherFailureOrSuccessOption: null == weatherFailureOrSuccessOption
          ? _value.weatherFailureOrSuccessOption
          : weatherFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<InfraFailure, Unit>>,
      cities: null == cities
          ? _value._cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<PopularCity>,
      suggestedCities: null == suggestedCities
          ? _value._suggestedCities
          : suggestedCities // ignore: cast_nullable_to_non_nullable
              as List<PopularCity>,
    ));
  }
}

/// @nodoc

class _$WeatherStateImpl implements _WeatherState {
  const _$WeatherStateImpl(
      {required this.cityName,
      required this.isLoading,
      required this.showError,
      required this.weatherFailureOrSuccessOption,
      required final List<PopularCity> cities,
      required final List<PopularCity> suggestedCities})
      : _cities = cities,
        _suggestedCities = suggestedCities;

  @override
  final String cityName;
  @override
  final bool isLoading;
  @override
  final bool showError;
  @override
  final Option<Either<InfraFailure, Unit>> weatherFailureOrSuccessOption;
  final List<PopularCity> _cities;
  @override
  List<PopularCity> get cities {
    if (_cities is EqualUnmodifiableListView) return _cities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cities);
  }

  final List<PopularCity> _suggestedCities;
  @override
  List<PopularCity> get suggestedCities {
    if (_suggestedCities is EqualUnmodifiableListView) return _suggestedCities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestedCities);
  }

  @override
  String toString() {
    return 'WeatherState(cityName: $cityName, isLoading: $isLoading, showError: $showError, weatherFailureOrSuccessOption: $weatherFailureOrSuccessOption, cities: $cities, suggestedCities: $suggestedCities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherStateImpl &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.showError, showError) ||
                other.showError == showError) &&
            (identical(other.weatherFailureOrSuccessOption,
                    weatherFailureOrSuccessOption) ||
                other.weatherFailureOrSuccessOption ==
                    weatherFailureOrSuccessOption) &&
            const DeepCollectionEquality().equals(other._cities, _cities) &&
            const DeepCollectionEquality()
                .equals(other._suggestedCities, _suggestedCities));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      cityName,
      isLoading,
      showError,
      weatherFailureOrSuccessOption,
      const DeepCollectionEquality().hash(_cities),
      const DeepCollectionEquality().hash(_suggestedCities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherStateImplCopyWith<_$WeatherStateImpl> get copyWith =>
      __$$WeatherStateImplCopyWithImpl<_$WeatherStateImpl>(this, _$identity);
}

abstract class _WeatherState implements WeatherState {
  const factory _WeatherState(
      {required final String cityName,
      required final bool isLoading,
      required final bool showError,
      required final Option<Either<InfraFailure, Unit>>
          weatherFailureOrSuccessOption,
      required final List<PopularCity> cities,
      required final List<PopularCity> suggestedCities}) = _$WeatherStateImpl;

  @override
  String get cityName;
  @override
  bool get isLoading;
  @override
  bool get showError;
  @override
  Option<Either<InfraFailure, Unit>> get weatherFailureOrSuccessOption;
  @override
  List<PopularCity> get cities;
  @override
  List<PopularCity> get suggestedCities;
  @override
  @JsonKey(ignore: true)
  _$$WeatherStateImplCopyWith<_$WeatherStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
