
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import 'guideline3_screen.dart';

class Guideline2Screen extends StatefulWidget {
  const Guideline2Screen({Key? key}) : super(key: key);

  @override
  State<Guideline2Screen> createState() => _Guideline2ScreenState();
}

class _Guideline2ScreenState extends State<Guideline2Screen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          ClipPath(
            clipper: OvalBottomBorderClipper(),
            child: Container(
              height: 400,
              color: Colors.black,
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Universe ",
                      style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold,letterSpacing: 3),
                    ),
                    Text(
                      "Entertainment ",
                      style: TextStyle(color: Colors.red, fontSize: 20,fontWeight: FontWeight.bold,letterSpacing: 3),
                    ),

                  ],
                ),


            ),
          ),
          const SizedBox(
            height: 100,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: SizedBox(
              height: 150,
              width: 500,
              child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                style: TextStyle(
                  fontSize: 20,

                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 40,
            width: 150,
            child: ElevatedButton(
              onPressed: (){

                Navigator.push(context, MaterialPageRoute(builder: (context) => const Guideline3Screen(),));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
              child: const Text("Next", style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
