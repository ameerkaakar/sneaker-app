import 'package:flutter/material.dart';
import 'package:kickstarter/screens/buyer/buyer_morescreen.dart';
import 'package:group_radio_button/group_radio_button.dart';

class SellerProfile extends StatefulWidget {
  @override
  _SellerProfileState createState() => _SellerProfileState();
}

class _SellerProfileState extends State<SellerProfile> {
  //pick time
  TimeOfDay _time;
  _picktime() async {
    TimeOfDay time = await showTimePicker(
        context: context,
        initialTime: _time,
        builder: (BuildContext context, Widget child) {
          return Theme(
            data: ThemeData(),
            child: child,
          );
        });
    if (time != null) {
      setState(() {
        _time = time;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _time = TimeOfDay.now();
  }

  // Gender radio button
  String _verticalGroupValue = "Pending";
  List<String> _status = ["Male", "Female", "Both"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red[600],
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        //padding: EdgeInsets.only(left: 30, right: 30),
        child: ListView(
          children: [
            Container(
              color: Colors.red[600],
              child: Column(
                children: [
                  SizedBox(height: 30),
                  CircleAvatar(
                    backgroundColor: Colors.grey[300],
                    backgroundImage: AssetImage('assets/man2.png'),
                    radius: 45,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Junior Magana',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
            //SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  SizedBox(height: 30),
                  _textInput('example@example.com', Icons.email, Icons.edit),
                  SizedBox(height: 10),
                  _textInput('534 - 343 - 4343', Icons.phone, Icons.edit),
                  SizedBox(height: 10),
                  _textInput('Ring Road latif abad pehsawar', Icons.location_on,
                      Icons.edit),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Open Time',
                        style: TextStyle(
                            color: Colors.red[900],
                            fontWeight: FontWeight.w500),
                      ),
                      RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        color: Colors.white,
                        onPressed: _picktime,
                        child: Text('${_time.format(context)}'),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Close Time',
                        style: TextStyle(
                            color: Colors.red[900],
                            fontWeight: FontWeight.w500),
                      ),
                      RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        color: Colors.white,
                        onPressed: _picktime,
                        child: Text('${_time.format(context)}'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Text(
                  'Gender',
                  style: TextStyle(
                    color: Colors.red[600],
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
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
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: TextStyle(
                      color: Colors.red[600],
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc auctor augue in sapien eleifend accumsan. Pellentesque viverra porttitor nisi, non rhoncus felis. Sed in sodales diam, vel sagittis mi. Mauris sagittis dignissim enim lobortis venenatis.',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BuyerMoreScreen(),
                  ),
                );
              },
              padding: EdgeInsets.fromLTRB(100, 10, 100, 10),
              textColor: Colors.white,
              color: Colors.red[600],
              child: Text(
                'Updade',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

Widget _textInput(String hint, IconData icon, IconData icon2) {
  return Container(
    height: 60,
    margin: EdgeInsets.only(top: 10),
    decoration: BoxDecoration(
      border: Border(bottom: BorderSide(color: Colors.red[600])),
    ),
    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
    child: ListTile(
      //controller: controller,
      leading: Icon(
        icon,
        color: Colors.red[600],
      ),
      title: Text(
        hint,
        style: TextStyle(color: Colors.red[600]),
      ),
      trailing: Icon(
        icon2,
        color: Colors.red[600],
      ),
    ),
  );
}
