import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginpage/colorss.dart';
import 'package:loginpage/pages/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginBtn extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const LoginBtn({
    super.key,
    required this.onPressed,
    required this.emailController,
    required this.passwordController,
    this.text = 'LOGIN   ->>',
  });

  Future<void> _login(BuildContext context) async {
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('email', emailController.text);
      await prefs.setString('password', passwordController.text);

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter email and password')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
        onPressed: () => _login(context),
        style: ElevatedButton.styleFrom(
          backgroundColor:Colorss.backgroundColor1,
          foregroundColor: const Color.fromARGB(255, 0, 0, 0),
          minimumSize: const Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(
              color: Color.fromARGB(0, 0, 0, 0),
              width: 1,
            ),
          ),
        ),
        child: Text(
          text,
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 25,
              color: const Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
    );
  }
}
