import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/home.dart';
import 'package:food_delivery_app/widget/widget_support.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
                },
                child: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.black,
                )),
            Image.asset(
              'images/salad2.png',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              fit: BoxFit.fill,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mediterranean',
                      style: AppWidget.semiBoldTextFieldStyle(),
                    ),
                    Text(
                      'Chickpea Salad',
                      style: AppWidget.boldTextFieldStyle(),
                    ),
                  ],
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    if(a > 1){
                      --a;
                    }
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(6)),
                    child: const Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  a.toString(),
                  style: AppWidget.semiBoldTextFieldStyle(),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                GestureDetector(
                  onTap: () {
                    ++a;
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(6)),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20.0,),
            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', style: AppWidget.lightTextFieldStyle(), maxLines: 3,),
            const SizedBox(height: 20.0,),
            Row(children: [
              Text('Delivery Time', style: AppWidget.lightTextFieldStyle(),),
              const Icon(Icons.alarm, color: Colors.black54,),
              const SizedBox(width: 50.0,),
              Text('30 min', style: AppWidget.semiBoldTextFieldStyle(),)
            ],),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text('Total Price', style: AppWidget.semiBoldTextFieldStyle(),),
                  Text('\$28', style: AppWidget.headlineTextFieldStyle(),)
                ],),
                Container(
                  width: MediaQuery.of(context).size.width/2,
                  padding: const EdgeInsets.all(8),
                  decoration:  BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10)),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    const Text('Add to cart', style: TextStyle(color: Colors.white, fontSize: 16.0, fontFamily: 'Poppins'),),
                    const SizedBox(width: 30.0,),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.grey, borderRadius: BorderRadius.circular(8)
                      ),
                      child: const Icon(Icons.shopping_cart_checkout_outlined, color: Colors.white,),
                    ),
                    const SizedBox(width: 10.0,)
                  ],),
                  )
              ],),
            )
          ],
        ),
      ),
    );
  }
}
