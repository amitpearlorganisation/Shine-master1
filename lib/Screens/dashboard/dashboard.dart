import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shine/Screens/dashboard/dashboardItems.dart';
import 'package:shine/Screens/dashboard/product1Screen/product1screen.dart';
import 'package:shine/Screens/dashboard/product1Screen/product2Screen.dart';
import 'package:shine/Screens/dashboard/product1Screen/product3Screen.dart';
import 'package:shine/Screens/dashboard/product1Screen/product4Screen.dart';
import 'package:shine/Screens/dashboard/product1Screen/product5Screen.dart';
import 'package:shine/Screens/dashboard/product1Screen/product6Screen.dart';
import 'package:shine/Screens/my_order.dart';

class DashBoard extends StatefulWidget {




  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer: drawer(),
      appBar: AppBar(

        title: Text("dashBoard").tr(),


        backgroundColor: Color(0xff242746),


      ),

     body: Column(
       children: [
         Container(
           width: double.infinity,
           height: (MediaQuery.of(context).size.height / 4),
           decoration: BoxDecoration(
               color: Color(0xff242746)
           ),
           child: Padding(
             padding: const EdgeInsets.all(0.0),
             child: Row(

               mainAxisAlignment: MainAxisAlignment.center,

               children: [

                 Container(
                   width: MediaQuery.of(context).size.width/2.5,
                   height: MediaQuery.of(context).size.width/2.5,
                   decoration: const BoxDecoration(
                       color: Colors.white,

                       borderRadius: BorderRadius.all(Radius.circular(10)),
                       boxShadow: [ BoxShadow(
                           color: Colors.grey,
                           blurRadius: 5
                       )

                       ]
                   ),

                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         Text("total product", style: GoogleFonts.poppins(fontSize: 20, letterSpacing: 1 ),textAlign: TextAlign.center,).tr(),
                         Text("1234", style: GoogleFonts.poppins(fontSize: 20, letterSpacing: 1 ),)

                       ],

                     ),
                   ),

                 ),

                 SizedBox(
                   width: MediaQuery.of(context).size.width/10 ,
                   height:MediaQuery.of(context).size.width/2.5 ,),

                 Container(
                   width: MediaQuery.of(context).size.width/2.5,
                   height: MediaQuery.of(context).size.width/2.5,
                   padding: const EdgeInsets.all(0.0),
                   decoration: const BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.all(Radius.circular(10)),
                       boxShadow: [ BoxShadow(
                           color: Colors.grey,
                           blurRadius: 5
                       )

                       ]
                   ),
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         Text("remaining product", style: GoogleFonts.poppins(fontSize: 20, letterSpacing: 1),textAlign: TextAlign.center).tr(),
                         Text("1234", style: GoogleFonts.poppins(fontSize: 20, letterSpacing: 1 ), textAlign: TextAlign.center,)


                       ],
                     ),
                   ),

                 ),

               ],

             ),
           )
         ),
        Container(
          width: MediaQuery.of(context).size.width,
          child: SvgPicture.asset("assets/images/wave.svg",fit: BoxFit.fill,
              height: MediaQuery.of(context).size.width/7, color: Color(0xff242746)
            ,),
        ),


      Expanded(
        child: ListView(

        children: [
            dashboardItems(imagePath: "assets/images/berry.png", title: "vegetable", itemCount: "1000 ",onTab: (){
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  product1Screen()),
            );}),
          dashboardItems(imagePath: "assets/images/delivery-box.png", title: "Shophouse",itemCount: "2000 ", onTab: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const product2Screen()),
            );
          }),
          dashboardItems(imagePath: "assets/images/disinfection.png", title: "Cleaner", itemCount: "3000 ", onTab: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const product3Screen()),
            );
          }),
          dashboardItems(imagePath: "assets/images/product (2).png", title: "Box",itemCount: "4000 ", onTab: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const product4Screen()),
            );
          }),
          dashboardItems(imagePath: "assets/images/raspberry.png", title: "Fruits",itemCount: "5000 ", onTab: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const product5Screen()),
            );
          }),
          dashboardItems(imagePath: "assets/images/hypoallergenic.png", title: "Water Bottle",itemCount: "6000 ", onTab: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const product6Screen()),
            );
          })





        ],
        ),
      ),
  ],
     ),

    );
  }
  Widget drawer(){
    String dropdownValue = 'Language';
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: Column(
            children: [
              CircleAvatar(
                radius: 30,
                child: Image.asset("assets/images/profile.png"),
              ),
              Text("Jhonathan",style: GoogleFonts.poppins(color: Colors.white, fontSize: 17, letterSpacing: 2),),
              Row(
                children: [
                  Icon(Icons.email, color: Colors.white,),
                  Text("Jhonathan@gmail.com",style: GoogleFonts.poppins(color: Colors.white, fontSize: 17, letterSpacing: 2),),
                ],
              )
            ],
          ),
          decoration: BoxDecoration(
            color: Color(0xff242746),

          ),

          ),

          ListTile(
            leading: const Icon(Icons.home),
            title:  Text('Home', style: GoogleFonts.poppins(),).tr(),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title:  Text("My Profile", style: GoogleFonts.poppins()).tr(),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title:  Text('Setting', style: GoogleFonts.poppins(),).tr(),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.policy),
            title:  Text('Privacy Policy', style: GoogleFonts.poppins(),).tr(),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title:  Text('Logout', style: GoogleFonts.poppins(),).tr(),
            onTap: () {
              Navigator.pop(context);
            },

          ),
          ListTile(
            leading: const Icon(Icons.history),
            title:  Text('My Order', style: GoogleFonts.poppins(),).tr(),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>   MyOrder()),
              );
            },

          ),
          Container(
            width: double.infinity,
            child: Center(child: Column(
              children: [
                Text("Select Language", style: GoogleFonts.poppins(fontSize: 15),).tr(),
                Padding(

                  padding: const EdgeInsets.only(left: 6, right: 6),
                  child: Container(
                    width: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Center(
                      child: DropdownButton<String>(
                        // Step 3.
                        value: dropdownValue,
                        // Step 4.
                        items: <String>['Language','English', 'French', ]
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: GoogleFonts.poppins(fontSize: 15),
                            ),
                          );
                        }).toList(),
                        // Step 5.
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                            if(newValue=='English'){
                              context.locale = Locale('en', 'US');

                            }
                            else if(newValue =='French'){
                              context.locale= Locale('de', 'DE');

                            }
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ],
            )),
          )
        ],
      ),

    );
  }
}
