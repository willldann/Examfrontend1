import 'package:flutter/material.dart';
import 'package:ujian_frontend/pages/page3.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController infoController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    descriptionController.dispose();
    infoController.dispose();
    super.dispose();
  }

  void _submitData() {
    if (nameController.text.isNotEmpty &&
        descriptionController.text.isNotEmpty &&
        infoController.text.isNotEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Data berhasil ditambahkan')),
      );

      nameController.clear();
      descriptionController.clear();
      infoController.clear();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill all fields')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Data'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Nama'),
            ),
            TextField(
              controller: descriptionController,
              decoration: const InputDecoration(labelText: 'Keterangan'),
            ),
            TextField(
              controller: infoController,
              decoration: const InputDecoration(labelText: 'Informasi'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submitData,
              child: const Text('Simpan'),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Kembali ke Homepage'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const FormPage()),
                    );
                  },
                  child: const Text('Lanjut ke Ringkasan'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
