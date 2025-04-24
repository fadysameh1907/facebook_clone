import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  String btnText;
    Function onClick;
   ElevatedButtonWidget({super.key,required this.btnText,required this.onClick});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      onClick();
    },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff1877f2),
                      ),
                       child: Text(btnText,
                       style: TextStyle(
                        fontSize: 16,
                        color: Colors.white
                       ),
                       ),
                       );
  }
}