import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ones_blog/Community.dart';
import 'package:ones_blog/Leaderboard.dart';
import 'package:ones_blog/LoginAccount.dart';
import 'package:ones_blog/SearchLocations.dart';
import 'AboutUs.dart';
import 'CreateMenu.dart';
import 'HomePage.dart';
import 'function/BuildMenuButton.dart';
import 'function/BuildButton.dart';

class AddArticle extends StatefulWidget {
  const AddArticle({Key? key}) : super(key: key);

  @override
  _AddArticleState createState() => _AddArticleState();
}

class _AddArticleState extends State<AddArticle> {
  String dropdownValue = '餐廳專區';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: CreateMenu(context),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxScrolled) => [
          SliverAppBar(
            pinned: true,
            backgroundColor: Color.fromRGBO(222, 215, 209, 1),
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                    maintainState: false,
                  ),
                );
              },
              icon: Image.asset('images/icon/icon.png'),
            ),
            toolbarHeight: 70,
            leadingWidth: 100,
            actions: [
              Builder(
                builder: (context) => IconButton(
                  icon: Image.asset('images/element/menu.png'),
                  iconSize: 70,
                  onPressed: () => Scaffold.of(context).openEndDrawer(),
                ),
              ),
            ],
          ),
        ],
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Color.fromRGBO(222, 215, 209, 1),
                height: MediaQuery.of(context).size.height + 200,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 300,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: new BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        icon: const Icon(FontAwesomeIcons.caretDown),
                        style: const TextStyle(color: Colors.black),
                        underline: Container(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                        items: <String>['餐廳專區', '景點專區', '旅宿專區']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(fontSize: 18),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    SizedBox(height: 50.0),
                    Container(
                      width: 300,
                      height: 650,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: new BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20.0, bottom: 10.0),
                            width: 300,
                            height: 40,
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: '標題',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 2.0,
                            width: 280,
                            color: Color.fromRGBO(222, 215, 209, 1),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20.0, bottom: 10.0),
                            width: 300,
                            height: 40,
                            child: TextButton(
                              child: Row(
                                children: [
                                  Icon(
                                    FontAwesomeIcons.mapMarkerAlt,
                                    color: Colors.redAccent,
                                  ),
                                  Spacer(),
                                ],
                              ),
                              onPressed: (){
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SearchLocations(),
                                    maintainState: false,
                                  ),
                                );
                              },
                            )
                          ),
                          Container(
                            height: 2.0,
                            width: 280,
                            color: Color.fromRGBO(222, 215, 209, 1),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20.0, bottom: 10.0),
                            width: 300,
                            height: 40,
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: '內文',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: 280,
                            height: 100,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromRGBO(185, 153, 98, 1.0),
                                    width: 2.0)),
                            child: TextButton(
                              onPressed: () {},
                              child: Icon(
                                FontAwesomeIcons.photoVideo,
                                color: Color.fromRGBO(198, 201, 203, 1.0),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildButtion('取消', 80, 52, context, HomePage()),
                        buildButtion('發佈', 80, 52, context, Community()),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}