import 'package:flutter/material.dart';
import 'course_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFD54F),
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/meditation.png'),
                    fit: BoxFit.cover,
                    opacity: 0.8,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text("Peter Mach", style: TextStyle(color: Colors.grey)),
              const SizedBox(height: 8),
              const Text(
                "Mind Deep Relax",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                "Join the Community as we prepare over 33 days to relax and feel joy.",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const CourseScreen()),
                    );
                  },
                  icon: const Icon(Icons.play_arrow),
                  label: const Text("Play Next Session"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF009688),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              _buildSessionItem(
                  "Sweet Memories", "December 29 Pre-Launch", Colors.blue),
              _buildSessionItem(
                  "A Day Dream", "December 29 Pre-Launch", Colors.teal),
              _buildSessionItem(
                  "Mind Explore", "December 29 Pre-Launch", Colors.orange),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSessionItem(String title, String subtitle, Color color) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Icon(Icons.play_arrow, color: Colors.white),
      ),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(subtitle, style: const TextStyle(fontSize: 12)),
      trailing: const Icon(Icons.more_horiz),
    );
  }
}
