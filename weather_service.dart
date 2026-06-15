import 'dart:convert';
import 'package:http/http.dart' as http;
import '../config/api_keys.dart';
import '../models/weather_model.dart';

class WeatherService {
  static Future<WeatherModel> getWeather(String city) async {
    final url =
        "https://api.openweathermap.org/data/2.5/weather"
        "?q=$city"
        "&appid=${ApiKeys.weatherKey}"
        "&units=metric"
        "&lang=en";

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return WeatherModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Failed to load weather data");
    }
  }
}