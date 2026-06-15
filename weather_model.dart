class WeatherModel {
  final String city;
  final double temperature;
  final int humidity;
  final String condition;
  final double windSpeed;

  WeatherModel({
    required this.city,
    required this.temperature,
    required this.humidity,
    required this.condition,
    required this.windSpeed,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      city: json['name'],
      temperature: json['main']['temp'].toDouble(),
      humidity: json['main']['humidity'],
      condition: json['weather'][0]['description'],
      windSpeed: json['wind']['speed'].toDouble(),
    );
  }

  // ✔ SIMPLE FARMER-FRIENDLY WEATHER MESSAGE
  String get readableCondition {
    final c = condition.toLowerCase();

    if (c.contains("clear")) {
      return "Clear sky - Good farming conditions";
    } else if (c.contains("rain")) {
      return "Rainy weather - Good for crops";
    } else if (c.contains("cloud")) {
      return "Cloudy weather";
    } else {
      return condition;
    }
  }

  // ✔ FARMING ADVICE
  String get farmingAdvice {
    if (temperature > 30) {
      return "Hot weather - Increase irrigation";
    } else if (condition.toLowerCase().contains("rain")) {
      return "Rain expected - Avoid spraying crops";
    } else if (temperature < 15) {
      return "Cold weather - Protect sensitive crops";
    } else {
      return "Good conditions for farming activities";
    }
  }

  // ✔ NEW: CROP SUGGESTION FEATURE
  String get cropSuggestion {
    final c = condition.toLowerCase();

    if (temperature >= 30) {
      return "Recommended crops: Millet, Sorghum, Cassava (heat-resistant crops)";
    }

    if (temperature >= 20 && temperature < 30) {
      return "Recommended crops: Maize, Tomatoes, Beans, Cabbage";
    }

    if (temperature < 20) {
      return "Recommended crops: Irish potatoes, Kale, Spinach, Wheat";
    }

    if (c.contains("rain")) {
      return "Recommended crops: Vegetables, Beans, Sweet potatoes";
    }

    return "Recommended crops: Mixed farming suitable";
  }
}