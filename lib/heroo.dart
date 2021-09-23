import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Herooo extends StatefulWidget {
  const Herooo({Key  key}) : super(key: key);

  @override
  _HeroooState createState() => _HeroooState();
}

class _HeroooState extends State<Herooo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Hero', style: GoogleFonts.akronim(fontSize: 28),),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Hero(
                tag: 'Flutter',
                child: GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 13.0,top: 12),
                    child: CircleAvatar(radius: 30,backgroundColor: Colors.pinkAccent,child: FlutterLogo(size: 30,),),
                  ),
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>page()));},
                ),
              ),
              Hero(tag: 'tag', child: GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.only(top: 12.0,left: 13),
                  child: CircleAvatar(radius: 30,child: FlutterLogo(size: 30,),),
                ),
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>newhero()));},
              ))
            ],
          )
      ),
    );
  }
}

class page extends StatefulWidget {
  @override
  _pageState createState() => _pageState();
}

class _pageState extends State<page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Next Screen', style: GoogleFonts.damion(fontSize: 20), ),
        ),
        body: Center(
            child: Hero(
              tag: 'Flutter', child: FlutterLogo(size: 150,),
            )
        ),
      ),
    );
  }
}

class newhero extends StatefulWidget {
  const newhero({Key key}) : super(key: key);

  @override
  _newheroState createState() => _newheroState();
}

class _newheroState extends State<newhero> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('New Screen', style: GoogleFonts.aleo(fontSize: 22),),
        ),
        body: Center(
          child:     Hero(tag: 'tag', child: FlutterLogo(size: 200,)),
        ),
      ),
    );
  }
}