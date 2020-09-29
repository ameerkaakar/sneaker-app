import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  AboutUs({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            'About Us',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
        ),
        backgroundColor: const Color(0xffffffff),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only(left: 30, right: 30),
          child: ListView(
            children: [
              SizedBox(height: 30),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc auctor augue in sapien eleifend accumsan. Pellentesque viverra porttitor nisi, non rhoncus felis. Sed in sodales diam, vel sagittis mi. Mauris sagittis dignissim enim lobortis venenatis. Duis eget fringilla enim. Nunc vehicula mi orci, nec sollicitudin velit euismod luctus. Nunc felis tortor, porta a aliquam ac, elementum at diam. Curabitur sit amet felis consectetur, lobortis mauris non, imperdiet quam. Suspendisse imperdiet eleifend egestas. Nulla pellentesque orci non metus cursus, vel viverra leo molestie. Fusce quis pulvinar mauris. Integer eu nulla vel nibh tincidunt placerat in a erat. Vestibulum aliquet tortor orci, sed tempor turpis aliquet eget. Aenean dignissim lorem non odio tristique, non maximus tellus consectetur. Etiam quis ullamcorper enim. Nullam ex nulla, tincidunt sit amet ante hendrerit, auctor efficitur sapien.\n\nFusce metus lectus, suscipit non orci cursus, suscipit cursus odio. Nunc dictum elit sed tellus lacinia, at porta tellus mattis. Phasellus eget nunc laoreet, pharetra quam ac, congue ex. Ut dapibus ut tellus non iaculis. Curabitur mattis, neque sit amet hendrerit molestie, ligula nibh tincidunt est, nec euismod erat orci malesuada risus. Proin at accumsan ex. Aliquam faucibus scelerisque leo et scelerisque.\n\nQuisque faucibus risus massa, vel lacinia massa pharetra eget. Cras massa lacus, porta id sapien volutpat, ultricies dignissim eros.',
                style: TextStyle(
                  //fontFamily: 'Roboto',
                  fontSize: 16,
                  color: const Color(0xff42354c),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 30),
            ],
          ),
        ));
  }
}
