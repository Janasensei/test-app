import 'package:flutter/material.dart';
import 'package:test/controllers/popular_product_controller.dart';
import 'package:test/pages/food/popular_food_detail.dart';
import 'package:test/pages/food/recommended_food_detail.dart';
import 'package:test/pages/home/food_page_body.dart';
import 'package:test/routes/route_helper.dart';
import 'controllers/recommended_product_controller.dart';
import 'pages/home/main_food_page.dart';
import 'package:get/get.dart';
import 'helper/dependencies.dart' as dep;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    Get.find<RecommendedProductController>().getRecommendedProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MYshop',
      home: MainFoodPage(),
      initialRoute: RouteHelper.initial,
      getPages: RouteHelper.routes,
    );
  }
}
