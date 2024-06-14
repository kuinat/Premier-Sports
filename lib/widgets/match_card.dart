import 'package:flutter/material.dart';


class MatchCardWidget extends StatelessWidget {
  MatchCardWidget({Key? key,

    this.firstTeam,
    this.secondTeam,
    this.scoreFirstTeam,
    this.scoreSecondTeam

  }) : super(key: key);

  final String? secondTeam;
  final String? firstTeam;
  final String? scoreSecondTeam;
  final String? scoreFirstTeam;






  @override
  Widget build(BuildContext context) {


    return Card(
        color: Colors.white,
        margin:EdgeInsets.only(left: 10, right: 10, top: 10) ,
        shape:  RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          side:  BorderSide(
              color: Colors.grey, width: 0, style: BorderStyle.none
          ) ,
          //borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          height: 60,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Logo'),
                    Text('TeamName')
                  ],
                ),
                const SizedBox(width: 20,),
                Text('1', style: TextStyle(fontSize: 25),),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star, color: Colors.pink,),
                    Text('Time')
                  ],
                ),
                SizedBox(width: 10),
                Text('2', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Logo'),
                    Text('TeamName')
                  ],
                ),

              ]
          ),
        )
    );
  }

}