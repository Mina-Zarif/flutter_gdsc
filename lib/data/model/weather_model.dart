class WeatherModel {
  String? main;
  String? description;
  int? pressure;
  String? city;

  WeatherModel({
    this.main,
    this.description,
    this.city,
    this.pressure,
  }); //Dart TO Dart

// Json TO Dart
  WeatherModel.fromJson(Map<String, dynamic> json) {
    main = json['weather'][0]['main'] as String?;
    description = json['weather'][0]['description'] as String?;
    pressure = json['main']['pressure'] as int?;
    city = json['name'] as String?;
  }

  // Dart To Json
  Map<String, dynamic> toJson() {
    return {
      "main": main,
      "description": description,
      "pressure": pressure,
      "city": city,
    };
  }
}

//{

//     "weather": [
//         {
//             "id": 800,
//             "main": "Clear",
//             "description": "clear sky",
//             "icon": "01n"
//         }
//     ],
//     "base": "stations",
//     "main": {
//         "temp": 298.57,
//         "feels_like": 297.87,
//         "temp_min": 296.16,
//         "temp_max": 298.57,
//         "pressure": 1014,
//         "humidity": 27
//     },
//     "visibility": 10000,
//     "wind": {
//         "speed": 6.17,
//         "deg": 50
//     },
//     "clouds": {
//         "all": 0
//     },
//     "dt": 1715196244,
//     "sys": {
//         "type": 1,
//         "id": 2514,
//         "country": "EG",
//         "sunrise": 1715137569,
//         "sunset": 1715186209
//     },
//     "timezone": 10800,
//     "id": 360630,
//     "name": "Cairo",
//     "cod": 200
// }
