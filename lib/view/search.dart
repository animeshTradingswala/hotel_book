import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController searchCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        iconTheme: IconThemeData(color: black),
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(10.w, 5.h, 10.w, 0),
          child: Column(
            children: [
              TextFormField(
                controller: searchCtrl,
                validator: (v) {},
                keyboardType: TextInputType.text,
                onChanged: (cc) {},
                decoration: InputDecoration(
                    //     labelText: 'Search Here',
                    hintText: 'Search Here',
                    hintStyle: customizeTextStyle(
                        FontWeight.w300, 15.sp, Colors.blueGrey),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: black, width: 2.0),
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: black, width: 2.0),
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: black, width: 2.0),
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    fillColor: Colors.grey),
              ),
              SizedBox(
                height: 20.h,
              ),
              ListView.separated(
                  primary: false,
                  shrinkWrap: true,
                  itemCount: 5,
                  separatorBuilder: (_, __) => SizedBox(
                        height: 10.h,
                      ),
                  itemBuilder: (_, __) {
                    return Row(
                      children: [
                        Container(
                            height: 50.0,
                            width: 30.0,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                              color: Colors.redAccent,
                            ),
                            child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUcXH6jANqD10BTrbnL41M1WMt7ax0_YHqVdiHo6vduvjK9RNdDHIzQMyRnmnbQCcZNc0&usqp=CAU',
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          width: 20.w,
                        ),
                        customText('text', black, 16.sp),
                      ],
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
