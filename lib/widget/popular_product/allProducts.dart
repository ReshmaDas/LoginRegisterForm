import 'package:flutter/material.dart';
import 'package:loginform/data/banner_carousel.dart';
import 'package:loginform/data/modeProduct.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // number of items in each row
            mainAxisSpacing: 8.0, // spacing between rows
            crossAxisSpacing: 8.0, // spacing between columns
            childAspectRatio: 5 / 12),
        padding: const EdgeInsets.all(8.0), // padding around the grid
        itemCount: products.length, // total number of items
        itemBuilder: (context, index) {
          final Product productItems = products[index];
          return Container(
            decoration: BoxDecoration(
                border:
                    Border.all(color: const Color.fromARGB(255, 188, 187, 187)),
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(12))),
            // color of grid items
            child: Column(
              children: [
                SizedBox(
                    width: 100,
                    height: 80,
                    child: Image.asset(productItems.image)),
                Padding(
                  padding: const EdgeInsets.only(left: 7),
                  child: Align(
                    alignment: FractionalOffset.bottomLeft,
                    child: Text(
                      productItems.name,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 152, 149, 149),
                          fontSize: 10,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 7),
                  child: Align(
                    alignment: FractionalOffset.bottomLeft,
                    child: SizedBox(
                      height: 65,
                      child: Text(
                        productItems.description,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 7),
                  child: Row(
                    children: [
                      const Align(
                          alignment: FractionalOffset.bottomLeft,
                          child: Icon(
                            Icons.star,
                            color: Color.fromARGB(255, 240, 220, 45),
                          )),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "(${productItems.rating})",
                        style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 7),
                  child: Row(
                    children: [
                      const Align(
                        alignment: FractionalOffset.bottomLeft,
                        child: Text(
                          'By ',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Align(
                        alignment: FractionalOffset.bottomLeft,
                        child: Text(
                          productItems.company,
                          style: const TextStyle(
                              color: Colors.green,
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: FractionalOffset.bottomLeft,
                        child: Text(
                          '\n\$ ${productItems.price}',
                          style: const TextStyle(
                              color: Colors.green,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: const Color.fromARGB(255, 164, 240, 167)),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.shopping_cart_outlined,
                                color: Colors.green,
                              ),
                              Text(
                                'add',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Align(
                    alignment: FractionalOffset.bottomLeft,
                    child: Text.rich(
                      TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: '\$ ${productItems.oldPrice}',
                            style: const TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });

    //     SizedBox(
    //       height: 10,

    // );
  }
}
