import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  const TextInputField({super.key, this.controller, required this.hintText, required this.label, this.suffixIcon});
  final TextEditingController? controller;
  final String hintText;
  final String label;
  final Icon? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                label,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: const Color.fromARGB(255, 100, 100, 100),
                  fontFamily: 'sans',
                  fontSize: 16,
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: const Color.fromARGB(255, 199, 194, 194), width: 1.5),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Color(0xffff7622), width: 1.5),
              ),
              suffixIcon: suffixIcon,
            ),
          )
        ],
      ),
    );
  }
}
