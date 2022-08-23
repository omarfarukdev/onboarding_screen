import 'package:flutter/material.dart';
import 'package:onboarding_screen/screens/home_screen.dart';
Widget board_page(String img_path,String title,String desc,PageController controllere,bool isLast,BuildContext context){
  //let's create a custom text style
  TextStyle titleStyle=TextStyle(
      color: Colors.white,
      fontSize: 36.0,
      fontWeight: FontWeight.bold,
  );
  TextStyle descStyle=TextStyle(
    color: Colors.white,
    fontSize: 20.0,
    fontWeight: FontWeight.w400,
  );

  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(img_path),
        fit: BoxFit.cover,
        //now we will make the image darker
        colorFilter: ColorFilter.mode(
            Colors.black54,
            BlendMode.luminosity, //you can try the different mode and pick the one you liked the most
        ),
      ),
    ),
    padding: EdgeInsets.all(16.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: titleStyle,),
        SizedBox(height: 8.0,),
        Text(desc,style: descStyle,),
        SizedBox(height: 64.0,),
        Align(
          alignment: Alignment.centerRight,
          child: RawMaterialButton(
            onPressed: (){
              if(isLast){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              }
              else{
                controllere.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
              }

            },
            fillColor: Colors.orange[800],
            padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 64.0),
            shape: StadiumBorder(),
            child: Text(
              //we will change the text of the button according to the page index
              isLast ? "Skip" : "Next Page",
              style: TextStyle(color: Colors.white,fontSize: 18.0),),
          ),
        ),
        SizedBox(height: 12.0,),
  ],
    ),

  );
}