import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Style{

  var colorGreen = Color.fromRGBO(77, 163, 77,1);
  var colorWhite = Color.fromRGBO(255, 255, 255,1);
  var colorRed = Color.fromRGBO(193, 10, 37,1);
  var colorBg = Color.fromRGBO(255, 237, 184, 1);
  var colorText = Color.fromRGBO(75,75,75, 1);

  var cardTitle = TextStyle(
    fontSize: 14.w,
    color: Color.fromRGBO(75,75,75, 1),
  );
  var chatRoomLabel = TextStyle(
    fontSize: 16.w,
    fontWeight: FontWeight.w600,
    color: Color.fromRGBO(75,75,75, 1),
  );

  var roomUsersList = TextStyle(
    fontSize: 14.w,
    height: 1.6,
    color: Color.fromRGBO(75,75,75, 1),
  );
  var roomUsersAndMessages = TextStyle(
    fontSize: 14.w,
    height: 1.6,
    color: Colors.grey.shade500,
  );

}