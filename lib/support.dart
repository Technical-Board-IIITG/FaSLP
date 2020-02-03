import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

double leftOffset = 0.0,
    rightOffset = 0.0,
    bottomOffset = 0.0,
    topOffset = 0.0;

Function(num) get w => ScreenUtil().setWidth;
Function(num) get h => ScreenUtil().setHeight;
Function(num) get sp => ScreenUtil().setSp;

class MyStackWidget extends StatelessWidget {
  double start, width, top, height, end, bottom;
  Widget child;
  MyStackWidget(
      {this.start,
        this.width,
        this.top,
        this.height,
        this.end,
        this.bottom,
        this.child});
  @override
  Widget build(BuildContext context) {
    return Positioned.directional(
        textDirection: TextDirection.ltr,
        start: (start != null) ? w(start - leftOffset) : null,
        width: (width != null) ? w(width + 5) : null,
        top: (top != null) ? h(top - topOffset) : null,
        height: (height != null) ? h(height + 10) : null,
        end: (end != null) ? w(end - rightOffset) : null,
        bottom: (bottom != null) ? h(bottom - bottomOffset) : null,
        child: child);
  }
}

enum Screens {
  LOGIN_OR_REGISTER_SCREEN,
  LOGIN_CHOOSE_SCREEN,
  LOGIN_AS_STAFF,
  LOGIN_AS_FACULTY,
  LOGIN_AS_HOD,
  REGISTER_CHOOSE_SCREEN,
  REGISTER_AS_STAFF,
  REGISTER_AS_FACULTY,
  REGISTER_AS_ADMIN,
  STAFF_HOME_PAGE,
  FACULTY_HOME_PAGE,
  ADMIN_HOME_PAGE
}