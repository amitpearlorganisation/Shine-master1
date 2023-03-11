import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../app/Constant/app.color.dart';

class OnBoardContent extends StatelessWidget {
  const OnBoardContent({Key? key, required this.image, required this.title, required this.description}) : super(key: key);
    final String image, title, description;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(

        children: [
          Spacer(),
          Image.asset(image,
            height: 250,),
          SizedBox(height: 20,),
          Center(
            child: Text(title, textAlign: TextAlign.center,
              style: GoogleFonts.poppins( fontWeight: FontWeight.w400,fontSize: 20),
            ),
          ),
          const SizedBox(height: 16),
          Text(description, textAlign: TextAlign.center,),
          const Spacer(),

        ],
      ),
    );
  }
}


