import 'package:flutter/material.dart';
import 'package:flutter_aninmation_ui/components/shop_item.dart';
import 'package:flutter_aninmation_ui/utils/sizings.dart';
import 'package:flutter_svg/svg.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => ShopScreenState();
}

class ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text("Fashion Shop"),
        actions: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: SvgPicture.asset('assets/svgs/more.svg'),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: AppSizing.width(context),
          padding:
              EdgeInsets.symmetric(horizontal: AppSizing.width(context) * 0.05),
          child: const ShoppingItems(),
        ),
      ),
    );
  }
}
