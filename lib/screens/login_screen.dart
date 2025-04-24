import 'package:facebook_cai/screens/forget_password_screen.dart';
import 'package:facebook_cai/screens/register_screen.dart';
import 'package:facebook_cai/utils/navigation_helper.dart';
import 'package:facebook_cai/widgets/elevated_button_widget.dart';
import 'package:facebook_cai/widgets/header_widget.dart';
import 'package:facebook_cai/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {

   LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

void _handleLogin(){
   final email = _emailController.text.trim();
   final password = _passwordController.text.trim();
   print('Email : $email');
   print('Password : $password');

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ScreenHeader(headerText: 'Welcome to Facebook'),
                     SizedBox(height: 40,),
                
                   TextFieldWidget(textFieldHint: 'Email or Phone', isObsecured: false,textController: _emailController,),
                    SizedBox(height: 16,),
                   TextFieldWidget(textFieldHint: 'Password', isObsecured: true,textController:  _passwordController),
                    SizedBox(height: 20,),
                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: ElevatedButtonWidget(btnText: 'Log in',
                      onClick: _handleLogin,
                      )
                    ),
                   SizedBox(height: 12,),
                   TextButton(onPressed: (){
                    NavigationHelper.NatvigateTo(context, ForgotPasswordScreen());
                   }, 
                   child: Text(
                    'Forget Password?',
                    style: TextStyle(
                      color:Color(0xff1877f2)
                    ),
                   ),
                   
                   ),
                  SizedBox(height: 20,),
                  Row(children: [
                    Expanded(child: Divider()),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text('OR'),
                      ),
                      Expanded(child: Divider()),
                                ],
                  ),
                   SizedBox(height: 20,),
                   OutlinedButton(onPressed: (){
                    NavigationHelper.NatvigateTo(context, FacebookRegisterScreen());
                   }, 
                   style: OutlinedButton.styleFrom(
                    foregroundColor: Color(0xff1877f2),
                    side: BorderSide(color: Color(0xff1877f2),),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),),
                      minimumSize: Size(double.infinity, 48),
                      
                    ),
                     child: Text('Create New Account')
                                 ),
                                    
                       ],
                   ),
              ),
            ),
          ),
            
             );
  }

  
}