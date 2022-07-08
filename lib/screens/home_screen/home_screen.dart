import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  Widget singleproduct() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 180,
      height: 260,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.network('assets/spinach.png'),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Fresh Basil',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    '\$50 / 50 Gram',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.0,
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RaisedButton(
                        child: Text("50 Gram"),
                        textColor: Colors.white,
                        color: Colors.green,
                        onPressed: null,
                      ),
                      RaisedButton(
                        child: Text("Add"),
                        textColor: Colors.white,
                        color: Colors.green,
                        onPressed: null,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: const Text(
          'Home',
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
        backgroundColor: const Color(0xffd6b738),
        actions: const [
          CircleAvatar(
            radius: 12,
            backgroundColor: Color(0xffd4d181),
            child: Icon(
              Icons.search,
              color: Colors.black,
              size: 17,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: CircleAvatar(
                radius: 12,
                backgroundColor: Color(0xffd4d181),
                child: Icon(
                  Icons.shop,
                  color: Colors.black,
                  size: 17,
                )),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://media.istockphoto.com/photos/vegetarian-food-in-string-bag-picture-id1311051864?k=20&m=1311051864&s=612x612&w=0&h=Y2RT33vB22QtNWFbcRSaesd_D8CEoW1wbR5r4e8rCuk='),
                ),
                borderRadius: BorderRadius.circular(12),
                color: Colors.red,
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 30.0,
                            bottom: 30.0,
                            left: 10.0,
                          ),
                          child: Container(
                            width: 100,
                            height: 50,
                            decoration: const BoxDecoration(
                              color: Color(0xffd6b738),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(50),
                                bottomLeft: Radius.circular(50),
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Center(
                                child: Text(
                                  'Vegi',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w500,
                                    shadows: [
                                      BoxShadow(
                                        color: Colors.green,
                                        blurRadius: 1,
                                        offset: Offset(2, 2),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            '30% Off',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.green[100],
                              fontWeight: FontWeight.w700,
                              shadows: const [
                                BoxShadow(
                                  color: Colors.green,
                                  blurRadius: 10,
                                  offset: Offset(1, 1),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            left: 15,
                          ),
                          child: Text(
                            'On all vegetables and fruits',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 15.0,
                bottom: 15.0,
                left: 10,
                right: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Herbs Seasonings'),
                  Text(
                    'View all',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singleproduct(),
                  singleproduct(),
                  singleproduct(),
                  singleproduct(),
                  singleproduct(),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(
                top: 15.0,
                bottom: 15.0,
                left: 10,
                right: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Fresh Fruits'),
                  Text(
                    'View all',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singleproduct(),
                  singleproduct(),
                  singleproduct(),
                  singleproduct(),
                  singleproduct(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
