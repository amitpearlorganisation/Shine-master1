import 'dart:async';

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flushbar/flutter_flushbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shine/Screens/dashboard/dashboard.dart';
import 'package:shine/utility/appPreferences.dart';


import '../CreateAccount/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String dropdownValue = 'Language';
  final formkey=GlobalKey<FormState>();
  late StreamSubscription subscription;
  var isDeviceConnected = false;
  bool isAlertSet = false;

  TextEditingController emailCon = TextEditingController();
  TextEditingController passwordCon = TextEditingController();
  @override
  void initState(){
    getConnectivity();
    super.initState();
  }
  getConnectivity() =>
      subscription = Connectivity().onConnectivityChanged.listen((ConnectivityResult result) async{
        isDeviceConnected = await InternetConnectionChecker().hasConnection;
        if(isDeviceConnected && isAlertSet == false){
          // showDailogBox();
          setState(()=> isAlertSet = false);
          print("yaha data aa raha hai");
        }
        else if(!isDeviceConnected ==true){
          showDailogBox();
          setState(()=> isAlertSet = true);
          print("ye net off ka data h");

        }

      } );
  @override
  void dispose(){
    subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        padding: EdgeInsets.only(top: 40),
        decoration: BoxDecoration(
            image: new DecorationImage(
              image: new ExactAssetImage('assets/tea/foodbg_2.jpeg'),
              fit: BoxFit.cover,
            )
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.transparent,
                height: 150,
                child: Center(
                  child: Image.asset("assets/images/blanc.png", height: 80,),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("welcome", style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      letterSpacing: 2)).tr(),
                  SizedBox(width: 8,),
                  Text("Food", style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      letterSpacing: 2)),
                ],
              ),

              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            topRight: Radius.circular(60))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: BlurryContainer(
                          width: double.infinity,
                          color: Colors.white.withOpacity(0.1),
                          elevation: 5,
                          blur: 2,

                          child: Column(

                            children: [

                              Padding(padding: EdgeInsets.only(
                                  top: 20, left: 20, right: 20),
                                child: Card(
                                  elevation: 40,
                                  shadowColor: Colors.grey[200],

                                  color: Colors.transparent,
                                  child: Form(
                                    key: formkey,

                                    child: Container(
                                        height: 50,
                                        width: double.infinity,
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50)),
                                          color: Colors.white,
                                        ),
                                        child:  TextFormField(
                                         controller: emailCon,

                                            validator: (value) {
                                              if (value == null || value.isEmpty) {
                                                return "Email is empty";
                                              }
                                              return null;
                                            },
                                            onSaved: (value) => emailCon = value as TextEditingController,

                                            decoration: const InputDecoration(
                                              contentPadding: EdgeInsets.only(
                                                  top: 20),
                                              // add padding to adjust text
                                              isDense: true,
                                              border: InputBorder.none,
                                              hintText: "Email",
                                              prefixIcon: Padding(
                                                padding: EdgeInsets.only(
                                                    top: 15),
                                                // add padding to adjust icon
                                                child: Icon(Icons.email,
                                                  color: Color(0xff242746),),
                                              ),

                                            )
                                        )
                                    ),
                                  ),
                                ),
                              ),


                              Padding(padding: const EdgeInsets.only(
                                  top: 20, left: 20, right: 20),
                                child: Card(
                                  elevation: 40,
                                  shadowColor: Colors.grey[100],

                                  color: Colors.transparent,
                                  child: Container(
                                      height: 50,
                                      width: double.infinity,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50)),
                                        color: Colors.white,
                                      ),
                                      child:  TextFormField(
                                          controller: passwordCon,
                                          validator: (value) {
                                            if (value == null || value.isEmpty) {
                                              return "Password can't be null";
                                            }
                                            return null;
                                          },
                                          decoration: const InputDecoration(
                                            contentPadding: EdgeInsets.only(
                                                top: 20),
                                            // add padding to adjust text
                                            isDense: true,
                                            border: InputBorder.none,
                                            hintText: "Password",
                                            prefixIcon: Padding(
                                              padding: EdgeInsets.only(
                                                  top: 15),
                                              // add padding to adjust icon
                                              child: Icon(Icons.lock,
                                                color: Color(0xff242746),),
                                            ),

                                          )
                                      )
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: GestureDetector(
                                  onTap: () {
                                    if(formkey.currentState!.validate()) {

                                      Navigator.pushReplacement<void, void>(
                                        context,
                                        MaterialPageRoute<void>(
                                          builder: (BuildContext context) => const DashBoard(),
                                        ),
                                      );
                                    }



                                  },
                                  child: Container(
                                      width: 240,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            50),
                                        color: Color(0xff242746),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment
                                            .center,
                                        crossAxisAlignment: CrossAxisAlignment
                                            .center,
                                        children: [
                                          Text("login",
                                            style: GoogleFonts.poppins(
                                                fontSize: 20,
                                                color: Colors.white,
                                                letterSpacing: 2),).tr(),
                                          Icon(
                                            Icons.arrow_right_alt_outlined,
                                            color: Colors.white,),
                                        ],
                                      )


                                  ),
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 20),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (
                                              context) =>  signup()),
                                    );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 40),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .spaceAround,
                                      children: [
                                        Container(
                                          width: 130,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius
                                                .circular(50),
                                            color: Color(0xff242746),
                                          ),
                                          child: Center(child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 2, right: 2),
                                            child: Text('signup',
                                              style: GoogleFonts.poppins(
                                                  fontSize: 20,
                                                  color: Colors.white,
                                                  letterSpacing: 3),).tr(),
                                          )),
                                        ),
                                        GestureDetector(
                                          onTap: () {},

                                          child: Container(
                                              width: 100,
                                              height: 50,

                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius
                                                    .circular(50),
                                                color: Color(0xff242746),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.2),
                                                    //color of shadow
                                                    spreadRadius: 3,
                                                    //spread radius
                                                    blurRadius: 7,
                                                    // blur radius
                                                    offset: Offset(0, 2), //
                                                  ),
                                                ],
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Image.asset(
                                                  'assets/images/google.png',
                                                  width: 20,
                                                  height: 20,
                                                  fit: BoxFit.contain,),
                                              )

                                          ),)
                                      ],
                                    ),
                                  ),
                                ),),
                              SizedBox(height: 20,),
                          Container(
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.7),

                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5, right: 5),
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
                                    style: GoogleFonts.poppins(fontSize: 17),
                                  ),
                                );
                              }).toList(),
                              // Step 5.
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownValue = newValue!;
                                  if(newValue=='English'){
                                    context.locale = Locale('en', 'US');
                                    AppPreferences.setSaveLangData(newValue);
                                  }
                                  else if(newValue =='French'){
                                    context.locale= Locale('de', 'DE');
                                    AppPreferences.setSaveLangData(newValue);
                                  }
                                });
                              },
                            ),
                          ),
                          ),


                            ],
                          )
                      ),
                    )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  showDailogBox()=> showCupertinoDialog(context: context,

      builder: (BuildContext context)=>  CupertinoAlertDialog(
        title: Row(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.signal_wifi_connected_no_internet_4_rounded),
              SizedBox(width: 10,),
            Text('No Connection'),
          ],
        ),
        content: Text('Please Check Your Internet Connection'),
        actions:<Widget> [
             TextButton(
                 onPressed: () async{
               Navigator.pop(context, 'cancel');
               setState(()=> isAlertSet=false);
               isDeviceConnected =
                   await InternetConnectionChecker().hasConnection;

               if(!isDeviceConnected){
                 showDailogBox();
                 setState(()=> isAlertSet = true);
               }

             }, child: Text("ok"))
        ],
      ));

  void showTopSnackBar(BuildContext context) => Flushbar(
    icon: Icon(Icons.error, size: 32,),
    shouldIconPulse: false,
    title: "Error",
    message: "please check your input fields",
    duration: Duration(seconds: 3),
    flushbarPosition: FlushbarPosition.TOP,
    borderRadius: BorderRadius.circular(16),
    backgroundColor: Colors.red,
  )..show(context);

}

 
