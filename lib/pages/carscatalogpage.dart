import 'package:app1/models/car.dart';
import 'package:flutter/material.dart';

class CarsCatalogPage extends StatefulWidget {
  // Define the route as a constant string
  static const route = '/carsCatalog';

  const CarsCatalogPage({super.key});

  @override
  _CarsCatalogPageState createState() => _CarsCatalogPageState();
}

class _CarsCatalogPageState extends State<CarsCatalogPage> {
  bool isKm = true;

  @override
  Widget build(BuildContext context) {
    List<Car> cars = [
      Car(name: " Sedan: Toyota Camry (2024)", mileage: 11900, maxSpeed: 217),
      Car(name: "Hatchback: Honda Fit (2023)", mileage: 14000, maxSpeed: 185),
      Car(name: "Sports Car: Porsche 911 Carrera (2024)", mileage: 7700, maxSpeed: 293),
      Car(name: " Luxury Sedan: Mercedes-Benz S-Class (2024)", mileage: 9300, maxSpeed: 250),
      Car(name: " Compact SUV: Hyundai Tucson (2024)", mileage: 12700, maxSpeed: 201),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Car catalog'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 221, 188, 254),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Switch units:",
                  style: TextStyle(fontSize: 16),
                ),
                Switch(
                  value: isKm,
                  onChanged: (value) {
                    setState(() {
                      isKm = value;
                    });
                  },
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: cars.length,
                itemBuilder: (context, index) {
                  final car = cars[index];
                  return Card(
                    margin: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text(car.name),
                      subtitle: Text(
                        'Mileage: ${isKm ? car.mileage : car.convertKmToMiles()} ${isKm ? "km" : "mile"}\n'
                        'Max. speed: ${isKm ? car.maxSpeed : car.convertMaxSpeedToMiles()} ${isKm ? "km/h" : "mile/h"}',
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
