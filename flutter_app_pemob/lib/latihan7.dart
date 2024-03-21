import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan 7',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Goyek',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 1, 137, 222),
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
        image:
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
    MenuItem(
        title: 'GoCar',
        image:
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
    MenuItem(
        title: 'GoFood',
        image:
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
    MenuItem(
        title: 'GoSend',
        image:
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
    MenuItem(
        title: 'GoMart',
        image:
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
    MenuItem(
        title: 'GoPulsa',
        image:
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
    MenuItem(
        title: 'Check In',
        image:
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
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
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 78, 187, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: const BorderSide(color: Color.fromARGB(255, 78, 187, 255)),
                  ),
                ),
                child: const Text(
                  'Edit',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
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

  const MenuItemWidget({super.key, required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: <Widget>[
          Image.network(
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
      ),
    );
  }
}
