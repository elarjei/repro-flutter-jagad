import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    const MaterialApp(
      home: BuildWidget(),
    ),
  );
}

class BuildWidget extends StatelessWidget {
  const BuildWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> navbarItems = [
      {
        'icon': Icons.home,
        'label': 'Home',
      },
      {
        'icon': Icons.list,
        'label': 'My Task',
      },
      {
        'icon': Icons.person,
        'label': 'My Profile',
      },
    ];

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        onTap: (index) => toDo(),
        items: [
          ...navbarItems.map((item) {
            return BottomNavigationBarItem(
              icon: Icon(item['icon']),
              label: item['label'],
            );
          }).toList(),
        ],
      ),
    );
  }

  toDo() {}
}
