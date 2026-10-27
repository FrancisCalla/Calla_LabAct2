import 'package:flutter/material.dart';

class WaterTrackerApp extends StatelessWidget {
  const WaterTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD6EDF9),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1565C0),
        title: const Text(
          'Water Tracker',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Water Drop Icon
                const Icon(
                  Icons.water_drop,
                  size: 72,
                  color: Color(0xFF1976D2),
                ),
                const SizedBox(height: 12),

                // Title
                const Text(
                  'Stay Hydrated!',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF263238),
                  ),
                ),
                const SizedBox(height: 6),

                // Subtitle
                const Text(
                  'Build a healthy daily habit',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF546E7A),
                  ),
                ),
                const SizedBox(height: 24),

                // Daily Water Goal Card
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.04),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: const Column(
                    children: [
                      Text(
                        'Daily Water Goal',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF37474F),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '8',
                        style: TextStyle(
                          fontSize: 68,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1565C0),
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'glasses per day',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF78909C),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // Stateless Buttons
                const TrackerButton(text: 'Drink water regularly'),
                const SizedBox(height: 12),
                const TrackerButton(text: 'Bring your water bottle'),
                const SizedBox(height: 20),

                // Footer Text
                const Text(
                  'Every glass counts!',
                  style: TextStyle(
                    fontSize: 13,
                    color: Color(0xFF78909C),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// Stateless Button Widget
class TrackerButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const TrackerButton({
    super.key,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF64B5F6),
          foregroundColor: const Color(0xFF0D47A1),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: onPressed ?? () {},
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
