import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants/constants.dart';
import '../screens/components/category.dart';

class BodyScreen extends ConsumerWidget {
  const BodyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: ListView(
        children: [
          // CustomeAppBar(),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi Dua",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Today is a good day\nto teach something new!",
                          style: TextStyle(
                            color: Colors.black54,
                            wordSpacing: 2.5,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              color: kpurple,
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Image.asset(
                            "assets/images/profile.png",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                // //sorting
                // Sorting(),
                // const SizedBox(
                //   height: 20,
                // ),
                //category list

                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Classes",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // InkWell(
                    //   onTap: () {},
                    //   child: const Text(
                    //     "See All",
                    //     style: TextStyle(fontSize: 16, color: kblue),
                    //   ),
                    // ),
                  ],
                ),

                //now we create model of our images and colors which we will use in our app
                const SizedBox(
                  height: 20,
                ),
//we can not use gridview inside column
//use shrinkwrap and physical scroll
                CategoryList(),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
