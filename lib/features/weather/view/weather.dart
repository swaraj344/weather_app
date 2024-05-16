import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:weather_app/features/weather/bloc/weather_bloc.dart';

class WeatherScreen extends StatelessWidget {
  final WeatherBloc bloc;
  WeatherScreen({super.key}) : bloc = Modular.get<WeatherBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Search Weather"),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: BlocBuilder<WeatherBloc, WeatherState>(
          bloc: bloc,
          builder: (context, state) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (state.isLoading) const LinearProgressIndicator(),
                SizedBox(
                  width: double.maxFinite,
                  child: FloatingActionButton.extended(
                    onPressed: state.isLoading
                        ? null
                        : () {
                            bloc.add(const WeatherEvent.getWeatherClicked());
                          },
                    label: const Text("Get Weather"),
                    icon: const Icon(Icons.ac_unit),
                  ),
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            BlocConsumer<WeatherBloc, WeatherState>(
              listenWhen: (previous, current) {
                return previous.weatherFailureOrSuccessOption !=
                    current.weatherFailureOrSuccessOption;
              },
              listener: (context, state) {
                state.weatherFailureOrSuccessOption.map((a) {
                  a.fold((l) {
                    l.when(
                      serverError: (message) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.red,
                            content: Text(message ?? "Server Error!!"),
                          ),
                        );
                      },
                      unexpected: (message) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.red,
                            content: Text(message ?? "Server Error!!"),
                          ),
                        );
                      },
                      noInternet: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            backgroundColor: Colors.red,
                            content: Text("No Internet Connection!!"),
                          ),
                        );
                      },
                    );
                  }, (r) => null);
                });
              },
              buildWhen: (previous, current) =>
                  previous.showError != current.showError,
              bloc: bloc,
              builder: (context, state) {
                return TextFormField(
                  controller: TextEditingController(
                    text: state.cityName,
                  ),
                  autovalidateMode: state.showError
                      ? AutovalidateMode.always
                      : AutovalidateMode.disabled,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter city name';
                    }
                    return null;
                  },
                  autofillHints: const [AutofillHints.addressCity],
                  onChanged: (value) {
                    bloc.add(WeatherEvent.cityInputChange(value));
                  },
                  decoration: const InputDecoration(
                      labelText: "Enter city name",
                      isDense: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      suffixIcon: Icon(Icons.my_location)),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Suggested cities"),
            const Divider(),
            Expanded(
                child: BlocBuilder<WeatherBloc, WeatherState>(
              bloc: bloc,
              builder: (context, state) {
                if (state.suggestedCities.isEmpty) {
                  return ListTile(
                    onTap: () {
                      bloc.add(const WeatherEvent.getWeatherClicked());
                    },
                    title: Text.rich(
                      TextSpan(
                        text: "Search For ",
                        children: [
                          TextSpan(
                              text: state.cityName,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ))
                        ],
                      ),
                    ),
                    trailing: const Icon(Icons.location_city),
                  );
                }

                return ListView.builder(
                    padding: const EdgeInsets.only(bottom: 100),
                    itemCount: state.suggestedCities.length,
                    itemBuilder: (context, index) {
                      final city = state.suggestedCities[index];
                      return ListTile(
                        onTap: () {
                          bloc.add(WeatherEvent.cityInputChange(city.city));
                          bloc.add(const WeatherEvent.getWeatherClicked());
                        },
                        title: Text(city.city),
                        subtitle: Text(city.state),
                        trailing: const Icon(Icons.location_city),
                      );
                    });
              },
            ))
          ],
        ),
      ),
    );
  }
}
