import 'package:book/provider.dart';
import 'package:book/single_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran/quran.dart' as quran;


class Mainpage extends StatefulWidget {
  const Mainpage({Key? key}) : super(key: key);

  @override
  State<Mainpage> createState() => _MainpageState();
}



class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            title: Container(
              padding: EdgeInsets.only(top: 20),
              child: Center(
                child: Text(
                  "Quran",
                  style: TextStyle(
                      color: Colors.orangeAccent,
                      fontSize: 32,
                      fontFamily: "Smile"),
                ),
              ),
            ),
            backgroundColor: Colors.black38,
          ),
        ),
        body: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 114,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SinglePage(indexall: index,),
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(25),
                  margin:
                      EdgeInsets.only(bottom: 10, top: 10, left: 15, right: 15),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.black,
                        Colors.grey,
                      ],
                    ),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                      child: Text(
                    '${index + 1} ' + quran.getSurahName(index + 1),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      wordSpacing: 2,
                      fontFamily: "Hello",
                    ),
                  )),
                ),
              );
            }),
      ),
    );
  }
}
