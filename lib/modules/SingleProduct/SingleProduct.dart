import 'package:flutter/material.dart';

class SingleProduct extends StatefulWidget {
  const SingleProduct({Key? key}) : super(key: key);

  @override
  State<SingleProduct> createState() => _SingleProductState();
}

class _SingleProductState extends State<SingleProduct>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tController = TabController(
      vsync: this,
      length: 3,
    );
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image(
                  image: NetworkImage(
                      'https://th.bing.com/th/id/OIP.7iwYnXy2-nSHIu-1PcmErAHaFi?w=272&h=204&c=7&r=0&o=5&dpr=1.25&pid=1.7'),
                  width: double.infinity,
                ),
                Container(
                  width: double.infinity,
                  color: Colors.black.withOpacity(.5),
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 10.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Cappuccino",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          Text(
                            "With Chocolate",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.white,
                            ),
                          ),
                          Spacer(),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.brown,
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                ),
                                Text(
                                  '4.9',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ImageIcon(
                              AssetImage('assets/Images/beans.jpg'),
                              color: Colors.brown,
                              size: 40,
                            ),
                            Text(
                              'Coffee',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Text(
                              '|',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            ),
                            ImageIcon(AssetImage('assets/Images/Chocolate.jpg'),
                                color: Colors.brown, size: 40),
                            Text(
                              'Chocolate',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Text(
                              '|',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            ),
                            Text(
                              'medium Roasted',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Text(
                              '|',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Coffee Size',
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                          child: TabBar(
                              indicator: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.brown[300],
                              ),
                              labelColor: Colors.black,
                              controller: tController,
                              isScrollable: true,
                              tabs: [
                            Tab(
                              child: Text('Small'),
                            ),
                            Tab(child: Text('Mediam')),
                            Tab(
                              child: Text(
                                'Large',
                              ),
                            ),
                          ])),
                      SizedBox(
                        height: 15,
                      ),
                      Text("About",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                      SizedBox(
                        height: 15,
                      ),
                      Text('Outside of Italy, cappuccino is a coffee drink that today is typically composed of a single espresso shot and hot milk, with the surface topped with foamed milk. Cappuccinos are most often prepared with an espresso machine.',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                      SizedBox(height: 60,),
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text(
                              "Add to Cart",
                            ),
                            Spacer(),
                            Text('|',),
                            Spacer(),
                            Text('50 K')
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.brown,
                          shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                          minimumSize:Size(180,50),
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
