import 'package:book/provider.dart';
import 'package:flutter/material.dart';
import 'package:quran/quran.dart' as quran;
import 'package:provider/provider.dart';

class SinglePage extends StatefulWidget {
  final int indexall;
   SinglePage({Key? key, required this.indexall}) : super(key: key);

  @override
  State<SinglePage> createState() => _SinglePageState();
}

class _SinglePageState extends State<SinglePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text('${quran.getSurahName(widget.indexall+1)}'),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/1.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: ListView.builder(
          itemCount: quran.getVerseCount(widget.indexall+1),
          itemBuilder: (context, i) {
            return ListTile(
              title: Text(
                quran.getVerse(widget.indexall+1, i+1 , verseEndSymbol: true),
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
