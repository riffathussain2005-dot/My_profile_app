import 'package:flutter/material.dart';
import '../models/user.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/about');
        },
        child: const Icon(Icons.info_outline),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage(userData.imagePath),
            ),
            const SizedBox(height: 20),
            Text(
              userData.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              userData.profession,
              style: const TextStyle(fontSize: 18, color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                userData.bio,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(12),
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.email),
                    title: Text(userData.email),
                  ),
                  ListTile(
                    leading: const Icon(Icons.phone),
                    title: Text(userData.phone),
                  ),
                  ListTile(
                    leading: const Icon(Icons.location_on),
                    title: Text(userData.location),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.link, color: Colors.blue),
                SizedBox(width: 8),
                Icon(Icons.code, color: Colors.black),
                SizedBox(width: 8),
                Icon(Icons.alternate_email, color: Colors.lightBlue),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
