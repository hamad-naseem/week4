class Weather {
  final String cityName;
  final double temperature;
  final double tempMin;
  final double tempMax;
  final String description;

  Weather({
    required this.cityName,
    required this.temperature,
    required this.tempMin,
    required this.tempMax,
    required this.description,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      cityName: json['name'],
      temperature: json['main']['temp'].toDouble(),
      tempMin: json['main']['temp_min'].toDouble(),
      tempMax: json['main']['temp_max'].toDouble(),
      description: json['weather'][0]['description'],
    );
  }
}
