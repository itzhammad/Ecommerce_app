import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class layout extends StatefulWidget {
  const layout({ Key? key }) : super(key: key);

  @override
  _layoutState createState() => _layoutState();
}

class _layoutState extends State<layout> {

  var productName = ['Mutton','Beef','Bikes','Computers','Laptops','Vegetables','Backlit','iPhone 12','Gaming PC','Airpods Pro','Note 20 Ultra','Jewellery'];
  var productImages = ['2.jpeg','1.jpg','3.png','imac.jpg','macbook_air.jpg','7.jpg','4.jpg','8.jpg','9.jpg','airpods_pro.jpg','10.jpeg','11.png'];
  int current_title= 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ecomm App UI",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.notifications,color: Colors.black,),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.grey[100],
        child: ListView(
          shrinkWrap: true,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:10.0,vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("Items",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                Text("View More",style: TextStyle(fontSize: 18,color: Colors.purple)),
              ],),
            ),

            //Card For Slider 
            CarouselSlider(
              options: CarouselOptions(
                 height: MediaQuery.of(context).size.height*0.53,
                // enlargeCenterPage: true,
                aspectRatio: 16,
                autoPlay: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayInterval: Duration(seconds: 2),
                autoPlayCurve: Curves.fastOutSlowIn,
                viewportFraction: 1,
                onPageChanged: (index,reason){
                  setState(() {
                    current_title = index;
                    
                  });
                }

              ),

              items: productImages.map((items){
                return Builder(
                  builder: (BuildContext context){
                    return Padding(
              padding: const EdgeInsets.symmetric(horizontal:5.0),
              child: Card(
                shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(15)
                  ),
                // color: Colors.amber,
                clipBehavior: Clip.hardEdge,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height*0.4,
                      decoration: BoxDecoration(
                      // color: Colors.purple,
                        borderRadius:BorderRadius.circular(15)
                      ),
                      child: Image.asset(items,fit: BoxFit.cover,),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
                        child: Text('${productName[current_title]}',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,)),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 5, 10),
                        child: Row(
                          children: [
                            Icon(Icons.star,color: Colors.amber,),
                            Icon(Icons.star,color: Colors.amber,),
                            Icon(Icons.star,color: Colors.amber,),
                            Icon(Icons.star,color: Colors.amber,),
                            Icon(Icons.star,color: Colors.amber,),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text("5.0 (23 Reviews)"),
                            )
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            );
                  }
                  );
              }
              ).toList(),
            ),
            
            // End of card

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text("More Categories",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                ],
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  smallCard('Clothing','5 Items',Icon(Icons.cabin,color: Colors.purple,size: 30,)),
                  smallCard('Electronics','20 Items',Icon(Icons.electric_bike,size: 30,color: Colors.purple,)),
                  smallCard('Households','20 Items',Icon(Icons.chair,size: 30,color: Colors.purple,)),
                  smallCard('Appliances','20 Items',Icon(Icons.electric_bike,size: 30,color: Colors.purple,)),
                  smallCard('Others','20 Items',Icon(Icons.arrow_forward_ios,size: 30,color: Colors.purple,)),
                ],
              ),
            ),

              Padding(
              padding: const EdgeInsets.symmetric(horizontal:10.0,vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("Popular Items",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                Text("View More",style: TextStyle(fontSize: 18,color: Colors.purple)),
              ],),
            ),
GridView.count(
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              // crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              children: List.generate(productName.length, (index){
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            // color: Colors.amber,
                            borderRadius: BorderRadius.circular(10),
                            // color: Colors.amber
                          ),
                          height: MediaQuery.of(context).size.height*0.185,
                          width: MediaQuery.of(context).size.width,
                          clipBehavior: Clip.hardEdge,
                          child: Image.asset(productImages[index],fit: BoxFit.cover,),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Text(productName[index],style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                             children: [
                            Icon(Icons.star,size: 15,color: Colors.amber,),
                            Icon(Icons.star,size: 15,color: Colors.amber,),
                            Icon(Icons.star,size: 15,color: Colors.amber,),
                            Icon(Icons.star,size: 15,color: Colors.amber,),
                            Icon(Icons.star,size: 15,color: Colors.amber,),
                             ],
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5),
                              child: Text('5.0 (23 Reviews)'))
                          ],
                        )
                      ],
                    ),
              ),
                );
              }
              ) 
              ),

              SizedBox(height: 20,),
             


          
            
            
          ],
        ),
      ),
      
    );
  }
}

Widget smallCard(var catName, var itemsCount,Icon icon){
  return Container(
                    decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(15), 

                    ),
                    height: 70,
                    width: 200,
                    margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        icon,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(catName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                            Text(itemsCount),
                          ],
                        )
                      ],
                    )
                    );
}