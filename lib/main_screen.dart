import 'package:dashboard_admin_app/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _seletecdIndex = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    const Center(child: Text("Orders Management")),
    const Center(child: Text("Product Catalog")),
    const Center(child: Text("Customer Insights")),
    const Center(child: Text("Analytics Dashboard")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "DQ Shop",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: Colors.white,
              )),
          Padding(
            padding: const EdgeInsets.only(right: 16, left: 8),
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2)),
              child: const CircleAvatar(
                radius: 18,
                backgroundImage:
                    NetworkImage('https://via.placeholder.com/150'),
              ),
            ),
          )
        ],
      ),
      body: _screens[_seletecdIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _seletecdIndex,
        onTap: (index) {
          setState(() {
            _seletecdIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard_rounded), label: "Dashboard"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_rounded), label: "Orders"),
          BottomNavigationBarItem(
              icon: Icon(Icons.inventory_2_rounded), label: "Products"),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_rounded), label: "Customers")
        ],
      ),
    );
  }
}
