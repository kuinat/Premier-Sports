import 'package:flutter/material.dart';
import 'package:premier_sports/widgets/match_card.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF242424),
      body: RefreshIndicator(
          onRefresh: () async {
            // await controller.refreshDashboard(showMessage: true);
            // controller.onInit();
          },
          child: Container(
            decoration: BoxDecoration(color: Color(0xF5F5F5F5),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  topLeft: Radius.circular(20.0)),

            ),
            child: CustomScrollView(
              primary: true,
              shrinkWrap: false,
              slivers: <Widget>[
                SliverAppBar(
                  toolbarHeight: 100,
                  //expandedHeight: 200,
                  centerTitle: true,
                  actions:  [
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          //borderRadius: BorderRadius.circular(100),
                        shape: BoxShape.circle,
                        boxShadow: List.empty(growable: true),
                        border: Border.all(color: Colors.grey, width: 0.1)
                      ),
                      //padding: EdgeInsets.all(2),
                      child: IconButton(onPressed: (){

                      }, icon: Icon(Icons.search, color: Colors.black,)
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(100),
                          shape: BoxShape.circle,
                          boxShadow: List.empty(growable: true),
                          border: Border.all(color: Colors.grey, width: 0.1)
                      ),
                      //padding: EdgeInsets.all(2),
                      child: IconButton(onPressed: (){

                      }, icon: Icon(Icons.calendar_month, color: Colors.black,)
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(100),
                          shape: BoxShape.circle,
                          boxShadow: List.empty(growable: true),
                          border: Border.all(color: Colors.grey, width: 0.1)
                      ),
                      //padding: EdgeInsets.all(2),
                      child: IconButton(onPressed: (){

                      }, icon: Icon(Icons.filter_list, color: Colors.black,)
                      ),
                    )
                    
                  ],
                  backgroundColor: Colors.white,
                  title: GestureDetector(
                    onTap: (){
                      Scaffold.of(context).openDrawer();
                    },
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Premier Sports', style: TextStyle(color: Colors.black),
                        //style: Get.textTheme.headline6!.merge(TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                  flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.parallax,
                    background: Stack(
                      alignment: AlignmentDirectional.bottomCenter,
                      children: <Widget>[
                      ],
                    ),
                  ),
                ),

                SliverToBoxAdapter(
                  child:  Column(
                    children: [
                      Container(
                        height: 40,
                        margin: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                        child: Row(children: [
                          Text('Categories'),
                          Spacer(),
                          Container(
                              height: 20,
                              width: 40,
                              color: Colors.black,
                              child: Text('LIVE', style: TextStyle(color: Colors.white),)
                          ),

                        ],),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assetName'))),
                        child: Row(

                          children: [
                            Text('Premier League'),
                            Spacer(),
                            Icon(Icons.arrow_drop_down_sharp)
                          ],
                        ),
                      )
                    ],
                  ),),


                SliverList(
                    delegate: SliverChildBuilderDelegate((context, index) {
                      return GestureDetector(
                        onTap: (){

                        },
                        child:MatchCardWidget(),
                      );

                    },
                        childCount: 20
                    )),

              ],
            ),
          )
      ),
    );
  }
}
