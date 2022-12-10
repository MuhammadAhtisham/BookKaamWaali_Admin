import 'package:flutter/material.dart';

import '../component/appBarActionItems.dart';
import '../component/sideMenu.dart';
import '../config/responsive.dart';
import '../config/size_config.dart';
import '../data.dart';
import '../style/colors.dart';
import '../style/style.dart';

class myOrders extends StatelessWidget {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      key: _drawerKey,
      drawer: SizedBox(width: 100, child: SideMenu()),
      appBar: !Responsive.isDesktop(context)
          ? AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        leading: IconButton(
            onPressed: () {
              _drawerKey.currentState.openDrawer();
            },
            icon: Icon(Icons.menu, color: AppColors.black)),
        actions: [
          AppBarActionItems(),
        ],
      )
          : PreferredSize(
        preferredSize: Size.zero,
        child: SizedBox(),
      ),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              Expanded(
                flex: 1,
                child: SideMenu(),
              ),
            Expanded(
                flex: 10,
                child: SafeArea(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(mainAxisSize: MainAxisSize.min, children: [
                          SizedBox(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  PrimaryText(
                                      text: 'Total Orders',
                                      size:28,
                                      fontWeight: FontWeight.w800),
                                ]),
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          Expanded(
                            flex: Responsive.isDesktop(context) ? 1 : 3,
                            child: TextField(
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: AppColors.white,
                                  contentPadding:
                                  EdgeInsets.only(left: 40.0, right: 5),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide:
                                    BorderSide(color: AppColors.white),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide:
                                    BorderSide(color: AppColors.white),
                                  ),
                                  prefixIcon: Icon(Icons.search,
                                      color: AppColors.black),
                                  hintText: '  Search',
                                  hintStyle: TextStyle(
                                      color: AppColors.secondary,
                                      fontSize: 14)),
                            ),
                          ),
                        ]),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical * 4,
                        ),
                        SizedBox(
                          width: SizeConfig.screenWidth,
                          child: Wrap(
                            spacing: 20,
                            runSpacing: 20,
                            alignment: WrapAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: Responsive.isDesktop(context)
                                    ? double.infinity
                                    : SizeConfig.screenWidth,
                                child: Table(
                                  defaultVerticalAlignment:
                                  TableCellVerticalAlignment.middle,
                                children: [
                                  TableRow(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(10),
                                    ),
                                    children: [
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        padding: const EdgeInsets.only(
                                            top: 10.0,
                                            bottom: 10.0,
                                            left: 20.0),
                                        child:  PrimaryText(
                                          text: "Profile",
                                          size: 16,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.secondary,
                                        ),
                                      ),
                                      PrimaryText(
                                        text: "Full Name",
                                        size: 16,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.secondary,
                                      ),
                                      PrimaryText(
                                        text: "Email",
                                        size: 16,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.secondary,
                                      ),
                                      PrimaryText(
                                        text: "Phone",
                                        size: 16,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.secondary,
                                      ),
                                      PrimaryText(
                                        text: "Service",
                                        size: 16,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.secondary,
                                      ),
                                      PrimaryText(
                                        text: "Joined On",
                                        size: 16,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.secondary,
                                      ),
                                      PrimaryText(
                                        text: "Action",
                                        size: 16,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.secondary,
                                      ),
                                    ],
                                  ),
                                ],
                                  ),

                                ),

                              SizedBox(
                                width: Responsive.isDesktop(context)
                                    ? double.infinity
                                    : SizeConfig.screenWidth,
                                child: Table(
                                  defaultVerticalAlignment:
                                  TableCellVerticalAlignment.middle,
                                  children: List.generate(
                                    orderList.length,
                                        (index) => TableRow(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(10),
                                      ),
                                      children: [
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          padding: const EdgeInsets.only(
                                              top: 10.0,
                                              bottom: 10.0,
                                              left: 20.0),
                                          child: CircleAvatar(
                                            radius: 17,
                                            backgroundImage: NetworkImage(
                                                orderList[index]
                                                ["avatar"]),
                                          ),
                                        ),
                                        PrimaryText(
                                          text: orderList[index]
                                          ["title"],
                                          size: 16,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.secondary,
                                        ),
                                        PrimaryText(
                                          text: orderList[index]
                                          ["email"],
                                          size: 16,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.secondary,
                                        ),
                                        PrimaryText(
                                          text: orderList[index]
                                          ["phone"],
                                          size: 16,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.secondary,
                                        ),
                                        PrimaryText(
                                          text: orderList[index]
                                          ["service"],
                                          size: 16,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.secondary,
                                        ),
                                        PrimaryText(
                                          text: orderList[index]
                                          ["joinedOn"],
                                          size: 16,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.secondary,
                                        ),
                                      ElevatedButton(
                                          onPressed: (){},
                                          child: Text (orderList[index] ["Action"])
                                         )
                                      ],
                                    ),
                                  ),

                                ),
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),

    );
  }
}

