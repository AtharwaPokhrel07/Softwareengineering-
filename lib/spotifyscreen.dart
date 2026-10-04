import 'package:flutter/material.dart';

class SpotifyScreen extends StatelessWidget {
  const SpotifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Recently played",
                    style: TextStyle(
                      color: Colors.white,g
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.notifications_none, color: Colors.white),
                      SizedBox(width: 16),
                      Icon(Icons.history, color: Colors.white),
                      SizedBox(width: 16),
                      Icon(Icons.settings_outlined, color: Colors.white),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 20),

              Row(
                children: [
                  _artist("Albatross", Colors.green),
                  const SizedBox(width: 20),
                  _artist("Axis Band ", Colors.grey),
                ],
              ),

              const SizedBox(height: 30),

              Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    color: Colors.blue,
                  ),
                  const SizedBox(width: 12),
                  const Text(
                    "Your 2025 in review",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              Row(
                children: [
                  Expanded(
                    child: _card("Your Top Songs\n2025", Colors.green, Colors.black87),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _card("Your Artists\nRevealed", const Color(0xFFD9B8E8), Colors.deepPurple),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _artist(String name, Color color) {
    return Column(
      children: [
        CircleAvatar(radius: 45, backgroundColor: color),
        const SizedBox(height: 8),
        Text(name, style: const TextStyle(color: Colors.white)),
      ],
    );
  }

  Widget _card(String text, Color bg, Color textColor) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        padding: const EdgeInsets.all(12),
        color: bg,
        alignment: Alignment.bottomLeft,
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}