import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

import '../../../components/text_widget.dart';
import '../../../constants/constants.dart';
import 'mens_tab.dart';


class TabBarTabs extends StatefulWidget {
  const TabBarTabs({super.key, this.category});
  final category;

  @override
  State<TabBarTabs> createState() => _TabBarTabsState();
}

class _TabBarTabsState extends State<TabBarTabs>
    with SingleTickerProviderStateMixin {
  //  List<Map<String, dynamic>> subCategoryDetails = [];
  late TabController tabController;
  var subCategoryDetails;
  var resNOK;

  // fethSubCategoryDetails() async {
  //   var res = await UserAPI()
  //       .SubCategories(context, widget.category['id'].toString(), '0');
  //   if (res != null && res['status'] == 'OK') {
  //     setState(() {
  //       subCategoryDetails = res['details'];
  //     });
  //   } else {
  //     setState(() {
  //       resNOK = res['status'];
  //     });
  //   }
  // }

  // @override
  // void initState() {
  //   fethSubCategoryDetails();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          body: CustomScrollView(
            physics: NeverScrollableScrollPhysics(),
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 5,
                ),
              ),
              SliverToBoxAdapter(
                child: TabBar(
                  isScrollable: true,
                  labelPadding: EdgeInsets.symmetric(horizontal: 8),
                  indicatorColor: Colors.white,
                  indicator: BoxDecoration(
                    color: tPrimaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelColor: const Color.fromARGB(255, 255, 255, 255),
                  unselectedLabelColor: tPrimaryColor,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [
                    // subCategoryDetails.map((detail) => TabContainer(text: detail['name'])).toList(),
                    TabContainer(text: 'Mens'),
                    TabContainer(text: "Women"),
                    TabContainer(text: "Kids"),
                    
                  ],
                ),
              ),
              SliverFillRemaining(
                child: TabBarView(
                  children: [
                    Center(child: MensTabBody()),
                    Center(child: Text("data")),
                    Center(child: Text("data")),
                   
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class TabContainer extends StatelessWidget {
  const TabContainer({
    super.key,
    this.text,
  });
  final text;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 11.h,
      height: 5.h,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: tPrimaryColor),
      ),
      child: Tab(
        child: TextWidget(
          text: text,
          fontSize: 11.sp,
        ),
      ),
    );
  }
}
