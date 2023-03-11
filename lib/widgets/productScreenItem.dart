import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class productItems extends StatelessWidget {
  final String imagePath;
  final String title;
  final String itemCount;
  final String productType;
  final VoidCallback onTab;

  const productItems({Key? key,  required this.imagePath, required this.title,required this.itemCount,required this.productType, required this.onTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTab,
          child: Container(
            margin: EdgeInsets.only(bottom: 10),
            width: double.infinity,
            height: 80,
            color: Colors.transparent,


            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(imagePath,
                    width: 50,
                    height: 50,),

                  Column(
                    children: [
                      Text(title, style: GoogleFonts.abel(fontSize: 16 ,fontWeight: FontWeight.w300, color: Colors.white, letterSpacing: 2),textAlign: TextAlign.center),
                       Row(
                         children: [
                            Text("Type = ",style: GoogleFonts.poppins(fontSize: 14 ,fontWeight: FontWeight.w300, color: Colors.white)),
                           Text(productType,style: GoogleFonts.poppins(fontSize: 14 ,fontWeight: FontWeight.w300, color: Colors.white))


                         ],
                       )
                    ],
                  ),

                  Column(
                    children: [
                      Container (
                        width:40,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.transparent,
                        ),
                        child: GestureDetector(
                            onTap: (){
                              AnimatedSnackBar.material('Message Successfully send',
                                  type: AnimatedSnackBarType.success,
                                  mobileSnackBarPosition: MobileSnackBarPosition.top,
                                  desktopSnackBarPosition:
                                  DesktopSnackBarPosition.topCenter)
                                  .show(context);
                            },
                            child: Icon(Icons.send, color: Colors.red,)),
                      ),
                      Text(itemCount, style: TextStyle(fontSize: 16 ,fontWeight: FontWeight.w300, color: Colors.white),),
                    ],
                  )


                ],
              ),
            ),

          ),
        ),
        const Divider(
          color: Colors.white,
          height: 5,
          thickness: 1,
          indent: 25,
          endIndent: 25,

        )
      ],
    );
  }
}




