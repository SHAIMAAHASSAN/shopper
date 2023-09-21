import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopper/screens/products.dart';
import 'package:shopper/screens/products.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(title: Text("Catalog"),
     actions: [Icon(Icons.shopping_cart)], ),
        body: HomePage(),
      ),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final myController = TextEditingController();
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(3),
            margin: EdgeInsets.all(10),
            child: CircleAvatar(
                radius: 75, backgroundImage: AssetImage("images/download.jpg")),
          ),

          //Image(image: AssetImage("images/download.jpg"))),

          Container(
            width: 300,
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(3),
            child: TextField(
              controller: myController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'User_Name',
              ),
            ),
          ),

          Container(
            width: 300,
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(3),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Password',
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () async {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      // Retrieve the text that the user has entered by using the
                      // TextEditingController.
                      content: Text(" Welcome " +
                          myController.text +
                          " in Flutter World "),
                    );
                  },
                );
                //send data to second page

                RouteSettings routeSettings =
                RouteSettings(arguments: {"text": myController.text});
                //go next page
               await Navigator.push(
                 context,
                MaterialPageRoute(
                    builder: (context) => Products(),
                    settings: routeSettings,
                  ),
                );
              },
              child: Text("login")),
        ],
      ),
    );
  }
}

