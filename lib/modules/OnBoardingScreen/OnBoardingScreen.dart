import 'package:flutter/material.dart';
import 'package:gdsc/layout/CoffeeLayout.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onBoardingPages {
  late final String ImageUrl;
  late final String Title;
  late final String Description;
  onBoardingPages({ImageUrl, Title, Description}) {
    this.ImageUrl = ImageUrl;
    this.Title = Title;
    this.Description = Description;
  }
}

class OnBoardingScreen extends StatelessWidget {
  var OnboardController = PageController();

  List<onBoardingPages> pages = [
    onBoardingPages(
        ImageUrl:
            "https://images.unsplash.com/photo-1510972527921-ce03766a1cf1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZnJpZW5kcyUyMGNhZmV8ZW58MHx8MHx8&w=1000&q=80",
        Title: "Good coffee,\nGood friends,\nlet it blends",
        Description:
            "The best grain,the finest roast,\n the most powerful flavor."),
    onBoardingPages(
        ImageUrl:
            "https://i.pinimg.com/originals/c0/1c/bd/c01cbd7c2c788b935df43eb982c9e45f.jpg",
        Title:
            "Behind many successful person is\n Asubstantial Amount of coffee",
        Description:
            "The best grain,the finest roast,\n the most powerful flavor."),
    onBoardingPages(
        ImageUrl:
            "https://static.vecteezy.com/system/resources/previews/006/490/949/original/quotes-about-coffee-coffee-makes-everything-better-design-for-coffee-shop-decoration-printable-typography-design-for-cafe-vector.jpg",
        Title: "",
        Description: ""),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.brown[300],
      child: Stack(
        children: [
          PageView.builder(
            itemBuilder: (BuildContext context, int index) =>
                OnBoardingItem(pages[index]),
            itemCount: pages.length,
            controller: OnboardController,
            physics: BouncingScrollPhysics(),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SmoothPageIndicator(
                  controller: OnboardController,
                  count: pages.length,
                  effect:
                      ExpandingDotsEffect(activeDotColor: Colors.brown.shade300),
                ),
                SizedBox(height:20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => CoffeeLayout()),
                        (route) => false);
                  },
                  child: Text(
                    "Get Started",
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
                SizedBox(height: 30,)
              ],
            ),
          )
        ],
      ),
    ));
  }

  Widget OnBoardingItem(onBoardingPages page) =>
      Stack(fit: StackFit.expand, children: [
        Image(
          image: NetworkImage("${page.ImageUrl}"),
          fit: BoxFit.fill,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              gradient: LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.5),
                    Colors.black.withOpacity(0.5),
                  ],
                  stops: [
                    0.5,
                    0.5
                  ])),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${page.Title}",
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 15.0),
            Text(
              "${page.Description}",
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        )
      ]);
}
