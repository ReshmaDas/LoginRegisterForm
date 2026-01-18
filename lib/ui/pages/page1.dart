import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:loginform/Auth/loginScreen.dart';
import 'package:loginform/color.dart';
import 'package:loginform/data/banner_carousel.dart';
import 'package:loginform/ui/components/mytab2.dart';
import 'package:loginform/ui/components/tabController.dart';
import 'package:loginform/widget/popular_product/allProducts.dart';
import 'package:loginform/widget/popular_product/dailyBest_SellProduct.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final MyTab tabs = Get.put(MyTab());
    // final MyTab2 _tabs2 = Get.put(MyTab2());
    // final MyTab3 _tabs3 = Get.put(MyTab3());
    final box = GetStorage();

    String userName = box.read('user_name') ?? '';
    String email = box.read('email') ?? '';

    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 40,
          child: Image.asset(
            'assets/nest.png',
            fit: BoxFit.cover,
          ),
        ),
        centerTitle: true,
        actions: [
          InkWell(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            onTap: () {
              //   Get.to(PageOne());
            },
            child: Text(
              userName ?? '',
              style: TextStyle(fontSize: 13, color: blue),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: IconButton(
              onPressed: () async {
                final box = GetStorage();

                box.write('isLoggedIn', false); // 🔴 Important
                box.remove('email');
                box.remove('user_name');

                Get.offAll(() => LoginScreen());
                print('Logout');
              },
              icon: const Icon(Icons.logout),
            ),
          ),
        ],
      ),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(4),
              height: 200,
              width: double.infinity,
              child: BannerCarousel(
                margin: const EdgeInsets.all(4),
                banners: listBanners,
                customizedIndicators: const IndicatorModel.animation(
                    width: 20, height: 5, spaceBetween: 2, widthAnimation: 50),
                height: 200,
                activeColor: Colors.amberAccent,
                disableColor: Colors.white,
                animation: true,
                borderRadius: 10,
                width: double.infinity,
                indicatorBottom: false,
              ),
            ),

            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: SizedBox(
                      width: width * .4,
                      child: Image.asset('assets/shopNow2.png'),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: SizedBox(
                      width: width * .4,
                      child: Image.asset('assets/shopNow2.png'),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 22, right: 22),
              child: Text(
                'Popular Products',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w700),
              ),
            ),

            const AllProducts(),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 22, right: 22),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Daily Best Sells',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            // Container(
            //   height: 200,
            //   child: DailyBestSellPAge()),

            SizedBox(height: 400, child: DailyBestSellPAge()),

            const SizedBox(height: 10),
            const SizedBox(height: 5),
            Container(
              margin: const EdgeInsets.all(10),
              height: 160,
              width: width * .9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: const Color.fromARGB(255, 185, 250, 228)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Stay home & get your daily needs from our shop',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontWeight: FontWeight.w700),
                      maxLines: 2,
                    ),
                  ),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Start Your's Daily Shopping With ",
                          style: TextStyle(
                              color: Colors.black38,
                              fontSize: 13,
                              fontWeight: FontWeight.w700),
                          maxLines: 2,
                        ),
                      ),
                      Text(
                        "Nest Mart ",
                        style: TextStyle(
                            color: Colors.greenAccent,
                            fontSize: 13,
                            fontWeight: FontWeight.w700),
                        maxLines: 2,
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 40,
                        width: width * .7,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.white),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            decoration:
                                const InputDecoration.collapsed(hintText: 'email'),
                          ),
                        ),
                      ),
                      Positioned(
                          left: width * .5,
                          // top: 30.0,
                          child: Container(
                            width: width * .2,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromARGB(255, 35, 153, 51)),
                            child: const Center(child: Text('Subscribe')),
                          )),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}
