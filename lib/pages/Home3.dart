import 'package:flutter/material.dart';
import '../NavigationBar.dart' as EcomNavigationBar;

class Home3Page extends StatefulWidget {
  const Home3Page({super.key});

  @override
  State<Home3Page> createState() => _Home3PageState();
}

final Widget newCollection = Image.asset(
  'assets/images/png/main-home3-up.png',
  width: double.infinity,
  fit: BoxFit.cover,
  // semanticsLabel: 'Retour en arrière',
);
final Widget mensHoodies = Image.asset(
  'assets/images/png/main-home3-right.png',
  width: double.infinity,
  fit: BoxFit.cover,
  // semanticsLabel: 'Retour en arrière',
);
final Widget black = Image.asset(
  'assets/images/png/main-home3-left.png',
  width: double.infinity,
  fit: BoxFit.cover,
  // semanticsLabel: 'Retour en arrière',
);

class _Home3PageState extends State<Home3Page> {
  @override
  Widget build(BuildContext context) {
    const white = Color(0xffffffff);
    const red = Color(0xffdb3022);
    return Scaffold(
      body: Column(
        children: [
          Container(
              height: 366,
              color: Colors.blue,
              child: Stack(children: [
                newCollection,
                const Positioned(
                    bottom: 25,
                    right: 15,
                    child: Text(
                      "New Collection",
                      style: TextStyle(
                          fontSize: 34,
                          fontFamily: 'metropolisBold',
                          color: white,
                          fontWeight: FontWeight.w900),
                    ))
              ])),
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.green,
            ),
            clipBehavior: Clip.hardEdge,
            height: 422,
            child: Row(
              children: [
                Column(
                  children: [
                    Expanded(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        padding: const EdgeInsets.only(left: 35),
                        color: white,
                        child: const Center(
                          child: Text(
                            textAlign: TextAlign.start,
                            'Summer Sale',
                            style: TextStyle(
                                fontSize: 34,
                                fontFamily: 'metropolisBold',
                                color: red,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          color: Colors.purple,
                          child: Stack(fit: StackFit.expand, children: [
                            black,
                            const Positioned(
                                bottom: 20,
                                left: 15,
                                child: Text(
                                  "Black",
                                  style: TextStyle(
                                      fontSize: 34,
                                      fontFamily: 'metropolisBold',
                                      color: white,
                                      fontWeight: FontWeight.w900),
                                ))
                          ])),
                    ),
                  ],
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Stack(fit: StackFit.expand, children: [
                        ColorFiltered(
                            colorFilter: ColorFilter.mode(
                                Colors.grey.shade300, BlendMode.darken),
                            child: mensHoodies),
                        const Positioned(
                            top: 165,
                            left: 40,
                            child: SizedBox(
                              width: 200,
                              child: Text(
                                "Men's hoodies",
                                style: TextStyle(
                                    fontSize: 34,
                                    fontFamily: 'metropolisBold',
                                    color: white,
                                    fontWeight: FontWeight.w900),
                                maxLines: 2,
                                softWrap: true,
                                textAlign: TextAlign.start,
                              ),
                            ))
                      ])),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: EcomNavigationBar.NavigationBar(),
    );
  }
}
