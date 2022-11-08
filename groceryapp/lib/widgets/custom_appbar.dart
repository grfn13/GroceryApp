import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget{
  final String title;
  const CustomAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Container(
        color: Colors.grey,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white, 
            fontSize: 24, 
            fontFamily: 'Avenir', 
            fontWeight: FontWeight.bold,
          ),  
        ),
      ),
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(50.0);
}