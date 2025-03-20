import 'package:flutter/material.dart';
import 'package:unidos/pages/booking/booking_page.dart';
import 'package:unidos/pages/booking/booking_page2.dart';
import 'package:unidos/pages/booking/booking_page_case.dart';
import 'package:unidos/pages/booking/booking_page_coded.dart';
import 'package:unidos/pages/booking/booking_page_create.dart';
import 'package:unidos/pages/booking/booking_page_dance.dart';
import 'package:unidos/pages/booking/booking_page_des.dart';
import 'package:unidos/pages/booking/booking_page_linux.dart';
import 'package:unidos/pages/booking/booking_page_mar.dart';
import 'package:unidos/pages/committee_page.dart';
import 'events_screen.dart';
import 'profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0; // Track selected tab index

  final List<Widget> _screens = [
    HomeScreenContent(), // Extracted content
    CommitteePage(),
    EventsScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(0, 0, 0, 0.8),
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/home.png"),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/saturn.png"),
            ),
            label: 'Committees',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/calendar.png"),
            ),
            label: 'Your Events',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/profile.png"),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

// Extracted Home Content to Reduce Rebuilds
class HomeScreenContent extends StatefulWidget {
  const HomeScreenContent({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenContentState createState() => _HomeScreenContentState();
}

class _HomeScreenContentState extends State<HomeScreenContent> {
  final List<String> filters = ["All", "Tech", "Non-Technical", "Cultural"];
  String selectedFilter = "All";

  final List<Map<String, String>> events = [
    {
      "title": "Semantix",
      "date": "8 Feb",
      "day": "Sat",
      "time": "11 AM to 4 PM",
      "venue": "408, 411 Floor, RAT",
      "price": "₹50 (Non-ACM Member)",
      "imagePath": "assets/images/semantix_poster.jpg",
      "category": "Tech",
    },
    {
      "title": "Mission GSoC 2025",
      "date": "10 Feb",
      "day": "Mon",
      "time": "6:00 PM - 8:00 PM",
      "venue": "Online",
      "price": "Free",
      "imagePath": "assets/images/gsoc_poster.jpg",
      "category": "Tech",
    },
    {
      "title": "linux Essentials",
      "date": "5 Oct",
      "day": "Wed",
      "time": "7:00 PM - 10:00 PM",
      "venue": "6th Floor, Lab 619",
      "price": "₹100",
      "imagePath": "assets/images/linux.jpg",
      "category": "Tech",
    },
    {
      "title": "Coded Creativity",
      "date": "8th Feb",
      "day": "Sat",
      "time": "10:00 AM - 4:00 PM",
      "venue": "Online",
      "price": "₹50/-",
      "imagePath": "assets/images/coded.jpg",
      "category": "Tech",
    },
    {
      "title": "Dance Lovers Unite",
      "date": "9 Oct",
      "day": "Sat",
      "time": "02:30pm - 05:00 pm",
      "venue": "Yoga Hall, D.Y. Patil Stadium",
      "price": "₹149",
      "imagePath": "assets/images/dance.jpg",
      "category": "Cultural",
    },
    {
      "title": "Case Chronicles",
      "date": "1 Feb",
      "day": "Sat",
      "time": "2:00 PM - 6:00 PM",
      "venue": " Audi 611",
      "price": "Free",
      "imagePath": "assets/images/case.jpg",
      "category": "Non-Technical",
    },
    {
      "title": "DESIGNAIRÉ",
      "date": "8th Feb",
      "day": "Sat",
      "time": "9 AM to 5 PM",
      "venue": "Rait-520",
      "price": "₹200",
      "imagePath": "assets/images/des.jpg",
      "category": "Non-Technical",
    },
    {
      "title": "Marathi Divas",
      "date": "27 Feb",
      "day": "Sat",
      "time": "2:00 PM - 6:00 PM",
      "venue": "Rait",
      "price": "Free",
      "imagePath": "assets/images/mar.jpg",
      "category": "Cultural",
    },
  ];

  @override
  Widget build(BuildContext context) {
    // Filter Events Based on Selection
    List<Map<String, String>> filteredEvents = selectedFilter == "All"
        ? events
        : events.where((event) => event["category"] == selectedFilter).toList();

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/starry_background.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Text(
              "UNI-VERSE",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          // Category Filters
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: filters.map((filter) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedFilter = filter;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: selectedFilter == filter
                              ? Colors.white
                              : const Color.fromRGBO(255, 255, 255, 0.3),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 8.0),
                          child: Text(
                            filter,
                            style: TextStyle(
                              color: selectedFilter == filter
                                  ? Colors.black
                                  : Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          // Event Cards
          Expanded(
            child: filteredEvents.isEmpty
                ? Center(
                    child: Text(
                      "No events found",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: filteredEvents.length,
                    itemBuilder: (context, index) {
                      return EventCard(
                        title: filteredEvents[index]["title"]!,
                        date: filteredEvents[index]["date"]!,
                        day: filteredEvents[index]["day"]!,
                        time: filteredEvents[index]["time"]!,
                        venue: filteredEvents[index]["venue"]!,
                        price: filteredEvents[index]["price"]!,
                        imagePath: filteredEvents[index]["imagePath"]!,
                      );
                    },
                  ),
          ),
        ],
      ),
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
          // Wrap the image with GestureDetector
          GestureDetector(
            onTap: () {
              // Navigate to BookingPage when the image is tapped
              if (imagePath == "assets/images/semantix_poster.jpg") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BookingPage()),
                );
              }
              if (imagePath == "assets/images/gsoc_poster.jpg") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BookingPage2()),
                );
              }
              if (imagePath == "assets/images/coded.jpg") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BookingPageCoded()),
                );
              }
              if (imagePath == "assets/images/linux.jpg") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BookingPageLinux()),
                );
              }
              if (imagePath == "assets/images/create.jpg") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BookingPageCreate()),
                );
              }
              if (imagePath == "assets/images/dance.jpg") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BookingPageDance()),
                );
              }
              if (imagePath == "assets/images/des.jpg") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BookingPageDes()),
                );
              }
              if (imagePath == "assets/images/case.jpg") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BookingPageCase()),
                );
              }
              if (imagePath == "assets/images/mar.jpg") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BookingPageMar()),
                );
              }
            },
            child: ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(16)),
              child: Image.asset(
                imagePath,
                width: double.infinity,
                height: 220,
                fit: BoxFit.cover,
              ),
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
