import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_aninmation_ui/constants/cart_item.dart';
import 'package:flutter_aninmation_ui/screens/nike_shop/widgets/follow.dart';
import 'package:flutter_aninmation_ui/utils/colors.dart';
import 'package:flutter_aninmation_ui/utils/image_assets.dart';
import 'package:flutter_aninmation_ui/utils/sizings.dart';

class NickeShopScreen extends StatefulWidget {
  const NickeShopScreen({super.key});

  @override
  State<NickeShopScreen> createState() => _NickeShopScreenState();
}

class _NickeShopScreenState extends State<NickeShopScreen> {
  @override
  void initState() {
    super.initState();
  }

  PageController controller = PageController();
  PageController controller_2 = PageController();
  int activeIndex = 0;

  List<String> navItems = ["Men", "Women", "Kids", "Collections"];

  final duration = const Duration(milliseconds: 1200);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: duration,
        clipBehavior: Clip.none,
        width: Sizing.width(context),
        height: Sizing.height(context),
        decoration: BoxDecoration(
          color: items[activeIndex].main,
          image: const DecorationImage(
              image: AssetImage(AssetHelper.lines), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            shoeSlider(context),
            AnimatedContainer(
              duration: duration,
              clipBehavior: Clip.none,
              margin: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(
                color: items[activeIndex].light,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: AppColors.white.withOpacity(0.3),
                  width: 3,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [buttonAndPrice(context)],
              ),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox buttonAndPrice(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              textSlider(context),
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: AnimatedContainer(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      duration: duration,
                      decoration: BoxDecoration(
                        color: items[activeIndex].main,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: const Text(
                          "Add to bag",
                          style: TextStyle(color: AppColors.white),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 30),
                    child: TweenAnimationBuilder(
                        duration: duration,
                        key: ValueKey(activeIndex),
                        tween: Tween<double>(begin: 0.0, end: 1.0),
                        builder: (context, value, child) {
                          return Stack(
                            children: [
                              if (activeIndex > 0 &&
                                  activeIndex < items.length - 1)
                                Opacity(
                                  opacity: 1 - value,
                                  child: Transform.translate(
                                    offset: Offset(50 * value, 0.0),
                                    child: Text(
                                      items[activeIndex - 1].price,
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayMedium!
                                          .copyWith(
                                              color: AppColors.white,
                                              fontSize: 28),
                                    ),
                                  ),
                                ),
                              Opacity(
                                opacity: value,
                                child: Transform.translate(
                                  offset: Offset(-50 * (1 - value), 0.0),
                                  child: Text(
                                    items[activeIndex].price,
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayMedium!
                                        .copyWith(
                                            color: AppColors.white,
                                            fontSize: 28),
                                  ),
                                ),
                              ),
                            ],
                          );
                        }),
                  ),
                ],
              ),
              // Follow(activeIndex: activeIndex)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...items.map((e) {
                return indicator(e.index == activeIndex, e.index);
              }),
            ],
          ),
        ],
      ),
    );
  }

  Row navBar() {
    return Row(
      children: [
        Image.asset(AssetHelper.nike_white),
        const SizedBox(width: 60),
        ...navItems.map(
          (e) => InkWell(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.only(right: 90),
              child: Text(e,
                  style: const TextStyle(fontSize: 16, color: AppColors.white)),
            ),
          ),
        ),
      ],
    );
  }

  SizedBox textSlider(BuildContext context) {
    return SizedBox(
      width: Sizing.width(context),
      height: 260,
      child: PageView.builder(
        clipBehavior: Clip.none,
        physics: const NeverScrollableScrollPhysics(),
        controller: controller_2,
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (c, i) {
          return AnimatedScale(
            alignment: Alignment.centerLeft,
            duration: duration,
            scale: activeIndex == i ? 1 : 0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  items[i].title,
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .copyWith(color: AppColors.white),
                ),
                Text(
                  items[i].desc,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: AppColors.white, fontSize: 16),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Container shoeSlider(BuildContext context) {
    return Container(
      clipBehavior: Clip.none,
      height: Sizing.height(context) / 3,
      width: Sizing.width(context),
      child: PageView.builder(
        clipBehavior: Clip.none,
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (c, i) {
          return AnimatedOpacity(
            duration: duration,
            opacity: i == activeIndex ? 1 : 0,
            child: Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity()..scale(1.2),
              child: Image.asset("assets/imgs/shoe_$i.png"),
            ),
          );
        },
      ),
    );
  }

  void animateChange(int index) async {
    setState(() {
      activeIndex = index;
    });
    await controller.animateToPage(index,
        duration: const Duration(milliseconds: 1500),
        curve: Curves.easeInOutBack);
    controller_2.animateToPage(index,
        duration: const Duration(milliseconds: 800), curve: Curves.ease);
  }

  Widget indicator(bool isActive, int index) {
    return InkWell(
      onTap: () => animateChange(index),
      child: Column(
        children: [
          Text(
            "0${index + 1}",
            style: Theme.of(context).textTheme.displaySmall!.copyWith(
                  color: isActive
                      ? AppColors.white
                      : AppColors.white.withOpacity(0.5),
                ),
          ),
          AnimatedContainer(
            duration: duration,
            width: activeIndex == index ? 100 : 60,
            height: 5,
            decoration: BoxDecoration(
              color:
                  isActive ? AppColors.white : AppColors.white.withOpacity(0.5),
              // borderRadius: index == 0
              //     ? const BorderRadius.only(
              //         topLeft: Radius.circular(10),
              //         topRight: Radius.circular(10),
              //       )
              //     : index == items.length - 1
              //         ? const BorderRadius.only(
              //             bottomLeft: Radius.circular(10),
              //             bottomRight: Radius.circular(10),
              //           )
              //         : null,
            ),
          ),
        ],
      ),
    );
  }
}
