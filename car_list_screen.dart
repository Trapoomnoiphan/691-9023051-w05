import 'package:flutter/material.dart';
import '../data/car_data.dart';
import 'car_detail_screen.dart';

class Gt3CarListScreen extends StatelessWidget {
  const Gt3CarListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GT3 Racing Collection"),
        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: gt3CarList.length,
        itemBuilder: (context, index) {
          final car = gt3CarList[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: ListTile(
              leading: SizedBox(
                width: 70,
                height: 50,
                child: Image.asset(
                  car.imagePaths[0], // แสดงภาพแรกของ List เป็นหน้าปก
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => const Icon(Icons.directions_car),
                ),
              ),
              title: Text(car.name, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text("${car.manufacturer} • ${car.horsepower} HP"),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Gt3CarDetailScreen(car: car),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}