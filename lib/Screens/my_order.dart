import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shine/Screens/status_screen.dart';
import 'package:shine/widgets/myorder_card.dart';

class MyOrder extends StatelessWidget {
   MyOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(


          title: Text("My Orders", style: GoogleFonts.poppins(),).tr(),


          backgroundColor: Color(0xff242746),


        ),
      body: SafeArea(
        child: ListView(
          children: [
            Myorder_Card(url: "assets/tea/coffee-cup.png", title: "Tea", subtitle: "Coffie-cup", date: "6/03/2023", rate: "180", onTab: () {  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  StatusScreen()),
            ); },),
            Myorder_Card(url: "assets/tea/coffee-cup.png", title: "Tea", subtitle: "Coffie-cup", date: "6/03/2023", rate: "180", onTab: () {  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  StatusScreen()),
            ); },),

            Myorder_Card(url: "assets/tea/coffee-cup.png", title: "Tea", subtitle: "Coffie-cup", date: "6/03/2023", rate: "180", onTab: () {  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  StatusScreen()),
            ); },),

            Myorder_Card(url: "assets/tea/coffee-cup.png", title: "Tea", subtitle: "Coffie-cup", date: "6/03/2023", rate: "180", onTab: () {  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  StatusScreen()),
            ); },),

            Myorder_Card(url: "assets/tea/coffee-cup.png", title: "Tea", subtitle: "Coffie-cup", date: "6/03/2023", rate: "180", onTab: () {  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  StatusScreen()),
            ); },),

            Myorder_Card(url: "assets/tea/coffee-cup.png", title: "Tea", subtitle: "Coffie-cup", date: "6/03/2023", rate: "180", onTab: () {  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  StatusScreen()),
            ); },),

            Myorder_Card(url: "assets/tea/coffee-cup.png", title: "Tea", subtitle: "Coffie-cup", date: "6/03/2023", rate: "180", onTab: () {  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  StatusScreen()),
            ); },),

            Myorder_Card(url: "assets/tea/coffee-cup.png", title: "Tea", subtitle: "Coffie-cup", date: "6/03/2023", rate: "180", onTab: () {  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  StatusScreen()),
            ); },),

            Myorder_Card(url: "assets/tea/coffee-cup.png", title: "Tea", subtitle: "Coffie-cup", date: "6/03/2023", rate: "180", onTab: () {  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  StatusScreen()),
            ); },),

            Myorder_Card(url: "assets/tea/coffee-cup.png", title: "Tea", subtitle: "Coffie-cup", date: "6/03/2023", rate: "180", onTab: () {  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  StatusScreen()),
            ); },),



          ],
        ),
      )
    );
  }

}
