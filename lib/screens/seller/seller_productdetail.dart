import 'package:flutter/material.dart';

class SellerProductDetails extends StatefulWidget {
  @override
  _SellerProductDetailsState createState() => _SellerProductDetailsState();
}

class _SellerProductDetailsState extends State<SellerProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Product Detail',
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(left: 20, right: 20),
        child: ListView(
          children: [
            Column(
              children: [
                Image(
                  image: AssetImage('assets/boot.png'),
                  width: 200,
                  height: 200,
                ),
                Text(
                  'Nike Air Max',
                  style: TextStyle(fontSize: 28),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Price',
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      '\$25',
                      style: TextStyle(color: Colors.red, fontSize: 15),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Catagory',
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      'shoes',
                      style: TextStyle(color: Colors.red, fontSize: 15),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Color',
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      'Red',
                      style: TextStyle(color: Colors.red, fontSize: 15),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Number',
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      '8',
                      style: TextStyle(color: Colors.red, fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Description',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 7),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc auctor augue in sapien eleifend accumsan. Pellentesque viverra porttitor nisi, non rhoncus felis. Sed in sodales diam, vel sagittis mi. Mauris sagittis dignissim enim lobortis venenatis.',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Reviews',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '(10)',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                          radius: 15,
                          backgroundImage: AssetImage('assets/man.png'),
                          backgroundColor: Colors.white),
                      SizedBox(width: 10),
                      Text(
                        'Junior Magana',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: 10),
                      Text(
                        '4.5',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.orange),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 15,
                      ),
                    ],
                  ),
                  Text('Lorem ipsum is placeholder text commonly')
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Unboxing Videos',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20),
            Image(
              image: AssetImage('assets/boot.jpg'),
            ),
          ],
        ),
      ),
    );
  }
}
