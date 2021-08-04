import 'package:clubhouse_flutter_ui/Style.dart';
import 'package:clubhouse_flutter_ui/widget/ListItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style().colorBg,
      appBar: AppBar(
        backgroundColor: Style().colorBg,
        elevation: 0,
        actions: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            width: 360.w,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50.w,
                  child: Icon(
                    Icons.search,
                    color: Style().colorText,
                    size: 30.w,
                  ),
                ),
                Container(
                  width: 150.w,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.add_alert,
                        color: Style().colorText,
                        size: 28.w,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Icon(
                        Icons.calendar_today,
                        color: Style().colorText,
                        size: 28.w,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Icon(
                        Icons.email_outlined,
                        color: Style().colorText,
                        size: 30.w,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                        width: 30.w,
                        height: 30.w,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/mehrdadshirvan-1.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(150.r),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            width: 360.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ListItem(),
                ListItem(),
                ListItem(),
                ListItem(),
                ListItem(),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        width: 150.w,
        height: 50.h,
        margin: EdgeInsets.only(bottom: 15.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.r),
        ),
        child: TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Style().colorGreen),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0.r),
                      side: BorderSide(color: Style().colorGreen)))),
          child: Text(
            '+ Start a room',
            style: TextStyle(
              fontSize: 16.w
            ),
          ),
          onPressed: (){},
        ),
      ),
    );
  }
}
