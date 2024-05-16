import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/core/failures.dart';

import '../../../data/models/popular_cities.dart';
import '../../../data/services/weather_service.dart';

part 'weather_event.dart';
part 'weather_state.dart';
part 'weather_bloc.freezed.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherService service;
  WeatherBloc(this.service) : super(WeatherState.initial()) {
    on<WeatherEvent>((event, emit) async {
      await event.whenOrNull(
        started: () {
          emit(state.copyWith(
            cities: service.getPopularCities(),
            suggestedCities: service.getPopularCities(),
          ));
        },
        cityInputChange: (value) {
          emit(state.copyWith(
              cityName: value,
              suggestedCities: state.cities
                  .where((element) =>
                      element.city.toLowerCase().contains(value.toLowerCase()))
                  .toList()));
        },
        getWeatherClicked: () async {
          emit(state.copyWith(
            showError: true,
            weatherFailureOrSuccessOption: none(),
          ));
          if (state.cityName.isNotEmpty) {
            emit(state.copyWith(
              isLoading: true,
              weatherFailureOrSuccessOption: none(),
            ));
            await service.getWeather(state.cityName).then((value) {
              value.fold((l) {
                emit(state.copyWith(
                  isLoading: false,
                  weatherFailureOrSuccessOption: some(left(l)),
                ));
              }, (r) {
                Modular.to.pushNamed("/info", arguments: r);

                emit(state.copyWith(
                  isLoading: false,
                  weatherFailureOrSuccessOption: none(),
                ));
              });
            });
          }
        },
      );
    });
  }
}
