import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ones_blog/ArticleComments.dart';
import 'Constant.dart';
import 'CreateMenu.dart';

class ArticleContent extends StatefulWidget {
  const ArticleContent({Key? key}) : super(key: key);

  @override
  _ArticleContentState createState() => _ArticleContentState();
}

class _ArticleContentState extends State<ArticleContent> {
  bool bookMarkIsPressed = false;

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
                Navigator.pop(
                  context,
                );
              },
              icon: Icon(
                Icons.arrow_back_rounded,
                color: Colors.black,
                size: 40,
              ),
            ),
            toolbarHeight: 70,
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
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.white,
                          child: ClipOval(
                            child: Image.asset('images/element/member.png'),
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              'hi22556',
                              style: contextStyle,
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              '????????????',
                              style: TextStyle(
                                  fontSize: 14, color: Colors.grey[600]),
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              bookMarkIsPressed = !bookMarkIsPressed;
                            });
                          },
                          icon: Icon(
                            bookMarkIsPressed
                                ? Icons.bookmark
                                : Icons.bookmark_border,
                            size: 40,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 30.0,
                        ),
                        Text(
                          '??????????????????????????????????????????',
                          style: titleStyle,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 30.0,
                        ),
                        Icon(
                          FontAwesomeIcons.mapMarkerAlt,
                          color: Colors.redAccent,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          '????????????',
                          style: contextStyle,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                        '??????????????????????????????????????????\n- ???????????????\n- ???????????????\n- ???????????????\n- ???????????????\n????????????????????????????????????\n??????????????????????????????\n???????????????\n????????????????????????????????????????????????\n??????????????????????????????\n????????????????????????\n??????????????????...\n???????????????????????????\n?????????????????????...\n????????????????????????', style: contextStyle),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 30.0,
                        ),
                        Text(
                          '2022???2???20???',
                          style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      height: 2.0,
                      width: MediaQuery.of(context).size.width - 20,
                      color: Colors.white,
                    ),
                    Row(
                      children: [
                        Spacer(),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ArticleComments(),
                                maintainState: false,
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              Icon(FontAwesomeIcons.comment,
                                  color: Colors.black),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                '33?????????',
                                style: contextStyle,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
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
