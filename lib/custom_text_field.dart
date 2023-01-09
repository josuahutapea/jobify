import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_theme.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {Key? key, required this.prefixImage, required this.hint})
      : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();

  final Image prefixImage;
  final String hint;
}

class _CustomTextFieldState extends State<CustomTextField> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      textAlignVertical: TextAlignVertical.center,
      style: GoogleFonts.plusJakartaSans(
          fontSize: 14, fontWeight: FontWeight.w500, color: black),
      decoration: InputDecoration(
          hintText: widget.hint,
          hintStyle: const TextStyle(color: grey),
          isCollapsed: true,
          prefixIcon: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: widget.prefixImage,
          ),
          prefixIconConstraints: const BoxConstraints(maxWidth: 34),
          border: const OutlineInputBorder(borderSide: BorderSide.none)),
      onChanged: (value) {
        setState(() {});
      },
    );
  }
}
