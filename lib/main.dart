import 'package:flutter/material.dart';
import 'package:ones_blog/ArticleContent.dart';
import 'package:ones_blog/BecomeStore.dart';
import 'package:ones_blog/CreateAccount.dart';
import 'package:ones_blog/StoreInformation.dart';
import 'HomePage.dart';
import 'UserInformation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CreateAccount(),
      debugShowCheckedModeBanner: false,
    );
  }
}
