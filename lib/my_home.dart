import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio_app/project_home.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   Timer(const Duration(seconds: 3),
  //           () =>
  //           Navigator.push(context, MaterialPageRoute(
  //               builder: (context) => ProjectHome()))
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
          // Enable snapping. This is true by default.
          snap: true,
          // Set custom snapping points.
          snappings: [0.38, 0.7, 1.0],
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        body: Container(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 35),
                child: ShaderMask(
                  shaderCallback: (rect){
                    return LinearGradient(
                        begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black, Colors.transparent]).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                  },
                  blendMode: BlendMode.dstIn,
                  child: Image.asset('assets/profile.png', height: 400, fit: BoxFit.contain,),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.49),
                child: Column(
                  children: [
                    Text('Anosh Raza', style: TextStyle(
                        color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      fontFamily: "Soho"
                    ),),
                    Text('Software Engineer', style: TextStyle(
                        color: Colors.white,
                      fontSize: 20,
                    ),),
                  ],
                ),
              )
            ],
          ),
        ),
        builder: (context, state) {
          return Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 30),
            height: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Project(num: 78, val: 'Project',),
                    Project(num: 65, val: 'Clients',),
                    Project(num: 42, val: 'Countries',),
                  ],
                ),
                SizedBox(height: 10,),
                Text("Specialized In", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, ),),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CardContainer(iconsdt: Icons.android, cardName: 'Android',),
                          CardContainer(iconsdt: Icons.android, cardName: 'Android',),
                          CardContainer(iconsdt: Icons.android, cardName: 'Android',),
                        ],
                      ),
                      Row(
                        children: [
                          CardContainer(iconsdt: Icons.android, cardName: 'Android',),
                          CardContainer(iconsdt: Icons.android, cardName: 'Android',),
                          CardContainer(iconsdt: Icons.android, cardName: 'Android',),
                        ],
                      ),
                      Row(
                        children: [
                          CardContainer(iconsdt: Icons.android, cardName: 'Android',),
                          CardContainer(iconsdt: Icons.android, cardName: 'Android',),
                          CardContainer(iconsdt: Icons.android, cardName: 'Android',),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

class Project extends StatelessWidget {
  final num;
  final val;
  const Project({Key? key, this.num, this.val}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(num.toString(), style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800, ),),
        SizedBox(width: 5,),
        Container(
          padding: EdgeInsets.only(top: 10),
          child: Text(val),
        )
      ],
    );
  }
}

class CardContainer extends StatelessWidget {
  final iconsdt;
  final cardName;
  const CardContainer({Key? key, this.iconsdt, this.cardName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95,
      height: 95,
      child: Card(
        color: Colors.black,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
        ),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(iconsdt, color: Colors.white, size: 32,),
              Text(cardName, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),)],
          ),
        ),
      ),
    );
  }
}


