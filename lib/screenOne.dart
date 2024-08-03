import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'emojiState.dart';
import 'exercise_icon.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leadingWidth: 50,
        leading:
        Padding(
          padding: const EdgeInsets.only(left: (10.0)),
          child: Image.asset('assets/leaf.png'),
        ),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Moody',
          style: TextStyle(fontSize: 30,
          fontWeight:FontWeight.bold,
          )
            ),
        ) ,
        actions: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              IconButton(onPressed: (){},
                  icon: Icon(Icons.notifications_outlined,
                    size: 40,)),
              CircleAvatar(backgroundColor: Colors.red,
              radius: 6,
              )
            ],
          )

        ],
      ),
      body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
              crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hello,',
                      style: TextStyle(
                      fontSize: 25,
                      ),
                    ),
                    Text(' Sara Rose',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('How are you feeling today',
                        style: TextStyle(
                          fontSize: 20, )),
                  ],
                ),
                SizedBox(height:20,),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                    children: [
                      emojiState(
                      imageURL: 'assets/love.png',
                      state: 'Love',),
                      Spacer(),
                      emojiState(
                        imageURL: 'assets/cool.png',
                        state: 'Cool',),
                      Spacer(),
                      emojiState(
                        imageURL: 'assets/happy.png',
                        state: 'Happy',),
                      Spacer(),
                      emojiState(
                        imageURL: 'assets/sad.png',
                        state: 'Sad',),
                    ]
                  ),
                ),
                SizedBox(height:30,),
                Row(
                  children: [
                    Expanded(
                      child: Text('Features',
                      style: TextStyle(
                        fontSize: 20,
                      fontWeight: FontWeight.bold)
                        ,),
                    ),
                    Text('See more >',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF027A48),
                        fontWeight: FontWeight.bold
                    ),
                    )
                  ],
                ),
                SizedBox(height:25 ,),
                Container(
                  padding: EdgeInsets.all(25),
                  height: 165,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30)
                      ),
                    color: Color(0xFFECFDF3),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text('Positive vibes',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                          ),
                          ),
                          SizedBox(height:10 ,),
                           Text('Boost your mood with\n positive vibes',
                            style: TextStyle(
                                fontSize: 15
                            ,)),
                          SizedBox(height:10 ,),
                            Row(
                                children: [
                                  Icon(Icons.play_circle,
                                  color: Color(0xFF32D583),),
                                  Text(' 10 mins',
                                      style: TextStyle(
                                          fontSize: 15
                                      ))
                                ],
                              ),
                        ]
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset('assets/Walking the Dog.png')
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/Ellipse 7.png',
                    height: 10,),
                    Image.asset('assets/Ellipse 8.png',
                        height: 10),
                    Image.asset('assets/Ellipse 9.png',
                        height: 10),
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Expanded(
                      child: Text('Exercise',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold)
                        ,),
                    ),
                    Text('See more >',
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF027A48),
                          fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Column(
                  children: [
                    Row (
                      children: [
                        Container(
                          width: 160,
            
                          child: ExerciseIcon(
                            logo:'assets/relax.png',
                            exercise: 'Relaxiation',
                            colorr: Color(0xFFF9F5FF),
                          ),
                        ),
                        Spacer(),
            
                        Container(
                          width: 160,
                          child: ExerciseIcon(
                            logo:'assets/medit.png',
                            exercise: 'Meditation',
                            colorr: Color(0xFFFDF2FA),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25,),
                    Row (
                      children: [
                        Container(
                          width: 160,
                          child: ExerciseIcon(
                            logo:'assets/beath.png',
                            exercise: 'Beathing',
                            colorr: Color(0xFFFFFAF5),
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: 160,
                          child: ExerciseIcon(
                            logo:'assets/yoga.png',
                            exercise: 'Yoga',
                            colorr: Color(0xFFF0F9FF),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ]
                    ),
          )
    ),
      bottomNavigationBar: Container(
      height: 88,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.home_filled,
              color: Color(0xFF027A48),
              size: 30,),
              Image.asset('assets/dot.png')

            ],
          ),
          Icon(Icons.grid_view_rounded,
            color: Colors.grey,
            size: 30,),
          Icon(Icons.calendar_today_outlined,
            color: Colors.grey,
            size: 30,),
          Icon(Icons.account_circle_outlined,
            color: Colors.grey,
            size: 35,),
        ],
      ),
    ),
    );
  }
}


