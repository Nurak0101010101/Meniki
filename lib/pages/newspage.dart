import 'package:flutter/material.dart';

class Newspage extends StatelessWidget {
  static const String route = '/';
  const Newspage({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News',
      home: WidgetDemo(),
    );
  }
}




class WidgetDemo extends StatelessWidget {
  const WidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 221, 188, 254),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                // Image Section
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtVJGJ5JNDkCHr1bSgeU_hjuhXFVGtmbRPyQ&s',
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),

                // Content Section
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Artisans of South India',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Silk Spinners\nChettinad\nSivaganga, Tamil Nadu',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                ),

                // Button Section
                OverflowBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {
                        // Handle Details action
                      },
                      child: const Text(
                        'Details',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Handle Share action
                      },
                      child: const Text(
                        'Share',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}