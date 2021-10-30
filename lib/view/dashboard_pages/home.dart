import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../const.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSwitched = true;
  var textValue = 'Switch is OFF';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      // appBar: AppBar(
      //   backgroundColor: white,
      //   iconTheme: IconThemeData(color: black),
      //   elevation: 1,
      //   centerTitle: true,
      //   leading: Transform.scale(
      //       scale: 0.6,
      //       child: Switch(
      //         onChanged: toggleSwitch,
      //         value: isSwitched,
      //         activeColor: Colors.green,
      //         activeTrackColor: Colors.grey,
      //         inactiveThumbColor: red,
      //         inactiveTrackColor: Colors.grey,
      //       )),
      //   title: Image.network(
      //     logo,
      //     height: 40,
      //     width: 150,
      //   ),
      //   actions: [
      //     IconButton(
      //       padding: EdgeInsets.zero,
      //       iconSize: 17,
      //       splashRadius: 20.r,
      //       onPressed: () {
      //         Get.to(() => const Search());
      //       },
      //       icon: const Icon(Icons.search),
      //     ),
      //     IconButton(
      //       padding: EdgeInsets.zero,
      //       splashRadius: 20.r,
      //       iconSize: 17,
      //       onPressed: () {},
      //       icon: const Icon(Icons.add),
      //     ),
      //     IconButton(
      //       padding: EdgeInsets.zero,
      //       splashRadius: 20.r,
      //       iconSize: 17,
      //       onPressed: () {
      //         Get.to(() => const Activities());
      //       },
      //       icon: const Icon(Icons.notifications),
      //     ),
      //   ],
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(10.w, 0, 10.w, 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15.h,
              ),
              // ========================== filters
              SizedBox(
                height: 70,
                child: ListView.separated(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  primary: false,
                  shrinkWrap: true,
                  separatorBuilder: (__, _) => SizedBox(
                    width: 5.h,
                  ),
                  itemBuilder: (_, int index) {
                    return InkWell(
                      onTap: () {},
                      child: Card(
                        elevation: 5,
                        child: Row(
                          children: [
                            const Icon(Icons.stop),
                            customText('text', black, 16.sp,
                                fontWeight: FontWeight.w300),
                            SizedBox(
                              width: 5.w,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              //====================== active users
              customText(
                'Active Users',
                black,
                16.sp,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: 5.h,
              ),
              SizedBox(
                  width: 1.sw,
                  child: GridView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: 4,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 4.0,
                            mainAxisSpacing: 4.0),
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ33gRizTuOGEl_mnwtmcpvhqCEi9vUznCU0A&usqp=CAU',
                                fit: BoxFit.fitHeight,
                                height: 100,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  customText(
                                    'text',
                                    black,
                                    14.sp,
                                    fontWeight: FontWeight.w300,
                                  ),
                                  customText(
                                    'text2e',
                                    black,
                                    14.sp,
                                    fontWeight: FontWeight.w300,
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  customText(
                                    'text',
                                    black,
                                    14.sp,
                                    fontWeight: FontWeight.w300,
                                  ),
                                  customText(
                                    'text2',
                                    black,
                                    14.sp,
                                    fontWeight: FontWeight.w300,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  )),
              SizedBox(
                height: 15.h,
              ),
              //====================== inactive users
              customText(
                'Inactive Users',
                black,
                16.sp,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: 5.h,
              ),
              SizedBox(
                  width: 1.sw,
                  child: GridView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: 4,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 4.0,
                            mainAxisSpacing: 4.0),
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            elevation: 5,
                            child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUcXH6jANqD10BTrbnL41M1WMt7ax0_YHqVdiHo6vduvjK9RNdDHIzQMyRnmnbQCcZNc0&usqp=CAU',
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              customText(
                                'text',
                                black,
                                14.sp,
                                fontWeight: FontWeight.w300,
                              ),
                              customText(
                                'text2e',
                                black,
                                14.sp,
                                fontWeight: FontWeight.w300,
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              customText(
                                'text',
                                black,
                                14.sp,
                                fontWeight: FontWeight.w300,
                              ),
                              customText(
                                'text2',
                                black,
                                14.sp,
                                fontWeight: FontWeight.w300,
                              )
                            ],
                          ),
                        ],
                      );
                    },
                  )),
              SizedBox(
                height: 15.h,
              ),
              //====================== coming users
              customText(
                'Coming Users',
                black,
                16.sp,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: 5.h,
              ),
              SizedBox(
                  width: 1.sw,
                  child: GridView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: 4,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 4.0,
                            mainAxisSpacing: 4.0),
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            elevation: 5,
                            child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUcXH6jANqD10BTrbnL41M1WMt7ax0_YHqVdiHo6vduvjK9RNdDHIzQMyRnmnbQCcZNc0&usqp=CAU',
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              customText(
                                'text',
                                black,
                                14.sp,
                                fontWeight: FontWeight.w300,
                              ),
                              customText(
                                'text2e',
                                black,
                                14.sp,
                                fontWeight: FontWeight.w300,
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              customText(
                                'text',
                                black,
                                14.sp,
                                fontWeight: FontWeight.w300,
                              ),
                              customText(
                                'text2',
                                black,
                                14.sp,
                                fontWeight: FontWeight.w300,
                              )
                            ],
                          ),
                        ],
                      );
                    },
                  )),
              SizedBox(
                height: 15.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }
}
