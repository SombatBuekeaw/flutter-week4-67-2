import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Colors.redAccent,
      ),
      // เพิ่ม Drawer (เมนูด้านข้าง)
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Sombat😉',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context); // ปิดเมนู
              },
            ),
            ListTile(
              title: const Text('About'),
              onTap: () {
                // ไปยังหน้า Settings (สร้างหน้า Settings ตามที่ต้องการ)
                print('Navigating to Settings');
              },
            ),
            ListTile(
              title: const Text('Logout'),
              onTap: () {
                // ล็อกเอาท์
                print('User logged out');
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text("Welcome to Home sombat"),
      ),
    );
  }
}
