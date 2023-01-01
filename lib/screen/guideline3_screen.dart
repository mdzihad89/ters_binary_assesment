import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class Guideline3Screen extends StatefulWidget {
  const Guideline3Screen({Key? key}) : super(key: key);

  @override
  State<Guideline3Screen> createState() => _Guideline3ScreenState();
}

class _Guideline3ScreenState extends State<Guideline3Screen> {
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
              child: const Center(
                child:
                Text(
                  "Universe Volunteers",
                  style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold,letterSpacing: 3),
                ),

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
              onPressed: (){},
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
