import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Favorite Items',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(left: 20, top: 20, right: 20),
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 10,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Icon(
                            Icons.favorite,
                            size: 20,
                            color: Colors.red,
                          ),
                          Image(
                            image: AssetImage('assets/boot2.png'),
                            width: 110,
                            height: 110,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Nike Air Max',
                            style: TextStyle(
                              //color: Colors.grey[600],
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '\$35',
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ],
                              ),
                              SizedBox(width: 50),
                              Row(
                                children: [
                                  Text(
                                    '4.5',
                                    style: TextStyle(color: Colors.orange),
                                  ),
                                  Icon(Icons.star,
                                      size: 15, color: Colors.orange)
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 10,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Icon(
                            Icons.favorite,
                            size: 20,
                            color: Colors.red,
                          ),
                          Image(
                            image: AssetImage('assets/boot2.png'),
                            width: 110,
                            height: 110,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Nike Air Max',
                            style: TextStyle(
                              //color: Colors.grey[600],
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '\$35',
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ],
                              ),
                              SizedBox(width: 50),
                              Row(
                                children: [
                                  Text(
                                    '4.5',
                                    style: TextStyle(color: Colors.orange),
                                  ),
                                  Icon(Icons.star,
                                      size: 15, color: Colors.orange)
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Widget _data(IconData icon, String title, Image imag) {
//   return Container(
//     width: 230,
//     height: 280,
//     decoration: BoxDecoration(
//       color: Colors.white,
//       borderRadius: BorderRadius.all(Radius.circular(10.0)),
//       boxShadow: [
//         BoxShadow(
//           color: Colors.black.withOpacity(0.2),
//           blurRadius: 10,
//           offset: Offset(0, 5),
//         ),
//       ],
//     ),
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         SizedBox(height: 10),
//         Icon(
//           icon,
//           size: 15,
//           color: Colors.red,
//         ),
//         Image(image: imag),
//         SizedBox(height: 10),
//         Text(
//           title,
//           style: TextStyle(
//             //color: Colors.grey[600],
//             fontSize: 13,
//           ),
//         ),
//       ],
//     ),
//   );
// }
