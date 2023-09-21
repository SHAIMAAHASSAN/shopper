import 'package:flutter/material.dart';
import 'package:shopper/models/list.dart';
import 'package:shopper/models/listTile.dart';
import 'package:shopper/screens/cart.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
    String selectedItems="";
   List<String> ItemsNew=[];
/* void _addItem( String selectedItemsn) {
    setState(() {
      selectedItems=selectedItemsn;
      ItemsNew.add('Item ${selectedItems.length + 1}');
    });
  }*/
    List<String> _addItem( String selectedItemsn) {
      List<String> newItems =[];
      int index = 0;

    setState(() {
      for(index =0;index<8; ){
      selectedItems=selectedItemsn;
      newItems.add(selectedItems);
      index++;}
    });

      return newItems;

    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (Context) => SingleChildScrollView(
                    child: Container(
                        padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom,
                        ),
                        margin: EdgeInsets.all(10),
                        child: Cart(selectedData: ItemsNew,)),
                  ));
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                Text("Category")
              ],
            ),
            Container(margin: EdgeInsets.all(10), child: Text("Items")),
            Expanded(
              child: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: ListView.builder(
                    itemCount: Product.length,
                    itemBuilder: (context, index) {
                      return ListTileShop(
                          Product[index].name, Product[index].isChoose,
                          (newValue) {
                        setState(() {
                          Product[index].chooseChange();
                        });
                        if( Product[index].isChoose==true){
                          _addItem(Product[index].name);
                        }
                      });
                    },
                  )

                  //ListView(
                  //  children: Product
                  //    .map((data) => ListTileShop(data.name,data.isChoose)).toList(),

                  // ),
                  ),
            )
          ],
        ),
      ),
    );
  }
}
