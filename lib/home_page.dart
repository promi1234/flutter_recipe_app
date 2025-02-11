import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/constant.dart';
import 'package:flutter_recipe_app/recipe_details.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home",style: GoogleFonts.acme(
          color: Colors.white
        ),),
        backgroundColor: Colors.redAccent,
      ),
      body: GridView.count(
          crossAxisCount: 2,
      mainAxisSpacing: 10,
      children: [
        
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => RecipeDetails(recipeName: recipe1Name, image: image1, description: description1)));
            },
            child: Card(
              elevation: 20,
              color: Colors.grey,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.redAccent
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.fastfood,
                    size: 100,
                    color: Colors.white,),

                    SizedBox(height: 10,),

                    Text(recipe1Name,style: GoogleFonts.acme(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),)

                  ],
                ),
              ),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => RecipeDetails(recipeName: recipe2Name, image: image2, description: description2)));
            },
            child: Card(
              elevation: 20,
              color: Colors.grey,
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.redAccent
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.rice_bowl,
                      size: 100,
                      color: Colors.white,),

                    SizedBox(height: 10,),

                    Text(recipe2Name,style: GoogleFonts.acme(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),)

                  ],
                ),
              ),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => RecipeDetails(recipeName: recipe3Name, image: image3, description: description3)));
            },
            child: Card(
              elevation: 20,
              color: Colors.grey,
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.redAccent
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.cake,
                      size: 100,
                      color: Colors.white,),

                    SizedBox(height: 10,),

                    Text(recipe3Name,style: GoogleFonts.acme(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),)

                  ],
                ),
              ),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => RecipeDetails(recipeName: recipe4Name, image: image4, description: description4)));
            },
            child: Card(
              elevation: 20,
              color: Colors.grey,
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.redAccent
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.local_pizza,
                      size: 100,
                      color: Colors.white,),

                    SizedBox(height: 10,),

                    Text(recipe4Name,style: GoogleFonts.acme(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),)

                  ],
                ),
              ),
            ),
          ),
        ),

      ],),
      
    );
  }
}
