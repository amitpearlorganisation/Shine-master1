import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatusScreen extends StatelessWidget {
   StatusScreen({Key? key}) : super(key: key);

   int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Orders Status",style: GoogleFonts.poppins(),).tr(),

        backgroundColor: Color(0xff242746),
      ),
      body: SafeArea(
        child: Stepper(
          currentStep: _index,
          onStepCancel: () {
          },
          onStepContinue: () {
          },
          onStepTapped: (int index) {
          },
          steps: <Step>[
            Step(
              title:  Text('Order Validated',style: GoogleFonts.poppins(),).tr(),
              content: Container(
                  alignment: Alignment.centerLeft,
                  child: const Text('')),
            ),
             Step(
              title: Text('Order in production', style: GoogleFonts.poppins(),).tr(),
              content: Text(''),
            ),
            Step(
              title: Text('Ready for expedition', style: GoogleFonts.poppins(),).tr(),
              content: Text(''),
            ),
            Step(
              title: Text('Order in its way', style: GoogleFonts.poppins(),).tr(),
              content: Text(''),
            ),
            Step(
              title: Text('Arrival in', style: GoogleFonts.poppins(),).tr(),
              content: Text(''),

            ),
            Step(
              title: Text('Delivered', style: GoogleFonts.poppins(),),
              content: Text(''),

            )
          ],
        ),
      ),
    );
  }
}
