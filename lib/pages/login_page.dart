import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginpage/colorss.dart';
import 'package:loginpage/widget/forgot_pass.dart';
import 'package:loginpage/widget/login_btn.dart';
import 'package:loginpage/widget/text_fields.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorss.backgroundColor,
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 80),
                Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'assets/images/image.png',
                        height: 250,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(height: 80),
                            Text(
                              'Glad to have you back!',
                              style: GoogleFonts.poppins(
                                fontSize: 26,
                                fontWeight: FontWeight.w600,
                                color: Colorss.tc,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'Log in and get started.',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colorss.tc,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                TextFields(
                  emailController: emailController,
                  passwordController: passwordController,
                ),
                const SizedBox(height: 10),
                const ForgotPass(),
                const SizedBox(height: 260),
              ],
            ),
          ),
          Positioned(
            left: 20,
            right: 20,
            bottom: 0,
            child: Column(
              children: [
                LoginBtn(
                  onPressed: () {},
                  emailController: emailController,
                  passwordController: passwordController,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'New member? ',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colorss.tc,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Register now',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colorss.backgroundColor1,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
