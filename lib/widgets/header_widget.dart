import 'package:flutter/material.dart';

class ScreenHeader extends StatelessWidget {
  String headerText;
  ScreenHeader({super.key,required this.headerText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon (
          Icons.facebook,
                  size: 100,
                  color: Color(0xff1877f2),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    headerText,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),
                  ),
      ],

    );
  }
}