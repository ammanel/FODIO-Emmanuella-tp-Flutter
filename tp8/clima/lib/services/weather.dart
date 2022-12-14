import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';

const String apiKey = "ec21610fc3f2330a46ac7c8e2fe062c8";
const String weatherOpenUrl = "https://api.openweathermap.org/data/2.5/weather";



class WeatherModel {


  Future<dynamic> getCityWeather(String cityName) async {
    String url = "$weatherOpenUrl?q=$cityName&appid=$apiKey&units=metric";
    NetworkHelper networkHelper = NetworkHelper(url);
    return await networkHelper.getData();
  }

  Future<dynamic> getLocationWeather() async {
    Location location = Location();
    location.getCurrentLocation();

    String latitude = location.latitude.toString();
    String longitude = location.longitude.toString();

    String url = "$weatherOpenUrl?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric";
    NetworkHelper networkHelper = NetworkHelper(url);
    return await networkHelper.getData();
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '๐ฉ';
    } else if (condition < 400) {
      return '๐ง';
    } else if (condition < 600) {
      return 'โ๏ธ';
    } else if (condition < 700) {
      return 'โ๏ธ';
    } else if (condition < 800) {
      return '๐ซ';
    } else if (condition == 800) {
      return 'โ๏ธ';
    } else if (condition <= 804) {
      return 'โ๏ธ';
    } else {
      return '๐คทโ';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'il est\' temps de payer une ๐ฆ  ';
    } else if (temp > 20) {
      return 'le temps des culottes et ๐';
    } else if (temp < 10) {
      return 'vous aurez besoin \'de ๐งฃ et ๐งค';
    } else {
      return 'prenez un  ๐งฅ au cas ou';
    }
  }
}
