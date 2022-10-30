import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProjectHome extends StatefulWidget {
  const ProjectHome({Key? key}) : super(key: key);

  @override
  State<ProjectHome> createState() => _ProjectHomeState();
}

class _ProjectHomeState extends State<ProjectHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Project Home'),
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CardStruct(
                textOne: 'Flutter',
                projectName: 'Click2Code',
                projectDescription: 'This project is based on MVVM Model',
                starNo: 20,
              ),
              CardStruct(
                textOne: 'Flutter',
                projectName: 'Click2Code',
                projectDescription: 'This project is based on MVVM Model',
                starNo: 20,
              ),
              CardStruct(
                textOne: 'Flutter',
                projectName: 'Click2Code',
                projectDescription: 'This project is based on MVVM Model',
                starNo: 20,
              ),
              CardStruct(
                textOne: 'Flutter',
                projectName: 'Click2Code',
                projectDescription: 'This project is based on MVVM Model',
                starNo: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardStruct extends StatelessWidget {
  final textOne;
  final projectName;
  final projectDescription;
  final starNo;
  const CardStruct({Key? key, this.textOne, this.projectName, this.projectDescription, this.starNo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Card(
        color: Color(0xff252528),
        child: Container(
          margin: EdgeInsets.only(left:20, right: 20, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(textOne, style: TextStyle(color: Colors.white, fontSize: 12, letterSpacing: 8),),
              Text(projectName, style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),),
              Text(projectDescription, style: TextStyle(color: Colors.white, fontSize: 16, fontStyle: FontStyle.italic),),
              SizedBox(height: 20,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.white, size: 18,),
                  Text(starNo.toString(), style: TextStyle(color: Colors.white),),
                  Expanded(child: Container()),
                  IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.github, color: Colors.white70, size: 32,))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

