import 'package:flutter/material.dart';
import 'package:loginpage/colorss.dart';

class TextFields extends StatefulWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const TextFields({
    super.key,
    required this.emailController,
    required this.passwordController,
  });

  @override
  State<TextFields> createState() => _TextFieldsState();
}

class _TextFieldsState extends State<TextFields> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          TextField(
            controller: widget.emailController,
            style: const TextStyle(color: Colorss.tc),
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.email, color: Colorss.tc),
              hintText: 'Enter your email',
              hintStyle: TextStyle(
                color: const Color.fromRGBO(117, 117, 117, 1),
                fontSize: 16,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.transparent),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colorss.tc),
              ),
              filled: true,
              fillColor: Colors.grey[200],
              contentPadding: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 15,
              ),
            ),
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 20),
          TextField(
            controller: widget.passwordController,
            style: const TextStyle(color: Colorss.tc),
            obscureText: _obscureText,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.lock, color: Colorss.tc),
              hintText: 'Enter your password',
              hintStyle: TextStyle(
                color: Colors.grey[600],
                fontSize: 16,
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.transparent),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colorss.tc),
              ),
              filled: true,
              fillColor: Colors.grey[200],
              contentPadding: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}