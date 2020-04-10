import 'package:flutter/material.dart';
import 'package:shoes_store/widgets/menu.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Color(0xfff0f0f0),
                  borderRadius: BorderRadius.circular(30.0)),
              padding: EdgeInsets.only(top: 60.0, left: 20.0, right: 20.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image(
                        image: AssetImage('assets/images/logo.png'),
                        height: 40.0,
                        width: 40.0,
                      ),
                      Text(
                        "Store",
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.w600),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.menu,
                          color: Colors.black,
                          size: 30.0,
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    width: 300.0,
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Row(
                      children: <Widget>[
                        Flexible(
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search",
                                hintStyle: TextStyle(color: Colors.black26),
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 1.0)),
                          ),
                        ),
                        IconButton(
                          color: Color(0xfffff3f3),
                          highlightColor: Color(0xfffff3f3),
                          hoverColor: Color(0xfffff3f3),
                          focusColor: Color(0xfffff3f3),
                          icon: Icon(
                            Icons.search,
                            color: Color(0xffff0a13),
                            size: 30.0,
                          ),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  )
                ],
              ),
            ),
            Menu(items: ["New Reases", "Woman", "Men", "Kids"]),
          ],
        ),
      ),
    );
  }
}
