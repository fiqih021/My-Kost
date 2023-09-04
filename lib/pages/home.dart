import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final CollectionReference _penghuni =
      FirebaseFirestore.instance.collection('penghuni');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Kost'),
      ),
      body: StreamBuilder(
          stream: _penghuni.snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
            if (streamSnapshot.hasData) {
              return ListView.builder(
                  itemCount: streamSnapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    final DocumentSnapshot documentSnapshot =
                        streamSnapshot.data!.docs[index];
                    return Card(
                      color: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      margin: const EdgeInsets.all(10),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 17,
                          backgroundColor: Colors.white,
                          child: Text(documentSnapshot['kamar'],
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green)),
                        ),
                        title: Text(documentSnapshot['nama'].toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        subtitle: Text(documentSnapshot['hp'],
                            style: const TextStyle(
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.italic,
                                color: Colors.white)),
                        trailing: SizedBox(
                          width: 100,
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Navigator.of(context).pushNamed('edit',
                                        arguments: documentSnapshot);
                                  },
                                  color: Colors.white,
                                  icon: const Icon(Icons.edit)),
                              IconButton(
                                  onPressed: () {
                                    _penghuni.doc(documentSnapshot.id).delete();
                                  },
                                  color: Colors.white,
                                  icon: const Icon(Icons.delete)),
                            ],
                          ),
                        ),
                      ),
                    );
                  });
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('create');
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.add),
      ),
    );
  }
}
