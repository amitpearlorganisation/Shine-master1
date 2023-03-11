import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class dashboardItems extends StatelessWidget {
  final String imagePath;
  final String title;
  final String itemCount;
  final VoidCallback onTab;

  const dashboardItems({Key? key,  required this.imagePath, required this.title,required this.itemCount, required this.onTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        width: double.infinity,
        height: 80,
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                   color: Colors.grey[200],
                      borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                  child: Image.asset(imagePath,
                    fit: BoxFit.scaleDown,
                    width: 10,
                    height: 10,
                    scale: 0.15,

                  ),
              ),

              Column(
                children: [
                  Text(title, style: GoogleFonts.poppins(fontSize: 20 ,fontWeight: FontWeight.w300),),
                   Row(
                     children: const [
                       ImageIcon(
                         AssetImage("assets/icons/triangle.png"),
                         color: Colors.green,
                         size: 15,
                       ),
                       Padding(
                         padding: EdgeInsets.all(8.0),
                         child: Text("245"),
                       ),
                       ImageIcon(
                         AssetImage("assets/icons/arrow-point-to-down.png"),
                         color: Colors.red,
                         size: 15,
                       ),
                       Padding(
                         padding: EdgeInsets.all(8.0),
                         child: Text("245"),
                       )
                     ],
                   )
                ],
              ),

              Text(itemCount, style: GoogleFonts.poppins(fontSize: 20 ,fontWeight: FontWeight.w300),)


            ],
          ),
        ),

      ),
    );
  }
}




