import 'package:facebook_cai/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(FacebookRegistrationApp());

class FacebookRegistrationApp extends StatelessWidget {
  const FacebookRegistrationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook Registration',
      theme: ThemeData(
        primaryColor: Color(0xFF1877F2),
      ),
      home: FacebookRegisterScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FacebookRegisterScreen extends StatefulWidget {
  @override
  _FacebookRegisterScreenState createState() => _FacebookRegisterScreenState();
}

class _FacebookRegisterScreenState extends State<FacebookRegisterScreen> {
  final _fullNameController = TextEditingController();
  final _emailPhoneController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  void _handleSignUp() {
    final fullName = _fullNameController.text.trim();
    final emailOrPhone = _emailPhoneController.text.trim();
    final password = _passwordController.text.trim();
    final confirmPassword = _confirmPasswordController.text.trim();

    print('Full Name: $fullName');
    print('Email/Phone: $emailOrPhone');
    print('Password: $password');
    print('Confirm Password: $confirmPassword');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.facebook, size: 100, color: Color(0xFF1877F2)),

            SizedBox(height: 20),

            Text(
              'Create a New Account',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),

            SizedBox(height: 30),

            // Full Name
            TextField(
              controller: _fullNameController,
              decoration: _inputDecoration('Full Name'),
            ),
            SizedBox(height: 16),

            // Email or Phone
            TextField(
              controller: _emailPhoneController,
              decoration: _inputDecoration('Email or Phone'),
            ),
            SizedBox(height: 16),

            // Password
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: _inputDecoration('Password'),
            ),
            SizedBox(height: 16),

            // Confirm Password
            TextField(
              controller: _confirmPasswordController,
              obscureText: true,
              decoration: _inputDecoration('Confirm Password'),
            ),
            SizedBox(height: 30),

            // Sign Up Button
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: _handleSignUp,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF1877F2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text('Sign Up', 
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white
                  )),
              ),
            ),

            SizedBox(height: 20),

            // Already have an account
            TextButton(
              onPressed: () {
               Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
              },
              child: Text(
                'Already have an account? Log in',
                style: TextStyle(color: Color(0xFF1877F2)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  InputDecoration _inputDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      filled: true,
      fillColor: Colors.grey.shade200,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
    );
  }
}
