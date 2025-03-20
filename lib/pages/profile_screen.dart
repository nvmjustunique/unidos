import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final List<String> filters = ["Events Attended", "Interested"];
  final List<Map<String, String>> events = [
    {
      "title": "Semantix",
      "date": "8 Feb",
      "day": "Sat",
      "time": "11 AM to 4 PM",
      "venue": "408, 411 Floor, RAT",
      "price": "₹50 (Non-ACM Member)",
      "imagePath": "assets/images/semantix_poster.jpg",
    },
    {
      "title": "Mission GSoC 2025",
      "date": "10 Feb",
      "day": "Mon",
      "time": "6:00 PM - 8:00 PM",
      "venue": "Online",
      "price": "Free",
      "imagePath": "assets/images/gsoc_poster.jpg",
    },
  ];

  ProfileScreen({super.key});

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
                        "assets/images/profile_picture.jpg"), // Add a profile picture
                  ),
                  SizedBox(width: 16),
                  // User Info
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        " Aditi not reddy ", // Imaginary name
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Roll No: 24CA0001", // Imaginary roll no
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Division:j-1", // Imaginary division
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
            // Username
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "@adireddy", // Imaginary username
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            // Filters (Events Attended, Interested)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: filters.map((filter) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(
                              255, 255, 255, 255), // Translucent white
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 8.0),
                          child: Text(
                            filter,
                            style: TextStyle(
                              color: const Color.fromARGB(255, 117, 117, 117),
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
            // Border Line
            Container(
              height: 1,
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 16),
            ),
            // Event Cards
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(16),
                itemCount: events.length,
                itemBuilder: (context, index) {
                  return EventCard(
                    title: events[index]["title"]!,
                    date: events[index]["date"]!,
                    time: events[index]["time"]!,
                    venue: events[index]["venue"]!,
                    price: events[index]["price"]!,
                    imagePath: events[index]["imagePath"]!,
                    day: '',
                  );
                },
              ),
            ),
          ],
        ),
      ),
      // Updated Navigation Bar (Translucent Black with White Icons)
    );
  }
}

class EventCard extends StatelessWidget {
  final String title;
  final String date;
  final String day;
  final String time;
  final String venue;
  final String price;
  final String imagePath;

  const EventCard({
    super.key,
    required this.title,
    required this.date,
    required this.day,
    required this.time,
    required this.venue,
    required this.price,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      color: Color.fromRGBO(255, 255, 255, 0.298),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            child: Image.asset(
              imagePath,
              width: double.infinity,
              height: 220,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                // Date Box
                Container(
                  width: 70,
                  height: 80,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.grey[800]!, Colors.grey[600]!],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          day,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          date,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                // Event Info
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text("Time: $time",
                          style: TextStyle(color: Colors.white)),
                      Text("Venue: $venue",
                          style: TextStyle(color: Colors.white)),
                      Text("Price: $price",
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
