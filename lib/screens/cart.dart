import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
 List<String>  selectedData;
  Cart({ required this.selectedData,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child: Text(
              "Your Shopping list :",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                decoration: TextDecoration.underline,),
            ),
          ),
          Container(padding: EdgeInsets.all(5),
              child: Text(" You choose :"+ selectedData.toString()
              +"hello")),
          //TextField(
           // autofocus: true,
            //decoration: InputDecoration(
              //border: OutlineInputBorder(),
              //hintText: '',
            //),
        //  ),
          Container(padding: EdgeInsets.only(top: 10),
            child: TextButton(onPressed: () {}, child: Text("Add Cart ")
            ,style: TextButton.styleFrom(
                backgroundColor: Colors.cyan,
                primary: Colors.white,
              ),),
          )
        ],
      ),
    );
  }
}
