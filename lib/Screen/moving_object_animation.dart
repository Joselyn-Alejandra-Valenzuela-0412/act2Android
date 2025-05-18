import 'dart:math';

import 'package:flutter/material.dart';
import 'package:myapp/Model/List%20Scroll/headphone_model.dart';


class MovingObjectAnimation extends StatefulWidget {
  const MovingObjectAnimation({super.key});

  @override
  State<MovingObjectAnimation> createState() => _MovingObjectAnimationState();
}

class _MovingObjectAnimationState extends State<MovingObjectAnimation>
with SingleTickerProviderStateMixin {
  int selectedIndex = 0;
  late AnimationController animationController;
  late Animation<Offset> moveAnimation;
 @override
 void initState() {
  animationController = AnimationController(
    vsync: this,
    duration:  
     const Duration(milliseconds: 1000),
     
     )..repeat(reverse: true);
     moveAnimation = Tween( begin: Offset(0, 0), 
     end: Offset(0, 0.03))
     .animate(animationController);
     super.initState();
  
    }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 56, 53, 53) ,
      body: SafeArea(
        child: Column(
          children: [
            SlideTransition(
              position: moveAnimation,
              child: AnimatedSwitcher(

              duration: const Duration(milliseconds: 1000),
           child:  Image.asset(
              products[selectedIndex].image,
              width: 180,  // Tamaño específico
              height: 300,
              fit: BoxFit.contain,
              key: ValueKey<int>(selectedIndex),
            ),
             ),
            ),
      const SizedBox(height: 25,),
      const Text("JUJUTSU KAISEN",
      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Color.fromARGB(255, 255, 255, 255)),),
     
      const Text("Vol.7",
      style: TextStyle(fontSize: 25,color: Color.fromARGB(255, 143, 221, 113)),),
       const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: 
                List.generate(products.length, (index) {
                  return Container(
                    margin:  EdgeInsets.symmetric(horizontal: 10),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child:  Container(
                        height: 50, 
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle ,
                          color: products[index].color,
                          border: Border.all( 
                            width: 2,
                            color: selectedIndex == index ?
                            Colors.white70 :
                            Colors.transparent, ) 
                            ),
                            child: Icon(Icons.check,color: selectedIndex == index ?
                            Colors.white70 :
                            Colors.transparent,),
                        ),

                  ),
                   );
                } ),


             
            ),
            const SizedBox(height: 25),
            const Text("MX. 179",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
      color: Color.fromARGB(255, 174, 231, 136)),),
      

          ],
        )),
    );
  }
}