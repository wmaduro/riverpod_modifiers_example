import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:riverpod_modifiers_example/widget/text_widget.dart';

final cityProvider = Provider<String>((ref) => 'Munich');

Future<int> fetchWeather(String city) async {
  await Future.delayed(Duration(seconds: 2));

  return city == 'Munich' ? 20 : 15;
}

final futureCityTemperatureProvider = FutureProvider<int>((ref) async {
  final cityTemperature = ref.watch(cityProvider);

  return fetchWeather(cityTemperature);
});

class CombinedProvidersPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, watch) {
    final _futureCityTemperatureProvider = watch(futureCityTemperatureProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Combining Providers'),
      ),
      body: Center(
        child: _futureCityTemperatureProvider.when(
          data: (cityTemperature) => TextWidget(cityTemperature.toString()),
          loading: () => CircularProgressIndicator(),
          error: (e, stack) => TextWidget('Error: $e'),
        ),
      ),
    );
  }
}
