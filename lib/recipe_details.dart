import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecipeDetails extends StatefulWidget {

  String recipeName,image,description;

  RecipeDetails({super.key,required this.recipeName,required this.image,required this.description});

  @override
  State<RecipeDetails> createState() => _RecipeDetailsState();
}

class _RecipeDetailsState extends State<RecipeDetails> {
  @override
  Widget build(BuildContext context) {

    var screenWidth= MediaQuery.sizeOf(context).width;
    var fontSize= screenWidth > 600 ? 30.0 : 20.0;

    return Scaffold(
      appBar: AppBar(
        title: Text("Recipe Details",style: GoogleFonts.acme(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),),
        backgroundColor: Colors.redAccent,
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/${widget.image}",
                  width: MediaQuery.sizeOf(context).width, //app onujayi size dekhay
                  height: 300,
                  fit: BoxFit.fitWidth,)
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: MediaQuery.sizeOf(context).width,
                  color: Colors.redAccent,
                  child: Center(
                    child: Text(widget.recipeName,style: GoogleFonts.acme(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
              ],
            ),

            //recipe description
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.description,style: GoogleFonts.acme(
                fontSize: fontSize,
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),),
            )

          ],
        ),
      ),
    );
  }
}
