import 'package:flutter/material.dart';
import 'package:ujian_frontend/pages/page2.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
class SummaryPage extends StatelessWidget {
  final List<Map<String, String>> data = [
    {'name': 'Siswa 1', 'description': 'Keterangan siswa 1'},
    {'name': 'Siswa 2', 'description': 'Keterangan siswa 2'},
    {'name': 'Siswa 3', 'description': 'Keterangan siswa 3'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ringkasan'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: data.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.person, color: Colors.blue),
            title: Text(data[index]['name']!),
            subtitle: Text(data[index]['description']!),
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Kembali ke Homepage'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SummaryPage()),
                );
              },
              child: Text('Kembali ke Formulir'),
            ),
          ],
        ),
      ),
    );
  }
}