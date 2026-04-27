import 'package:flutter/material.dart';

class BiodataPage extends StatelessWidget {
  const BiodataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profil"), centerTitle: true),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            // FOTO
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/angel.jpg'),
            ),
            const SizedBox(height: 16),
            // NAMA
            const Text(
              "Angelina Safara",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            const Text("3124521004", style: TextStyle(color: Colors.grey)),
            const Text(
              "angelsafa128@gmail.com",
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 30),
            // CARD DATA
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: const [
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text("+62 812 3456 7890"),
                  ),
                  Divider(height: 1),
                  ListTile(
                    leading: Icon(Icons.location_on),
                    title: Text("Lamongan, Indonesia"),
                  ),
                  Divider(height: 1),
                  ListTile(
                    leading: Icon(Icons.calendar_today),
                    title: Text("12 Agustus 2006"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}