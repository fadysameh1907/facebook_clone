import 'package:flutter/material.dart';

class NavigationHelper {
static void NatvigateTo(BuildContext context, Widget distnationPage){
  Navigator.push(context, 
  
  MaterialPageRoute(builder: (context)=> distnationPage)
  );
}

}
