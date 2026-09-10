import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // Variables (state)
  String name = "Diluka";
  String email = "diluka.w@nsbm.ac.lk";
  int points = 0;

  // Increments points and rebuilds the UI
  void _addPoint() {
    setState(() {
      points++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("My Profile"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.grey[100],
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Avatar with verified badge
            Center(
              child: Stack(
                children: [
                  const CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, size: 70, color: Colors.black87),
                  ),
                  const Positioned(
                    bottom: 5,
                    right: 5,
                    child: CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.green,
                      child: Icon(Icons.check, size: 16, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Divider(thickness: 1, color: Colors.black26),
            const SizedBox(height: 10),

            // Name
            const Text("Name",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Text(name, style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 20),

            // Email
            const Text("Email",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Row(
              children: [
                const Icon(Icons.email, size: 18),
                const SizedBox(width: 6),
                Text(email, style: const TextStyle(fontSize: 16)),
              ],
            ),
            const SizedBox(height: 20),

            // Points
            const Text("Points",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Row(
              children: [
                const Icon(Icons.star, color: Colors.amber, size: 20),
                const SizedBox(width: 6),
                Text("$points", style: const TextStyle(fontSize: 16)),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: _addPoint,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
