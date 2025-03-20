import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(), // Set HomePage as the initial route
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to CsiPage
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AcmPage()),
            );
          },
          child: Text("Go to CSI Page"),
        ),
      ),
    );
  }
}

class AcmPage extends StatelessWidget {
  const AcmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/starry_background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            // Profile Section
            Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 16, right: 16),
              child: Row(
                children: [
                  // Circular Profile Picture
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(
                        "assets/images/acm.jpg"), // Add a profile picture
                  ),
                  SizedBox(width: 16),
                  // User Info
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        " _____________ ", // Imaginary name
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "_____________", // Imaginary roll no
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "_____________", // Imaginary division
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Button to go back to the previous page
            SizedBox(height: 650),
            ElevatedButton(
              onPressed: () {
                // Use the system back button to return to the previous page
                Navigator.pop(context);
              },
              child: Text("Go Back to committee"),
            ),
          ],
        ),
      ),
    );
  }
}
