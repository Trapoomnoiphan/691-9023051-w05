import 'package:flutter/material.dart';
import '../models/car.dart';
import 'package:intl/intl.dart';

class Gt3CarDetailScreen extends StatelessWidget {
  final Gt3Car car;

  // บรรทัดด้านล่างนี้คือจุดที่เคยมีปัญหา ให้แก้ไขให้เหลือแค่นี้ครับ:
  const Gt3CarDetailScreen({super.key, required this.car}); 

  // ฟังก์ชันแสดงรูปภาพขนาดเต็มหน้าจอ
  void _showFullImage(BuildContext context, String imagePath) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black,
              iconTheme: const IconThemeData(color: Colors.white),
            ),
            backgroundColor: Colors.black,
            body: Center(
              child: InteractiveViewer(
                maxScale: 4.0,
                child: Image.asset(imagePath),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final numberFormat = NumberFormat('#,###');

    return Scaffold(
      appBar: AppBar(title: Text("${car.id}-${car.name}")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "ID: GT3-00${car.id}",
              style: const TextStyle(color: Colors.grey, fontSize: 14),
            ),
            const SizedBox(height: 4),
            Text(
              "Manufacturer: ${car.manufacturer}",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            Text(
              "Engine: ${car.engine}",
              style: const TextStyle(fontSize: 16),
            ),
            Text(
              "Performance: ${car.horsepower} HP",
              style: const TextStyle(fontSize: 16, color: Colors.redAccent),
            ),
            Text(
              "Estimated Price: ฿${numberFormat.format(car.price)}",
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.green),
            ),
            const SizedBox(height: 20),
            const Text(
              "Gallery (Tap to view full image)",
              style: TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: car.imagePaths.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: GestureDetector(
                      onTap: () => _showFullImage(context, car.imagePaths[index]),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          car.imagePaths[index],
                          fit: BoxFit.cover,
                          width: 280,
                          errorBuilder: (context, error, stackTrace) => Container(
                            width: 280,
                            color: Colors.grey[300],
                            child: const Icon(Icons.broken_image, size: 50),
                          ),
                        ),
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