import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Myorder_Card extends StatelessWidget {
  final String url;
  final String title;
  final String subtitle;
  final String date;
  final String rate;
  final VoidCallback onTab;



  const Myorder_Card({Key? key, required this.url, required this.title, required this.subtitle, required this.date, required this.rate, required this.onTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
          mainAxisSize: MainAxisSize.min,
          children:   <Widget>[
            ListTile(
              onTap: onTab,
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 30,
                backgroundImage: AssetImage(url),
              ),
              title: Text(title,style: GoogleFonts.poppins(color: Colors.black),),
              subtitle: Text(subtitle ,style: GoogleFonts.poppins(color: Colors.black)),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("\$ $rate", style: GoogleFonts.poppins(color: Colors.black),),
                  Text(date, style: GoogleFonts.poppins(color: Colors.black),),

                ],
              ),

            ),
            Divider(color: Colors.black,)
          ],
        ),
    );
  }
}
