import 'package:flutter/material.dart';
import 'layout_screen.dart';

class navv extends StatefulWidget {
  const navv({ Key? key }) : super(key: key);

  @override
  _navvState createState() => _navvState();
}

class _navvState extends State<navv> {
  int currentTab = 0;
  Widget currentScreen = layout();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: PageStorageBucket(), child: currentScreen),

      bottomNavigationBar: BottomAppBar(
        // color: Colors.amber,
        child: Container(
          height: 65,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(minWidth: 50,onPressed: (){
                setState(() {
                  currentScreen = layout();
                  currentTab = 0;
                });
              }
              ,child: Icon(Icons.home,size: 35,color: currentTab== 0 ?Colors.purple:Colors.grey),),
              MaterialButton(minWidth: 50,onPressed: (){
                setState(() {
                  // currentScreen = layout();
                  currentTab = 1;
                });
              }
              ,child: Icon(Icons.favorite,size: 35,color: currentTab== 1 ?Colors.purple:Colors.grey),),
              
              FloatingActionButton(onPressed: (){},child: Icon(Icons.search,size: 35,),backgroundColor: Colors.purple,),
              MaterialButton(minWidth: 50,onPressed: (){
                setState(() {
                  // currentScreen = layout();
                  currentTab = 2;
                });
              }
              ,child: Icon(Icons.shopping_cart,size: 35,color: currentTab== 2 ?Colors.purple:Colors.grey),),
              MaterialButton(minWidth: 50,onPressed: (){
                setState(() {
                  // currentScreen = layout();
                  currentTab = 3;
                });
              }
              ,child: Icon(Icons.person,size: 35,color: currentTab== 3 ?Colors.purple:Colors.grey),),
              
            ],

          ),
        ),
      ),
      
    );
  }
}