import 'package:flutter/material.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});

  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.camera_alt, color: Colors.pink), // Mewakili Instagram
          onPressed: () => _showSnackBar(context, 'Instagram diklik'),
        ),
        const SizedBox(width: 16),
        IconButton(
          icon: const Icon(Icons.work, color: Colors.blue), // Mewakili LinkedIn
          onPressed: () => _showSnackBar(context, 'LinkedIn diklik'),
        ),
        const SizedBox(width: 16),
        IconButton(
          icon: const Icon(Icons.code, color: Colors.black), // Mewakili GitHub
          onPressed: () => _showSnackBar(context, 'GitHub diklik'),
        ),
      ],
    );
  }
}