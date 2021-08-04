import 'package:clubhouse_flutter_ui/Style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListItem extends StatelessWidget {
  const ListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: InkWell(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: Colors.white,
          ),
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          width: 360.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    style: Style().cardTitle,
                    children: [
                      TextSpan(
                        text: 'Developer Group',
                      ),
                      TextSpan(text: ' '),
                      WidgetSpan(
                          child: Icon(
                        Icons.home,
                        color: Style().colorGreen,
                        size: 17.w,
                      ))
                    ],
                  )),
              SizedBox(
                height: 6.h,
              ),
              Text(
                'Mehrdad Shirvan Clubhouse ui Flutter  ',
                style: Style().chatRoomLabel,
              ),
              SizedBox(
                height: 6.h,
              ),
              Row(
                children: [
                  Container(
                    width: 90.w,
                    child:Column(
                      children: [
                        SizedBox(height: 10.h,),
                        Stack(
                          alignment: Alignment.center,
                          overflow: Overflow.visible,
                          fit: StackFit.loose,
                          children: [
                            Container(
                              width: 40.w,
                              height: 40.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/mehrdadshirvan-1.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(15.r),
                              ),
                            ),
                            Positioned(
                              bottom: 25.w,
                              right: 25.w,
                              child: Container(
                                width: 40.w,
                                height: 40.w,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/mehrdadshirvan-2.jpeg'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(15.r),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 200.w,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mehdad Shirvan',
                          textAlign: TextAlign.left,
                          style: Style().roomUsersList,
                        ),
                        Text(
                          'Mehdad ... ',
                          textAlign: TextAlign.left,
                          style: Style().roomUsersList,
                        ),
                        Text(
                          'Developer Team',
                          textAlign: TextAlign.left,
                          style: Style().roomUsersList,
                        ),
                        Text(
                          'darkness :)',
                          textAlign: TextAlign.left,
                          style: Style().roomUsersList,
                        ),
                        RichText(

                          text: TextSpan(
                            style: Style().roomUsersAndMessages,
                            children: [
                              TextSpan(
                                text: '200 ',
                              ),
                              WidgetSpan(child: Icon(Icons.person,color: Colors.grey.shade500,size: 17.w,)),
                              TextSpan(
                                text: ' / ',
                              ),
                              TextSpan(
                                text: '130 ',
                              ),
                              WidgetSpan(child: Icon(Icons.message,color: Colors.grey.shade500,size: 17.w,)),

                            ]
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
