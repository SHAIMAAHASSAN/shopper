class Item{
  String name;
  bool isChoose ;
  Item( { required this.name, required this.isChoose });
  void chooseChange(){
    isChoose= !isChoose;
  }

}