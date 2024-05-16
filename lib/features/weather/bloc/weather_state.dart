part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState({
    required String cityName,
    required bool isLoading,
    required bool showError,
    required Option<Either<InfraFailure, Unit>> weatherFailureOrSuccessOption,
    required List<PopularCity> cities,
    required List<PopularCity> suggestedCities,
  }) = _WeatherState;

  factory WeatherState.initial() => WeatherState(
        cityName: "",
        isLoading: false,
        showError: false,
        weatherFailureOrSuccessOption: none(),
        cities: [],
        suggestedCities: [],
      );
}
