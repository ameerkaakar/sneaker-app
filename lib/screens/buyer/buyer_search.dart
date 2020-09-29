import 'package:flutter/material.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:kickstarter/screens/buyer/Buyer_searcheditems.dart';

class BuyerSearch extends StatefulWidget {
  @override
  _BuyerSearchState createState() => _BuyerSearchState();
}

class _BuyerSearchState extends State<BuyerSearch> {
  //radio button
  String _verticalGroupValue = "Pending";
  List<String> _status = ["Male", "Female", "Both"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Search Products',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(left: 20, top: 20, right: 20),
        child: ListView(
          children: [
            SizedBox(height: 20),
            _input('Search', Icons.search),
            SizedBox(height: 40),
            Text(
              'Pop Brand',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _brand('assets/adidas.png'),
                _brand('assets/nike.png'),
                _brand('assets/puma.png'),
                _brand('assets/newbalance.jpg'),
                _brand('assets/reebok.png'),
              ],
            ),
            SizedBox(height: 40),
            Text(
              'Color',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _color(Colors.black),
                _color(Colors.blue),
                _color(Colors.grey),
                _color(Colors.red),
                _color(Colors.orange),
                _color(Colors.pink),
              ],
            ),
            SizedBox(height: 40),
            Text(
              'Gender',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RadioGroup<String>.builder(
                  direction: Axis.horizontal,
                  groupValue: _verticalGroupValue,
                  onChanged: (value) => setState(() {
                    _verticalGroupValue = value;
                  }),
                  items: _status,
                  itemBuilder: (item) => RadioButtonBuilder(
                    item,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BuyerSearchedItems(),
                      ),
                    );
                },
                color: Colors.red,
                textColor: Colors.white,
                child: Text(
                  'Search',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _input(String label, IconData icon) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 10,
              offset: Offset(0, 5))
        ]),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: TextFormField(
        decoration: InputDecoration(
            labelStyle: TextStyle(
              color: Colors.grey[400],
            ),
            hintText: label,
            focusColor: Colors.grey[400],
            prefixIcon: Icon(
              icon,
              color: Colors.grey[400],
            ),
            //fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
            ),
            fillColor: Colors.green),
        //keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          fontFamily: "Poppins",
        ),
      ),
    ),
  );
}

Widget _brand(String brandlogo) {
  return InkWell(
    onTap: () {},
    child: Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 10,
                offset: Offset(0, 5))
          ]),
      child: Image(
        image: AssetImage(brandlogo),
        width: 45,
        height: 45,
      ),
    ),
  );
}

Widget _color(Color color) {
  return InkWell(
    onTap: () {},
    child: Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 10,
              offset: Offset(0, 5))
        ],
      ),
    ),
  );
}
