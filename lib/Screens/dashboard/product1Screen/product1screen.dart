import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shine/widgets/ProductDescription.dart';

import '../../../widgets/PieChart.dart';
import '../../../widgets/productScreenItem.dart';

class product1Screen extends StatelessWidget {
    product1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(

          child: Padding(
            padding: const EdgeInsets.all(19.0),
            child: Column(
              children: [
                BlurryContainer(
                    blur: 10,
                    elevation: 10,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/5,
                    color: Color(0xff242746),
                    padding: const EdgeInsets.only(top: 1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        BlurryContainer(
                          blur: 10,
                          elevation: 10,
                          height: 90,
                          width: 130,
                          color: Colors.white.withOpacity(0.7),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,

                            children:  [

                              Expanded(
                                child: Row(
                                  children:  [
                                    Expanded(
                                      child: ImageIcon(
                                        AssetImage("assets/icons/circle.png"),
                                        color: Color(0xff3700b3),
                                        size: 16,
                                      ),
                                    ),
                                    Expanded(child:
                                    Text("total",style: GoogleFonts.poppins(fontSize: 12)).tr(),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children:  [
                                    Expanded(
                                      child: ImageIcon(
                                        AssetImage("assets/icons/circle.png"),
                                        color: Color(0xff00E676),
                                        size: 16,
                                      ),
                                    ),
                                    Expanded(child:
                                    Text("soldOut",style: GoogleFonts.poppins(fontSize: 12),).tr(),
                                    ),

                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children:  [
                                    Expanded(
                                      child: ImageIcon(
                                        AssetImage("assets/icons/circle.png"),
                                        color: Color(0xfffa8100),
                                        size: 16,
                                      ),
                                    ),
                                    Expanded(
                                      child:Text("remaining",style: GoogleFonts.poppins(fontSize: 12)).tr(),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                  ],
                                ),
                              ),




                            ],
                          ),
                        ),
                        SizedBox(
                          width: 130,
                          height: 130,
                          child: PieChart(

                              PieChartData(
                                sections: getSections(),

                              )
                          ),
                        )
                      ],
                    )

                ),

               Padding(padding: EdgeInsets.only(top: 10),
               child: Container(
                 width: double.infinity,
                 height: 60,
                 color: Colors.white.withOpacity(0.7),

                 child: Row(

                   children: [
                     Expanded(
                       child: Container(

                         color: Color(0xffF5F5F5),
                         child: Center(
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Text("6", textAlign: TextAlign.center, style: GoogleFonts.poppins(fontWeight: FontWeight.bold),),
                                 Text("product", textAlign: TextAlign.center, style: GoogleFonts.poppins(fontWeight: FontWeight.bold)).tr(),
                               ],
                             )),
                       ),
                     ),

                     Expanded(
                       child: Container(
                         color: Color(0xffF5F5F5),
                       child: Center(
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text("5", textAlign: TextAlign.center, style: GoogleFonts.poppins(color: Colors.red, fontWeight: FontWeight.bold),),
                               Text("lowStock", textAlign: TextAlign.center, style: GoogleFonts.poppins(color: Colors.red, fontWeight: FontWeight.bold),).tr(),
                             ],
                           )),
                     ),
                     ),

                     Expanded(
                         child: Container(
                       color: Color(0xffF5F5F5),
                       child: Center(
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text("7", textAlign: TextAlign.center, style: GoogleFonts.poppins(color: Colors.green, fontWeight: FontWeight.bold),),
                               Text("inHand", textAlign: TextAlign.center, style: GoogleFonts.poppins(color: Colors.green, fontWeight: FontWeight.bold),).tr(),
                             ],
                           )),
                     )
                     )
                   ],
                 )
               ),


               ),
                Expanded(child:
                BlurryContainer(
                  blur: 10,
                  elevation: 10,
                  width: double.infinity,
                  height: 200,
                  color: Color(0xff242746),
                  child: ListView(
                    children: [
                      ListTile(
                        title: Text("product details", style: GoogleFonts.poppins(color: Colors.white ,letterSpacing: 2),).tr(),
                      ),
                     productItems(imagePath: "assets/tea/bubble-tea.png", title: "BubbleTea", itemCount: "1000 ", productType: "IN", onTab: (){Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) =>   const proDescription()),
                     );
                       }
                       ,),
                      productItems(imagePath: "assets/tea/green-tea.png", title: "greentea", itemCount: "1000 ", productType: "OUT",onTab: (){}),
                      productItems(imagePath: "assets/tea/mug.png", title: "MugTea", itemCount: "1000 ", productType: "OUT", onTab: (){}),
                      productItems(imagePath: "assets/tea/tea.png", title: "SimpleTea", itemCount: "1000 ", productType: "OUT", onTab: (){}),
                      productItems(imagePath: "assets/tea/bubble-tea.png", title: "BubbleTea", itemCount: "1000 ", productType: "IN", onTab: (){}),
                      productItems(imagePath: "assets/tea/bubble-tea.png", title: "BubbleTea", itemCount: "1000 ", productType: "OUT", onTab: (){}),


                    ]
                  ),
                ))
              ],

            ),
          )
      ),
    );
  }
}
