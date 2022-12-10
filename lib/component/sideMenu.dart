import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/Pages/home.dart';
import 'package:responsive_dashboard/config/size_config.dart';
import 'package:responsive_dashboard/dashboard.dart';
import 'package:responsive_dashboard/style/colors.dart';

import '../Pages/client.dart';
import '../Pages/employee_request.dart';
import '../Pages/orders.dart';
import '../Pages/services.dart';
import '../Pages/setting.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        width: double.infinity,
        height: SizeConfig.screenHeight,
        decoration: BoxDecoration(color: AppColors.secondaryBg),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                alignment: Alignment.topCenter,
                width: double.infinity,
                padding: EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: 35,
                  height: 20,
                  child: SvgPicture.asset('assets/mac-action.svg'),
                ),
              ),
              IconButton(
                  iconSize: 20,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  icon: Icon(Icons.home_filled),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Dashboard()),
                    );
                  }),
              IconButton(
                  iconSize: 20,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  icon: Icon(
                    Icons.person,
                    color: AppColors.iconGray,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => employeeRequest()),
                    );
                  }),
              IconButton(
                  iconSize: 20,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  icon: Icon(
                    Icons.support_agent,
                    color: AppColors.iconGray,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => serviceList()),
                    );
                  }),
              IconButton(
                  iconSize: 20,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  icon: Icon(
                    Icons.person_pin_outlined,
                    color: AppColors.iconGray,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => clientPage()),
                    );
                  }),
              IconButton(
                  iconSize: 20,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  icon: Icon(
                    Icons.workspaces,
                    color: AppColors.iconGray,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => myOrders()),
                    );
                  }),
              IconButton(
                  iconSize: 20,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  icon:Icon(Icons.settings,
                    color: AppColors.iconGray
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => settingPage()),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
