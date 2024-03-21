import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan 7 Bonus',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Gojek',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 32, 180, 49),
        ),
        body: MenuGrid(),
      ),
    );
  }
}

class MenuItem {
  final String title;
  final String image;
  MenuItem({required this.title, required this.image});
}

class MenuGrid extends StatelessWidget {
  final List<MenuItem> menuItems = [
    MenuItem(
      title: 'GoRide', 
      image: './assets/GoRide.png'
      ),
    MenuItem(
      title: 'GoCar', 
      image: './assets/GoCar.png'
      ),
    MenuItem(
      title: 'GoFood', 
      image: './assets/GoFood.png'
      ),
    MenuItem(
      title: 'GoSend', 
      image: './assets/GoSend.png'
      ),
    MenuItem(
      title: 'GoMart', 
      image: './assets/GoMart.png'
      ),
    MenuItem(
      title: 'GoPulsa', 
      image: './assets/GoPulsa.png'
      ),
    MenuItem(
      title: 'Check In', 
      image: './assets/CheckIn.png'
      ),
  ];

  MenuGrid({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Your favorites',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    side: const BorderSide(
                      color: Color.fromARGB(255, 32, 180, 49),
                    ),
                  ),
                ),
                child: const Text(
                  'Edit',
                  style: TextStyle(
                    color: Color.fromARGB(255, 32, 180, 49),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(20),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 8.0,
            ),
            itemCount: menuItems.length,
            itemBuilder: (context, index) {
              return MenuItemWidget(
                title: menuItems[index].title,
                imagePath: menuItems[index].image,
              );
            },
          ),
        ),
      ],
    );
  }
}

class MenuItemWidget extends StatelessWidget {
  final String title;
  final String imagePath;
  const MenuItemWidget(
    {super.key, required this.title, required this.imagePath}
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(
          imagePath,
          height: 50,
          width: 50,
        ),
        const SizedBox(height: 5),
        Text(
          title,
          style: const TextStyle(
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
