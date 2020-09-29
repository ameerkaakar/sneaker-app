import 'package:flutter/material.dart';

class UnboxVideos extends StatefulWidget {
  @override
  _UnboxVideosState createState() => _UnboxVideosState();
}

class _UnboxVideosState extends State<UnboxVideos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Unboxing Videos',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only( top: 20, ),
        child: ListView(
          children: [
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
              decoration: BoxDecoration(
                color: Colors.red[600],
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 5,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Image(
                    image: AssetImage('assets/boot.jpg'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Nike Air Max',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Text(
                            '\$35',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(width: 50),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                '4.5',
                                style: TextStyle(color: Colors.yellow),
                              ),
                              Icon(Icons.star, size: 15, color: Colors.yellow)
                            ],
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
