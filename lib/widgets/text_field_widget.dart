import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  String textFieldHint;
  bool isObsecured;
  TextEditingController textController;
   TextFieldWidget({super.key,required this.textFieldHint,required this.isObsecured,required this.textController});

  @override
  Widget build(BuildContext context) {
    return  TextField(
                controller: textController,
                obscureText: isObsecured,
                    decoration: InputDecoration(
                      hintText: textFieldHint,
                      fillColor: Colors.grey.shade200,
                                        filled: true,
              
                      border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                        
                      )
                    ),
                  );
  }
}