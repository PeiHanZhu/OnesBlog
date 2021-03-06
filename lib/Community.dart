import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ones_blog/CreateMenu.dart';
import 'AddArticle.dart';
import 'HomePage.dart';
import 'function/CreateArticle.dart';

class Community extends StatefulWidget {
  const Community({Key? key}) : super(key: key);

  @override
  _CommunityState createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        endDrawer: CreateMenu(context),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxScrolled) => [
            SliverAppBar(
              pinned: true,
              backgroundColor: Color.fromRGBO(222, 215, 209, 1),
              elevation: 0,
              leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.black,
                  size: 40,
                ),
              ),
              toolbarHeight: 175,
              actions: [
                Builder(
                  builder: (context) => IconButton(
                    icon: Image.asset('images/element/menu.png'),
                    iconSize: 70,
                    onPressed: () => Scaffold.of(context).openEndDrawer(),
                  ),
                ),
              ],
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(0.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          child: Image.asset(
                            'images/text/communityWord.png',
                            height: 55,
                          ),
                        ),
                      ],
                    ),
                    TabBar(
                      labelColor: Colors.black,
                      indicatorColor: Colors.blueGrey,
                      tabs: <Widget>[
                        Tab(
                          child: Text(
                            '??????',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        Tab(
                          child: Text(
                            '??????',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        Tab(
                          child: Text(
                            '??????',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
          body: TabBarView(
            children: <Widget>[
              Center(
                child: SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.of(context).size.height + 350,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromRGBO(222, 215, 209, 1), width: 5),
                      color: Color.fromRGBO(222, 215, 209, 1),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        CreateArticle(
                            '??????', '??????????????????????????????...', 'images/element/test.jpeg', context),
                        CreateArticle(
                            '??????', '?????????????????????', 'images/element/test.jpeg', context),
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.of(context).size.height + 350,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromRGBO(222, 215, 209, 1), width: 5),
                      color: Color.fromRGBO(222, 215, 209, 1),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        CreateArticle(
                            '??????', '??????????????????????????????...', 'images/element/test.jpeg', context),
                        CreateArticle(
                            '??????', '???????????????????????????', 'images/element/test.jpeg', context),
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.of(context).size.height + 350,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromRGBO(222, 215, 209, 1), width: 5),
                      color: Color.fromRGBO(222, 215, 209, 1),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        CreateArticle(
                            '??????', '??????????????????????????????', 'images/element/test.jpeg', context),
                        CreateArticle(
                            '??????', '??????????????????+????????????', 'images/element/test.jpeg', context),
                        CreateArticle(
                            '??????', '????????????????????????????????????', 'images/element/test.jpeg', context),
                        CreateArticle(
                            '??????', '??????????????????????????????...', 'images/element/test.jpeg', context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 4,
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => AddArticle(),
                maintainState: false,
              ),
            );
          },
          backgroundColor: Colors.white,
          child: const Icon(
            FontAwesomeIcons.plus,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
