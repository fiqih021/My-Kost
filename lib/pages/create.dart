import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CreateData extends StatefulWidget {
  const CreateData({super.key});

  @override
  State<CreateData> createState() => _CreateDataState();
}

class _CreateDataState extends State<CreateData> {
  final CollectionReference _penghuni =
      FirebaseFirestore.instance.collection('penghuni');
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _kamarController = TextEditingController();
  final TextEditingController _hpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _namaController,
              decoration: const InputDecoration(
                labelText: "Nama",
              ),
            ),
            TextField(
              controller: _namaController,
              decoration: const InputDecoration(
                labelText: "Kamar",
              ),
            ),
            TextField(
              controller: _namaController,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                labelText: "Nomor Hp",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
