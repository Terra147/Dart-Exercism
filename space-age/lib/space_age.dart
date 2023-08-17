class SpaceAge {
  double age({required String planet, required int seconds}) {
    double year = seconds * 1 / 31557600;
    switch (planet) {
      case 'Earth':
        return double.parse((year).toStringAsFixed(2));
      case 'Mercury':
        return double.parse((year * 0.2408467).toStringAsFixed(2));
      case 'Venus':
        return double.parse((year * 0.61519726).toStringAsFixed(2));
      case 'Mars':
        return double.parse((year * 1.8808158).toStringAsFixed(2));
      case 'Jupiter':
        return double.parse((year * 11.862615).toStringAsFixed(2));
      case 'Saturn':
        return double.parse((year * 29.447498).toStringAsFixed(2));
      case 'Uranus':
        return double.parse((year * 84.016846).toStringAsFixed(2));
      case 'Neptune':
        return double.parse((year * 164.79132).toStringAsFixed(2));
      default:
        return (0);
    }
  }
}
