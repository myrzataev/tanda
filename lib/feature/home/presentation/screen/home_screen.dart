import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tanda/general/auth/presentation/screens/bottom_navigation_bar.dart';
import 'package:tanda/resources/resources.dart';

class MainScreen extends StatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const MainScreen(),
      );
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: SvgPicture.asset(
          SvgImages.log,
          height: 30,
          width: 20,
        ),
        actions: [
          Container(
            margin: const EdgeInsets.all(8.0), // Margin around the icon
            decoration: const BoxDecoration(
              color: Colors.amber, // Background color
              shape: BoxShape.circle, // Circular shape
            ),
            child: IconButton(
              icon: const Icon(Icons.search, color: Colors.black),
              onPressed: () {
                // Add search functionality here
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Tabs (Спорт / Мероприятия)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildTab("Спорт", isSelected: true),
                  SizedBox(width: 8),
                  _buildTab("Мероприятия", isSelected: false),
                  SizedBox(width: 8),
                  _buildTab("Жилье", isSelected: false),
                ],
              ),
              SizedBox(height: 16),
              // Grid of cards
            ],
          ),
        ),
      ),
      // bottomNavigationBar: AppBottomNavigationBar(child: Text('')),
    );
  }
  Widget _buildTab(String title, {bool isSelected = false}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? Colors.amber : Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

