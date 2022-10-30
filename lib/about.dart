import 'package:flutter/material.dart';
import 'package:flutter_portfolio_app/my_home.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutPg extends StatefulWidget {
  const AboutPg({Key? key}) : super(key: key);

  @override
  State<AboutPg> createState() => _AboutPgState();
}

class _AboutPgState extends State<AboutPg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60),
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
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.45),
              child: Column(
                children: [
                  Text('Hello I am', style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),),
                  Text('Anosh Raza', style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 5,
                    fontSize: 50,
                    fontWeight: FontWeight.bold
                  ),),
                  Text('Software Engineer', style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    letterSpacing: 2,
                    fontStyle: FontStyle.italic
                  ),),
                  SizedBox(height: 30,),
                  SizedBox(
                    width: 120,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder:(context) => MyHome()));
                      },
                      child: Text('Hire Me'),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        primary: Colors.black
                      ),
                    ),
                  ),
                  SizedBox(height: 50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){},
                          icon: Icon(
                            FontAwesomeIcons.instagram,
                            color: Colors.white,
                          )),
                      IconButton(onPressed: (){},
                          icon: Icon(
                            FontAwesomeIcons.facebook,
                            color: Colors.white,
                          )),                      IconButton(onPressed: (){},
                          icon: Icon(
                            FontAwesomeIcons.linkedin,
                            color: Colors.white,
                          )),                      IconButton(onPressed: (){},
                          icon: Icon(
                            FontAwesomeIcons.twitter,
                            color: Colors.white,
                          )),IconButton(onPressed: (){},
                          icon: Icon(
                            FontAwesomeIcons.youtube,
                            color: Colors.white,
                          )),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
