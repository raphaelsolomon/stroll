import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  final ValueChanged<int> onChanged;
  const CustomBottomNavigation({required this.onChanged, super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xFF0F1115),
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/cards.png',
            width: 30.0,
            height: 30.0,
          ),
          label: '',
          backgroundColor: Color(0xFF0F1115),
        ),
        BottomNavigationBarItem(
          icon: Stack(
            children: [
              Image.asset(
                'assets/images/fire.png',
                width: 30.0,
                height: 30.0,
              ),
              Positioned(
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFB5B2FF),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 3.5, vertical: 0.5),
                  child: Text(
                    '3',
                    style: TextStyle(
                      fontSize: 8.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              )
            ],
          ),
          label: '',
          backgroundColor: Color(0xFF0F1115),
        ),
        BottomNavigationBarItem(
          icon: Stack(
            children: [
              Image.asset(
                'assets/images/chat.png',
                width: 30.0,
                height: 30.0,
              ),
              Positioned(
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFB5B2FF),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 3.5, vertical: 1.5),
                  child: Text(
                    '10',
                    style: TextStyle(
                      fontSize: 8.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              )
            ],
          ),
          label: '',
          backgroundColor: Color(0xFF0F1115),
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/user.png',
            width: 40.0,
            height: 40.0,
          ),
          label: '',
          backgroundColor: Color(0xFF0F1115),
        )
      ],
      onTap: (value) {},
    );
  }
}
