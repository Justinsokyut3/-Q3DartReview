void main() {
  double celsius = 25.0;
  double fahrenheit = 100.0;

  print('=== Temperature Converter ===');


   double convertedToF = celsiusToFahrenheit(celsius);
  print('${celsius}°C = ${convertedToF.toStringAsFixed(1)}°F');
  
  double convertedToC = fahrenheitToCelsius(fahrenheit);
  print('${fahrenheit}°F = ${convertedToC.toStringAsFixed(1)}°C');
  

 describeWeather(convertedToC);
 describeWeather(celsius);

}

double fahrenheitToCelsius(double fahrenheit) {
  double calculateCelsius = (fahrenheit - 32) * 5 / 9;
  return calculateCelsius;
}

double celsiusToFahrenheit(double celsius) {
  double calculateFahrenheit = (celsius * 9 / 5) + 32;
  return calculateFahrenheit;
}

void describeWeather(double celsius) {
  String description;
  String activity;

  if (celsius <= 25.0) {
    description = 'Warm and pleasant';
    activity = 'Great weather for outdoor activities';
    
  } else { 
    description = 'Extremely hot';
    activity = 'Avoid outdoor activities during peak hours!';
  }

  print('${celsius.toStringAsFixed(1)}°C: $description - $activity');

}

