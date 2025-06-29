import 'package:space_travel/pilot.dart';
import 'package:space_travel/planet.dart';

class Spaceship {
  final Pilot pilot;

  final List<Planet> _flightRecords;

  Planet get position => _flightRecords.last;

  List<Planet> get flightRecords => List.unmodifiable(_flightRecords);

  Spaceship({required this.pilot, required Planet position})
    : _flightRecords = [position];

  void travelTo(Planet planet) {
    if (_flightRecords.last == planet) {
      throw StateError('the spaceship is already on this planet');
    }
    _flightRecords.add(planet);
  }

  void goHome() {
    travelTo(_flightRecords.first);
  }
}
