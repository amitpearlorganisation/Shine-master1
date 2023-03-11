import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class proDescription extends StatelessWidget {

   const proDescription({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
          children: [
            Expanded(
              child: ClipPath(
                clipper: MyCliper(),
                child: Container(
                  height: 300,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/tea/foodbg_3.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                    child: Image.asset("assets/tea/green-tea.png",fit: BoxFit.contain,
                    height: 200,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: double.infinity,
                width: double.infinity,

                child: SingleChildScrollView(
                  child: Column(
                    children: [
                       Text("GreenTea",textAlign: TextAlign.center, style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 30, letterSpacing: 2),),
                       Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text("\$ 180",textAlign: TextAlign.center, style: GoogleFonts.poppins(fontWeight: FontWeight.w300, fontSize: 20),),
                      ),
                       Padding(
                        padding: EdgeInsets.only(top: 10, ),
                        child: Text("Description",textAlign: TextAlign.center, style: GoogleFonts.poppins(fontWeight: FontWeight.w300, fontSize: 20),),
                      ),
                       Padding(
                        padding: EdgeInsets.only(top: 10, right: 10, left: 10),
                        child: Text("Tea is an aromatic beverage prepared by pouring of Camellia Asia which probably originated in the borderlands of southwestern China and northern Myanmar. Tea is also rarely made from the leaves of Camellia taliensis.taliensis.",textAlign: TextAlign.center, style: GoogleFonts.poppins(fontWeight: FontWeight.w200, fontSize: 14),),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                               children:  [
                                 Text("type",textAlign: TextAlign.center, style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 17),).tr(),
                                 Text("GreenTea",textAlign: TextAlign.center, style: GoogleFonts.poppins(fontWeight: FontWeight.w200, fontSize: 14),),

                               ],
                              ),
                            ),
                            Expanded(child: Column(
                              children:  [
                                Text("weight",textAlign: TextAlign.center, style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 17),).tr(),
                                Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Text("250gm",textAlign: TextAlign.center, style: GoogleFonts.poppins(fontWeight: FontWeight.w200, fontSize: 14,),),
                                ),
                              ],
                            ))

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children:  [
                                  Text("organic",textAlign: TextAlign.center, style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 17),).tr(),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Text("Yes",textAlign: TextAlign.center, style: GoogleFonts.poppins(fontWeight: FontWeight.w200, fontSize: 14),),
                                  ),

                                ],
                              ),
                            ),
                            Expanded(child: Column(
                              children:  [
                                Text("localFarmer",textAlign: TextAlign.center, style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 17),).tr(),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text("Yes",textAlign: TextAlign.center, style: GoogleFonts.poppins(fontWeight: FontWeight.w200, fontSize: 14),),
                                ),
                              ],
                            ))

                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children:  [
                                  Text("jarType",textAlign: TextAlign.center, style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 17),).tr(),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Text("Plastic",textAlign: TextAlign.center, style: GoogleFonts.poppins(fontWeight: FontWeight.w200, fontSize: 14),),
                                  ),

                                ],
                              ),
                            ),
                            Expanded(child: Column(
                              children:  [
                                Text("madeIn",textAlign: TextAlign.center, style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 17),).tr(),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text("U.S.A",textAlign: TextAlign.center, style: GoogleFonts.poppins(fontWeight: FontWeight.w200, fontSize: 14),),
                                ),
                              ],
                            ))

                          ],
                        ),
                      )

                    ],
                  ),
                )


              ),
            )
          ],
      )
    );
  }
}
class MyCliper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(size.width/2, size.height, size.width, size.height-80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }

}
