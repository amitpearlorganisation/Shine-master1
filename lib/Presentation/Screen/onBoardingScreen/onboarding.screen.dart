import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shine/Presentation/Screen/onBoardingScreen/OnBoardContent.dart';
import 'package:shine/Screens/loginPage/login.dart';

import '../../../app/Constant/app.color.dart';
import '../../../utility/appPreferences.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key,}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;
  int _pageIndex = 0;
  int count = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(

      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: PageView.builder(
                  itemCount: demo_data.length,
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _pageIndex = index;
                    });
                  },
                  itemBuilder: (context, index) =>
                      OnBoardContent(
                          image: demo_data[index].image,
                          title: demo_data[index].title,
                          description: demo_data[index].description
                      )
              ),
            ),

            Stack(
              alignment: Alignment.center,
              fit: StackFit.passthrough,
              children: <Widget>[
                // Max Size Widget
                Container(
                  height: 200,
                  width: 400,
                  color: Colors.transparent,

                ),
                Positioned(
                  top: 40,
                  child: Center(
                    child: Container(
                        height: 200,
                        width: 400,
                        color: Color(0xff242746),
                        child: Row(
                          children: [
                            ...List.generate(demo_data.length, (index) =>
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: DotIndicator(
                                      isActive: index == _pageIndex),
                                )
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 120),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Login()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20.0, vertical: 10.0),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            10.0)
                                    ),
                                    primary: Colors.white
                                ),
                                child: Text(
                                  "Sauter",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black, fontSize: 18),
                                ).tr(),
                              ),
                            )
                          ],
                        )
                    ),
                  ),
                ),
                Positioned(
                    top: 10,
                    child: ElevatedButton(
                      onPressed: () {
                        if (count == demo_data.length - 1) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()),
                          );
                        }
                        count++;
                        _pageController.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.ease);
                      },
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 20.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)
                          ),
                          primary: Colors.white
                      ),
                      child: Icon(Icons.arrow_right_alt_outlined,
                        color: Color(0xff242746),
                      size: 30,),
                    )
                ),

              ],

            ),



          ],
        ),
      ),
    );
  }
}
class onBoard {
  final String image, title, description;

  onBoard(
  {
    required this. image,
    required this. title,
    required this.description
}
      );

}

final List<onBoard> demo_data = [
  onBoard(image: "assets/icons/brand_identity.png", title: "Trouvez l'article que vous cherchez", description: "Ici vous voyez de riches variétés de produits, soigneusement classés"),
  onBoard(image: "assets/icons/dairy-products.png", title: "Obtenez ces articles d'achat", description: "Ajoutez n'importe quel article que vous souhaitez au panier"),
  onBoard(image: "assets/icons/cost.png", title: "Système sécurisé rapide", description: "Pour détecter les performances du produit"),
  onBoard(image: "assets/icons/brand_identity.png", title: "Trouvez l'article que vous cherchez", description: "Ici vous voyez de riches variétés de produits, soigneusement classés"),
  onBoard(image: "assets/icons/dairy-products.png", title: "Obtenez ces articles d'achat", description: "Ajoutez n'importe quel article que vous souhaitez au panier"),
  onBoard(image: "assets/icons/cost.png", title: "Système sécurisé rapide", description: "Pour détecter les performances du produit")
];

class DotIndicator extends StatelessWidget {
  const DotIndicator({Key? key,  this.isActive= false}) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isActive ? 15 : 12,
      width: 15,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12))
      ),
    );
  }
}
