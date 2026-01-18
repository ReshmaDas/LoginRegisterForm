import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

import '../../data/banner_carousel.dart';
import '../../data/modeProduct.dart';

class DailyBestSellPAge extends StatelessWidget {
  const DailyBestSellPAge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // number of items in each row
            mainAxisSpacing: 8.0, // spacing between rows
            crossAxisSpacing: 8.0, // spacing between columns
            childAspectRatio: 3 / 9),
        padding: const EdgeInsets.all(8.0), // padding around the grid
        itemCount: 3, // total number of items
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                          fontSize: 12,
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
                            fontSize: 14,
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
                        width: 10,
                      ),
                      Text(
                        "(${productItems.rating})",
                        style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
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
                            fontWeight: FontWeight.w500,
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
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: LinearProgressBar(
                    maxSteps: 6,
                    progressType: LinearProgressBar
                        .progressTypeLinear, // Use Linear progress
                    currentStep: 3,
                    progressColor: const Color.fromARGB(255, 76, 175, 102),
                    backgroundColor: Colors.grey,
                    borderRadius: BorderRadius.circular(10), //  NEW
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 7),
                  child: Align(
                    alignment: FractionalOffset.bottomLeft,
                    child: Text(
                      'Sold: 90/120 ',
                      style: TextStyle(
                        color: Color.fromARGB(255, 158, 158, 158),
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromARGB(255, 83, 202, 87)),
                  child: const Center(
                    child: Text('Add To Cart'),
                  ),
                ),
                const SizedBox(
                  height: 5,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
