
import 'package:flutter/material.dart';
import 'package:travel_app/colors/app_color.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/app_text.dart';
import 'package:travel_app/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images= [
    "splh01.jpg",
     "splh02.jpg",
      "splh03.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical ,
        itemCount: images.length,
        itemBuilder: (_, index){
          return Container(
          width: double.maxFinite ,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/imag/"+images[index]

                ),
                fit: BoxFit.cover
                ),
            ),
            child: Container(
              margin: const EdgeInsets.only(top:150, left:25, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(text: 'Trips'),
                      AppText(text: 'Mountain', size: 25,),
                      SizedBox(height: 20,),
                      Container(
                        width: 250,
                        child: AppText(text: 
                        "Mountain hike give you an incredible sense of freedom along with endurance test ",
                         color: AppColors.textColor1,
                         size: 16
                        ),  
                      ),
                    SizedBox(height: 40,),
                    ResponsiveButton(width: 120,),

                    ],
                  ),
                  Column(
                    children: List.generate(3, (indexDots) {
                      return Container(
                        margin: const EdgeInsets.only(bottom:8),
                        width: 8,
                        height: index==indexDots?25:8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color:  index==indexDots?AppColors.mainColor:AppColors.mainColor.withOpacity(0.3),
                        ),
                      );
                    }),
                  ),
                  
                ],
              ),
            ) ,
          );

        
      }) ,
    );
    
  }
}