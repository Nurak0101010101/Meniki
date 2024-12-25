import 'package:flutter/material.dart';

class LayoutAndPositioning extends StatelessWidget {
  static const String route = '/layout';
  const LayoutAndPositioning({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("dsm UI"),
        backgroundColor: const Color.fromARGB(255, 221, 188, 254),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              const Text(
                'Explore Features',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),

              // Grid for features
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                children: [
                  _buildFeatureCard('Default Theme', Icons.phone_android, Colors.teal),
                  _buildFeatureCard('Full Apps', Icons.apps, Colors.purple),
                  _buildFeatureCard('Integration', Icons.public, Colors.orange),
                  _buildFeatureCard('Dashboard', Icons.dashboard, Colors.amber),
                ],
              ),

              const SizedBox(height: 30),

              // Themes List
              const Text(
                'Themes',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  _buildThemeTile('File Manager', Icons.folder, Colors.orange, 'Theme 1 Screens'),
                  _buildThemeTile('Exercise Tips', Icons.fitness_center, Colors.teal, 'Theme 2 Screens'),
                  _buildThemeTile('Food Recipe', Icons.fastfood, Colors.blue, 'Theme 3 Screens'),
                  _buildThemeTile('Gym', Icons.sports, Colors.teal, 'Theme 4 Screens'),
                  _buildThemeTile('e-wallet', Icons.wallet, Colors.orange, 'Theme 5 Screens'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureCard(String title, IconData icon, Color color) {
    return GestureDetector(
      onTap: () {
        // Handle button press
      },
      child: Container(
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: color.withOpacity(0.3)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: color, size: 40),
            const SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: color),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildThemeTile(String title, IconData icon, Color color, String subtitle) {
    return GestureDetector(
      onTap: () {
        // Handle tile press
      },
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 8),
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: ListTile(
          leading: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, color: color),
          ),
          title: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(subtitle),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
        ),
      ),
    );
  }
}
