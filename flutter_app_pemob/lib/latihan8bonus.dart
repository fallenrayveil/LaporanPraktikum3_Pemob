import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan 8 Bonus',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Tuiter',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color.fromARGB(255, 80, 182, 255),
        ),
        body: const ProfilePage(),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 200,
              color: const Color.fromARGB(255, 244, 245, 246),
              child: Image.asset(
                'assets/upncover.jpg',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            SizedBox(
              height: 100,
              child: Container(
                color: Colors.transparent,
              ),
            ),
          ],
        ),
        Positioned(
          top: 150,
          left: 15,
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 5,
              ),
              shape: BoxShape.circle,
            ),
            child: ClipOval(
              child: Image.asset(
                './assets/upnpfp.jpg',
                fit: BoxFit.cover,
                width: 100,
                height: 100,
              ),
            ),
          ),
        ),
        Positioned(
          top: 250,
          left: 15,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'UPN Veteran Jawa Timur', 
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    '@upnvjt_official',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 125, 125, 125),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  'AKUN RESMI UPN "VETERAN JAWA TIMUR" Dikelola oleh Humas UPN "Veteran" Jawa Timur Kampus Bela Negara',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 5),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    'Translate Bio',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 70, 158, 231),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 215,
          right: 15,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 0, 0, 0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            child: const Text(
              'Follow',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
