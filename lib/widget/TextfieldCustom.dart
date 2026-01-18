import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginform/color.dart';

class CustomTextField extends StatelessWidget {
  String labalText;
  TextEditingController? controller;
  TextInputType keyboard;
  late FormFieldValidator? validator;
  late Function(String?)? onSaved;
  final Function(String)? onChanged; // onChanged callback
  CustomTextField({
    super.key,
    this.onChanged,
    this.onSaved,
    this.validator,
    required this.labalText,
    required this.keyboard,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      validator: validator,
      onSaved: onSaved,
      controller: controller,
      keyboardType: keyboard,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 15,
        ), // Adjusted to center the text and icon
        // Adjust padding as needed

        hintText: labalText,
        labelStyle: GoogleFonts.roboto(
          // ✅ Simplified GoogleFonts usage
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
          color: grey2,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: blue,
            width: 2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: blue,
            width: 2,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.red.shade700,
            width: 2,
          ),
        ),
      ),
      // decoration: InputDecoration(
      //   contentPadding: const EdgeInsets.symmetric(vertical: 4.0),
      //   isDense: true,
      //   labelText: labalText,  // ✅ Fixed spelling mistake
      //   labelStyle: GoogleFonts.roboto(  // ✅ Simplified GoogleFonts usage
      //     fontSize: 20.0,
      //     fontWeight: FontWeight.bold,
      //     color: Theme.of(context).brightness == Brightness.dark
      //         ? Colors.white
      //         : Colors.black,
      //   ),
      //   enabledBorder: UnderlineInputBorder(
      //     borderSide: BorderSide(
      //       color: Theme.of(context).brightness == Brightness.dark
      //           ? Colors.white
      //           : Colors.black,
      //     ),
      //   ),
      //    focusedBorder:const UnderlineInputBorder(
      //     borderSide: BorderSide(
      //       color: Colors.green, // ✅ Green when focused and valid
      //       width: 2.0,
      //     ),
      //   ),

      //   errorBorder: const UnderlineInputBorder(
      //     borderSide: BorderSide(color: Colors.red),
      //   ),
      //   focusedErrorBorder: const UnderlineInputBorder(
      //     borderSide: BorderSide(color: Colors.red, width: 2.0),
      //   ),
      // ),
    );
  }
}
