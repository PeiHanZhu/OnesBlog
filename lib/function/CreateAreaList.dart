import 'package:flutter/material.dart';
import 'package:ones_blog/Constant.dart';

TextButton CreateAreaList(String title, String address, String route) {
  return TextButton(
    onPressed: () {},
    child: Container(
      margin: EdgeInsets.only(top: 10.0),
      decoration: BoxDecoration(
        color: Color.fromRGBO(198, 201, 203, 1),
        borderRadius: new BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      width: 220,
      height: 260,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image(
              image: AssetImage(route),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              SizedBox(
                width: 10.0,
              ),
              Text(
                title,
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
                width: 10.0,
              ),
              Text(
                address,
                style: contextStyle,
              ),
              Spacer(),
              Icon(
                Icons.star,
                color: Color.fromRGBO(241, 208, 10, 1),
              ),
              Text(
                '4.5',
                style: contextStyle,
              ),
              SizedBox(
                width: 5.0,
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
