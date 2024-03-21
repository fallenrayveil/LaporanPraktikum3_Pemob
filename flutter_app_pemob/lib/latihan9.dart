import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan 9',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Penuhi Lindungi',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color.fromARGB(255, 0, 140, 255),
          elevation: 30, 
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: const Color.fromARGB(255, 11, 103, 178),
              height: 100,
              child: Row(
                children: [
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Entering a Public Space?',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Stay alert to stay safe',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                      width: 80,
                      height: 80,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: MenuGrid(),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuGrid extends StatelessWidget {
  final List<String> menuItems = [
    'Covid19 Vaccine','Covid19 Test Result','EHAC','Covid19 Vaccine','Covid19 Test Result','EHAC'
  ];

  MenuGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(20),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
      ),
      itemCount: menuItems.length,
      itemBuilder: (context, index) {
        return MenuItem(
          title: menuItems[index],
          image: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
        );
      },
    );
  }
}

class MenuItem extends StatelessWidget {
  final String title;
  final String image;

  const MenuItem({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10, 
      child: Column(
        children: <Widget>[
          Image.network(
            image,
            height: 65,
            width: 65,
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
