import 'package:flutter/material.dart';
import 'package:gdsc/modules/SingleProduct/SingleProduct.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    var SearchController = TextEditingController();
    TabController tController = TabController(
      vsync: this,
      length: 3,
    );
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        TextFormField(
            controller: SearchController,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey[250],
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30)),
              label: Text('Search Coffee'),
              suffixIcon: Icon(Icons.manage_search_sharp),
            )),
        SizedBox(height: 15),
        Text(
          "Category",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(height: 15),
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
                    child: Row(
                      children: [
                        Icon(Icons.coffee),
                        Text('cappuccino'),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      children: [Icon(Icons.local_drink), Text('Cold Brew')],
                    ),
                  ),
                  Tab(
                      child: Row(
                        children: [
                          Icon(Icons.coffee_maker_outlined),
                          Text(
                            'Expresso',
                          )
                        ],
                      )),
                ])),
        SizedBox(
          height: 15,
        ),
        Container(
          width: double.infinity,
          height: 235,
          child: TabBarView(
              physics: BouncingScrollPhysics(),
              controller: tController,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SingleProduct()));
                      },
                      child: Container(
                        width: 150,
                        height: 225,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 4,
                                color: Colors.black,
                                blurStyle: BlurStyle.outer)
                          ],
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Center(
                                child: Image(
                                    image: NetworkImage(
                                        'https://th.bing.com/th/id/OIP.7iwYnXy2-nSHIu-1PcmErAHaFi?w=272&h=204&c=7&r=0&o=5&dpr=1.25&pid=1.7'),
                                    width: 170)),
                            Text(
                              'Cappuccino',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(
                              'With Chocolate',
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text('50K',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25)),
                                Spacer(),
                                Container(
                                    height: 40,
                                    width: 40,
                                    child: FloatingActionButton(
                                        onPressed: () {},
                                        child: Icon(Icons.add)))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SingleProduct()));
                      },
                      child: Container(
                        width: 150,
                        height: 225,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 4,
                                color: Colors.black,
                                blurStyle: BlurStyle.outer)
                          ],
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Center(
                                child: Image(
                                    image: NetworkImage(
                                        'https://th.bing.com/th/id/OIP.7iwYnXy2-nSHIu-1PcmErAHaFi?w=272&h=204&c=7&r=0&o=5&dpr=1.25&pid=1.7'),
                                    width: 170)),
                            Text(
                              'Cappuccino',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(
                              'With Chocolate',
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text('50K',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25)),
                                Spacer(),
                                Container(
                                    height: 40,
                                    width: 40,
                                    child: FloatingActionButton(
                                        onPressed: () {},
                                        child: Icon(Icons.add)))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SingleProduct()));
                      },
                      child: Container(
                        width: 150,
                        height: 225,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 4,
                                color: Colors.black,
                                blurStyle: BlurStyle.outer)
                          ],
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Center(
                                child: Image(
                                    image: NetworkImage(
                                        'https://th.bing.com/th/id/OIP.7iwYnXy2-nSHIu-1PcmErAHaFi?w=272&h=204&c=7&r=0&o=5&dpr=1.25&pid=1.7'),
                                    width: 170)),
                            Text(
                              'Cappuccino',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(
                              'With Chocolate',
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text('50K',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25)),
                                Spacer(),
                                Container(
                                    height: 40,
                                    width: 40,
                                    child: FloatingActionButton(
                                        onPressed: () {},
                                        child: Icon(Icons.add)))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SingleProduct()));
                      },
                      child: Container(
                        width: 150,
                        height: 225,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 4,
                                color: Colors.black,
                                blurStyle: BlurStyle.outer)
                          ],
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Center(
                                child: Image(
                                    image: NetworkImage(
                                        'https://th.bing.com/th/id/OIP.7iwYnXy2-nSHIu-1PcmErAHaFi?w=272&h=204&c=7&r=0&o=5&dpr=1.25&pid=1.7'),
                                    width: 170)),
                            Text(
                              'Cappuccino',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(
                              'With Chocolate',
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text('50K',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25)),
                                Spacer(),
                                Container(
                                    height: 40,
                                    width: 40,
                                    child: FloatingActionButton(
                                        onPressed: () {},
                                        child: Icon(Icons.add)))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SingleProduct()));
                      },
                      child: Container(
                        width: 150,
                        height: 225,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 4,
                                color: Colors.black,
                                blurStyle: BlurStyle.outer)
                          ],
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Center(
                                child: Image(
                                    image: NetworkImage(
                                        'https://th.bing.com/th/id/OIP.7iwYnXy2-nSHIu-1PcmErAHaFi?w=272&h=204&c=7&r=0&o=5&dpr=1.25&pid=1.7'),
                                    width: 170)),
                            Text(
                              'Cappuccino',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(
                              'With Chocolate',
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text('50K',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25)),
                                Spacer(),
                                Container(
                                    height: 40,
                                    width: 40,
                                    child: FloatingActionButton(
                                        onPressed: () {},
                                        child: Icon(Icons.add)))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SingleProduct()));
                      },
                      child: Container(
                        width: 150,
                        height: 225,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 4,
                                color: Colors.black,
                                blurStyle: BlurStyle.outer)
                          ],
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Center(
                                child: Image(
                                    image: NetworkImage(
                                        'https://th.bing.com/th/id/OIP.7iwYnXy2-nSHIu-1PcmErAHaFi?w=272&h=204&c=7&r=0&o=5&dpr=1.25&pid=1.7'),
                                    width: 170)),
                            Text(
                              'Cappuccino',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(
                              'With Chocolate',
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text('50K',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25)),
                                Spacer(),
                                Container(
                                    height: 40,
                                    width: 40,
                                    child: FloatingActionButton(
                                        onPressed: () {},
                                        child: Icon(Icons.add)))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Text(
              'Special Offer',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            ImageIcon(
              AssetImage('assets/Images/fire.jpg'),
              color:Colors.yellow
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SingleProduct()));
          },
          child: Container(
            width: 350,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    spreadRadius: 2,
                    blurRadius: 4,
                    color: Colors.black,
                    blurStyle: BlurStyle.outer)
              ],
              color: Colors.white,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Center(
                    child: Image(
                      image: NetworkImage(
                          'https://th.bing.com/th/id/OIP.7iwYnXy2-nSHIu-1PcmErAHaFi?w=272&h=204&c=7&r=0&o=5&dpr=1.25&pid=1.7'),
                      width: 160,
                      height: 110,
                    )),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Limited',
                        style: TextStyle(
                          backgroundColor: Colors.brown,
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                          child: Text(
                            'Buy 1 get 1 free if you buy with GoPay',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
