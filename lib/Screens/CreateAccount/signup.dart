import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shine/Screens/loginPage/login.dart';


class signup extends StatelessWidget {
   signup({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(

              image: new DecorationImage(
                image: new ExactAssetImage('assets/tea/foodbg_4.jpeg'),
                fit: BoxFit.cover,
              )
          ),

          child:SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width,

                    child: SvgPicture.asset("assets/icons/dwave.svg",fit: BoxFit.fill,width: double.infinity,height: 80,color: Color(0xff242746).withOpacity(0.6),)),

                SizedBox(height: 20,),

                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        color: Color(0xff242746).withOpacity(0.3),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Form(
                                key: _formKey,
                                child: Container(
                                  width: double.infinity,
                                    padding: EdgeInsets.only(top: 10),
                                    color: Colors.white.withOpacity(0.9),

                                    child: Text("Create An Account", style: GoogleFonts.poppins(fontSize: 25, color: Color(0xff242746), letterSpacing: 2),textAlign: TextAlign.center,).tr()
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                              child: Card(
                                elevation: 40,
                                shadowColor: Colors.grey[100],

                                color: Colors.transparent ,
                                child: Container(
                                    height: 50,
                                    width: double.infinity,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(50)),
                                      color: Colors.white,
                                    ),
                                    child: TextFormField(
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please enter some text';
                                          }
                                          return null;
                                        },
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.only(top: 20), // add padding to adjust text
                                          isDense: true,
                                          border: InputBorder.none,
                                          hintText: "Name",
                                          prefixIcon: Padding(
                                            padding: EdgeInsets.only(top: 15), // add padding to adjust icon
                                            child: Icon(Icons.person,color: Color(0xff242746),),
                                          ),

                                        )
                                    )
                                ),
                              ),
                            ),

                            Padding(padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                              child: Card(
                                elevation: 40,
                                shadowColor: Colors.grey[100],

                                color: Colors.transparent ,
                                child: Container(
                                  height: 50,
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(50)),
                                    color: Colors.white,
                                  ),
                                 child: TextFormField(
                                     validator: (value) {
                                       if (value == null || value.isEmpty) {
                                         return 'Please enter some text';
                                       }
                                       return null;
                                     },
                                decoration: const InputDecoration(
                                contentPadding: EdgeInsets.only(top: 20), // add padding to adjust text
                                isDense: true,
                                border: InputBorder.none,
                                hintText: "Email",
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(top: 15), // add padding to adjust icon
                                  child: Icon(Icons.email,color: Color(0xff242746),),
                                ),

                              )
                            )
                                ),
                              ),),
                            Padding(padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                              child: Card(
                                elevation: 40,
                                color: Colors.transparent ,
                                shadowColor: Colors.grey[100],

                                child: Container(
                                  height: 50,
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(50)),
                                    color: Colors.white,
                                  ),
                                    child: TextFormField(
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please enter some text';
                                          }
                                          return null;
                                        },
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.only(top: 20), // add padding to adjust text
                                          isDense: true,
                                          border: InputBorder.none,
                                          hintText: "Password",
                                          prefixIcon: Padding(
                                            padding: EdgeInsets.only(top: 15), // add padding to adjust icon
                                            child: Icon(Icons.lock,color: Color(0xff242746),),
                                          ),

                                        )
                                    )
                                ),
                              ),),
                            Padding(padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                              child: Card(
                                elevation: 40,
                                color: Colors.transparent ,
                                shadowColor: Colors.grey[100],
                                child: Container(
                                  height: 50,
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(50)),
                                    color: Colors.white,
                                  ),
                                    child: TextFormField(
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please enter some text';
                                          }
                                          return null;
                                        },
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.only(top: 20), // add padding to adjust text
                                          isDense: true,
                                          border: InputBorder.none,
                                          hintText: "Confirm Password",
                                          prefixIcon: Padding(
                                            padding: EdgeInsets.only(top: 15), // add padding to adjust icon
                                            child: Icon(Icons.person,color: Color(0xff242746),),
                                          ),

                                        )
                                    )
                                ),
                              ),),
                            Padding(padding: EdgeInsets.only(top: 40, left: 100, right: 40, bottom: 40),
                              child: Container(
                                width: 200,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.8),
                                  borderRadius: BorderRadius.all(Radius.circular(50)),

                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 1),
                                      child: Text("signup", style: TextStyle(fontSize: 20, color: Color(0xff242746))).tr(),
                                    ),

                                    GestureDetector(
                                      onTap: (){

                                        if (_formKey.currentState!.validate()) {
                                          // If the form is valid, display a snackbar. In the real world,
                                          // you'd often call a server or save the information in a database.
                                          ScaffoldMessenger.of(context).showSnackBar(
                                             SnackBar(content: Text('Fill all the fields', style: GoogleFonts.poppins(color: Colors.red, fontSize: 20),)),
                                          );
                                        }
                                        else {
                                          AnimatedSnackBar.material('Congralution Account Created Sucessfully',
                                              type: AnimatedSnackBarType.success,
                                              mobileSnackBarPosition: MobileSnackBarPosition.top,
                                              desktopSnackBarPosition:
                                              DesktopSnackBarPosition.topCenter)
                                              .show(context);
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (
                                                context) => const Login()),
                                          );
                                        }
                                      },
                                      child: Container(
                                        width: 90,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: Color(0xff242746),
                                          borderRadius: BorderRadius.all(Radius.circular(50)),

                                        ),

                                        child: Icon( Icons.arrow_right_alt_outlined, color: Colors.white, ),


                                      ),
                                    )
                                  ],
                                ),
                              ),),
                          ],
                        ),
                      ),
                    ),



                Container(
                    width: double.infinity,
                    child: SvgPicture.asset("assets/icons/uwaves.svg",fit: BoxFit.fill,width: double.infinity,height: 80,color: Color(0xff242746).withOpacity(0.6),)),
              ],
            ),
          ),
        ),
      )
    );
  }
}




