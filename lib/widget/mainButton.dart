import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MainButton extends StatelessWidget {
  double width;
  String title;
  Color color;
  late Function(String?)? function;
  MainButton(
      {super.key, required this.width, this.function, required this.title,required this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        backgroundColor: color,
        minimumSize: Size(width, 60),
      ),
      onPressed: () {
        if (function != null) {
          function!("Sample Argument"); // Pass your argument here
        }
      },
      child: Text(
        title,
        style: GoogleFonts.roboto(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal,
        ),
        //    style: TextStyle(
        //     letterSpacing: 1.5,

        //   fontWeight: FontWeight.w400,
        //   // height: 42.26 / 36.0, // Line-height divided by font-size
        // ),
      ),
    );
  }
}

// Small BUTTON

// class SmallButton extends StatelessWidget {
//   double width;
//   double height;
//   String title;
//   late Function(String?)? function;
//    SmallButton({super.key,required this.width,this.function,required this.title,required this.height});

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
      
//       style: ElevatedButton.styleFrom(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
//         backgroundColor:Colors.blue,
//         minimumSize: Size(width, height),
//       ),
//      onPressed: () {
//         if (function != null) {
//           function!("Sample Argument"); // Pass your argument here
//         }
//       },
//       child: Text(
//         title,
//          style: TextStyle(
//           letterSpacing: 1.5,
//          fontFamily: 'Metropolis',
//         fontSize: 14.0,
//         color: white,
//         fontWeight: FontWeight.w500,
//         // height: 42.26 / 36.0, // Line-height divided by font-size
//       ),
      
//       ),
//     );
//   }
// }


 
