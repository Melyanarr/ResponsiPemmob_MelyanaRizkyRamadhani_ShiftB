import 'package:flutter/material.dart';
import 'package:kesehatan/model/vaccine_schedule_model.dart';

class VaccineScheduleDetail extends StatelessWidget {
  final VaccineSchedule schedule;

  VaccineScheduleDetail({required this.schedule});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vaccine Schedule Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: ${schedule.personName}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Vaccine Type: ${schedule.vaccineType}', style: TextStyle(fontSize: 18)),
            Text('Age: ${schedule.age}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(); // Kembali ke halaman sebelumnya
              },
              child: Text('Back to List'),
            ),
          ],
        ),
      ),
    );
  }
}
