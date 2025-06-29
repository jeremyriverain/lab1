import 'package:space_travel/pilot.dart';
import 'package:space_travel/planet.dart';
import 'package:space_travel/spaceship.dart';

void main() {
  final pilot = Pilot(name: 'Obiwan');
  final spaceship = Spaceship(pilot: pilot, position: Planet.earth);

  spaceship
    ..travelTo(Planet.jupiter)
    ..travelTo(Planet.mars)
    ..travelTo(Planet.earth);

  for (final flightRecord in spaceship.flightRecords) {
    print(flightRecord);
  }
}
