import 'package:flutter/material.dart';
import 'package:flutter/src/scheduler/ticker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdsc/layout/cubit/coffee_cubit.dart';
import 'package:gdsc/modules/SingleProduct/SingleProduct.dart';

class CoffeeLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return BlocProvider<CoffeeCubit>(
      create: (context) => CoffeeCubit(),
      child: BlocConsumer<CoffeeCubit, CoffeeState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          CoffeeCubit c= CoffeeCubit.get(context);
          return  Scaffold(
            backgroundColor: Colors.white,
            body: Padding(
              padding: const EdgeInsets.only(left: 15, top: 70, right: 15),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://t3.ftcdn.net/jpg/03/19/65/14/360_F_319651425_qE3QWk5b4yY6hdM9rOdVsqg04eTgxLCd.jpg'),
                          radius: 35.0,
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Icon(
                          Icons.location_on,
                          color: Colors.brown,
                        ),
                        Text('Bintara,Bekasi'),
                        SizedBox(
                          width: 40,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.notifications_none,
                              size: 40,
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Good Morning,Mary',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    c.Screen[c.currentIndex]
                  ],
                ),
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: Colors.brown,
                unselectedItemColor: Colors.grey,
                showUnselectedLabels: true,
                currentIndex:c.currentIndex,
                onTap: (Index){
                  c.ChangeIndex(Index);
                },
                items: c.bottomItem
            ),
          );
        },
      ),
    );
  }
}
