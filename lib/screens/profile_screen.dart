import 'package:flutter/material.dart';
import '../widgets/profile_header.dart';
import '../widgets/social_media_row.dart';
import '../widgets/action_buttons.dart';
import 'about_screen.dart'; 

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutScreen()),
              );
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 24),

                    const ProfileHeader(
                      name: 'Nama Mahasiswa',
                      nim: '21.11.0000',
                    ),
                    const SizedBox(height: 24),

                    const SocialMediaRow(),
                    const SizedBox(height: 24),
                    
                  ],
                ),
              ),
            ),
            
            const Flexible(
              flex: 1,
              child: ActionButtons(), 
            ),
          ],
        ),
      ),
    );
  }
}