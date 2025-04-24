import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();

  ForgotPasswordScreen({super.key});

  void _sendResetLink(BuildContext context) {
    final input = _emailController.text.trim();

    print('Send reset link to: $input');
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Reset Link has been sent to $input')),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Forgot Password'),
        backgroundColor: Color(0xFF1877F2),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.facebook, size: 80, color: Color(0xFF1877F2)),
        
              SizedBox(height: 20),
        
              Text(
                'Find Your Account',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
        
              SizedBox(height: 10),
        
              Text(
                'Enter your email or phone number to search for your account.',
                style: TextStyle(color: Colors.grey[700]),
                textAlign: TextAlign.center,
              ),
        
              SizedBox(height: 30),
        
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: 'Email or Phone',
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
        
              SizedBox(height: 20),
        
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () => _sendResetLink(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF1877F2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text('Send Reset Link',
                  style: TextStyle(
                    color: Colors.white
                  ),
                  ),
                ),
              ),
        
              SizedBox(height: 20),
        
              TextButton(
                onPressed: () {
                  Navigator.pop(context); // back to login
                },
                child: Text(
                  'Back to Login',
                  style: TextStyle(color: Color(0xFF1877F2)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
