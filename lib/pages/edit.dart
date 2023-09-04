import 'package:flutter/material.dart';

class EditData extends StatefulWidget {
  const EditData({super.key});

  @override
  State<EditData> createState() => _EditDataState();
}

class _EditDataState extends State<EditData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Edit'),
      ),
      body: const Center(child: Text('Ini Halaman Edit')),
    );
  }
}
