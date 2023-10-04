import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BMIScreen extends StatelessWidget {
  final double bmi;

  BMIScreen(this.bmi);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 85, 1, 124),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        title: Text(
            'BMI Calculator',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 193, 107, 255),
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: 220,
          width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 193, 107, 255),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Your BMI is:',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Text(
                bmi.toStringAsFixed(2),
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}