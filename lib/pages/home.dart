import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery_app/pages/details.dart';
import 'package:food_delivery_app/widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool iceCream = false, pizza = false, salad = false, burger = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50.0, left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),  color: Colors.black54),
                  width: MediaQuery.of(context).size.width/3,
                  padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                  child: Image.asset(
                      'images/logo.png',
                      width: MediaQuery.of(context).size.width / 2,
                      fit: BoxFit.cover),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 20.0),
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              'Delicious Food',
              style: AppWidget.headlineTextFieldStyle(),
            ),
            Text(
              'Discover and Get Great Food',
              style: AppWidget.lightTextFieldStyle(),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                margin: const EdgeInsets.only(right: 20.0), child: showItem()),
            const SizedBox(
              height: 30.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Details()));
                    },
                    child: Container(
                      width: 200.0,
                      margin: const EdgeInsets.all(4),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: const EdgeInsets.all(14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'images/salad2.png',
                                height: 150,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'Veggie Taco Hash',
                                style: AppWidget.semiBoldTextFieldStyle(),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'Fresh and Healthy',
                                style: AppWidget.lightTextFieldStyle(),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                '\$25',
                                style: AppWidget.semiBoldTextFieldStyle(),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    width: 200.0,
                    padding: const EdgeInsets.all(4),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: const EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'images/salad4.png',
                              height: 150,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'Mix Veg Salad',
                              style: AppWidget.semiBoldTextFieldStyle(),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'Spicy with Onion',
                              style: AppWidget.lightTextFieldStyle(),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              '\$26',
                              style: AppWidget.semiBoldTextFieldStyle(),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Container(
              margin: const EdgeInsets.only(right: 20.0),
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  child: Row(children: [
                    Image.asset(
                      "images/salad4.png",
                      height: 120,
                      width: 120,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              'Mediterranean Chickpea Salad',
                              style: AppWidget.semiBoldTextFieldStyle(),
                            )),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              'Honey goot cheese',
                              style: AppWidget.lightTextFieldStyle(),
                            )),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              '\$28',
                              style: AppWidget.semiBoldTextFieldStyle(),
                            ))
                      ],
                    ),
                  ]),
                ),
              ),
            ),
            const SizedBox(height: 20.0,),
            Container(
              margin: const EdgeInsets.only(right: 20.0),
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  child: Row(children: [
                    Image.asset(
                      "images/salad2.png",
                      height: 120,
                      width: 120,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              'Veggie Taco Hash',
                              style: AppWidget.semiBoldTextFieldStyle(),
                            )),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              'Honey goot cheese',
                              style: AppWidget.lightTextFieldStyle(),
                            )),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              '\$26',
                              style: AppWidget.semiBoldTextFieldStyle(),
                            ))
                      ],
                    ),
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            iceCream = true;
            pizza = false;
            salad = false;
            burger = false;
            setState(() {});
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: iceCream ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                'images/ice-cream.png',
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: iceCream ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            iceCream = false;
            pizza = true;
            salad = false;
            burger = false;
            setState(() {});
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: pizza ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                'images/pizza.png',
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: pizza ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            iceCream = false;
            pizza = false;
            salad = true;
            burger = false;
            setState(() {});
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: salad ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                'images/salad.png',
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: salad ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            iceCream = false;
            pizza = false;
            salad = false;
            burger = true;
            setState(() {});
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: burger ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                'images/burger.png',
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: burger ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
