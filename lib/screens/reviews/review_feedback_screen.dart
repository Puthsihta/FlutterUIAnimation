import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_aninmation_ui/screens/reviews/widgets/arc.dart';
import 'package:flutter_aninmation_ui/screens/reviews/widgets/slider.dart';
import 'package:flutter_aninmation_ui/themes/colors.dart';
import 'package:flutter_aninmation_ui/utils/sizings.dart';

class ReviewFeedbackScreen extends StatefulWidget {
  const ReviewFeedbackScreen({super.key});

  @override
  State<ReviewFeedbackScreen> createState() => _ReviewFeedbackScreenState();
}

class _ReviewFeedbackScreenState extends State<ReviewFeedbackScreen> {
  double value = 1.0;
  final pageController = PageController(initialPage: 1);
  int activeIndex = 1;

  final duration = const Duration(milliseconds: 500);

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        value = 2.0;
        activeIndex = 2;
      });
      pageController.animateToPage(2,
          duration: duration, curve: Curves.elasticOut);
    });

    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        height: AppSizing.height(context),
        width: AppSizing.width(context),
        decoration: BoxDecoration(color: generateColors()),
        child: SafeArea(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TweenAnimationBuilder(
                  duration: const Duration(milliseconds: 1000),
                  tween: Tween<double>(begin: 1, end: 0),
                  curve: Curves.easeOutBack,
                  builder: (context, doubleVal, child) {
                    return Transform.translate(
                      offset:
                          Offset(0, doubleVal * -AppSizing.height(context) / 2),
                      child: Column(
                        children: [
                          headerSection(),
                          eyesSection(),
                        ],
                      ),
                    );
                  }),
              TweenAnimationBuilder(
                duration: const Duration(milliseconds: 1000),
                tween: Tween<double>(begin: 1, end: 0),
                curve: Curves.easeOutBack,
                builder: (context, doubleVal, child) {
                  return Transform.translate(
                    offset:
                        Offset(0, doubleVal * AppSizing.height(context) / 2),
                    child: textAndSliderSection(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget headerSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: AppColors.bgBlack.withOpacity(0.1),
                child: const Icon(Icons.close),
              ),
              CircleAvatar(
                radius: 25,
                backgroundColor: AppColors.bgBlack.withOpacity(0.1),
                child: const Icon(Icons.info_outline),
              ),
            ],
          ),
          AppSizing.kh20(context),
          Text(
            "How was your shopping\nexperience",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displaySmall,
          ),
          AppSizing.khSpacer(AppSizing.height(context) * 0.05),
        ],
      ),
    );
  }

  Widget eyesSection() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            eye(),
            AppSizing.kw20(context),
            eye(),
          ],
        ),
        AppSizing.kh20(context),
        TweenAnimationBuilder(
            key: ValueKey(activeIndex),
            tween: activeIndex == 2
                ? Tween<double>(
                    begin: 1.0,
                    end: 0.0,
                  )
                : Tween<double>(
                    begin: 0.0,
                    end: 1.0,
                  ),
            duration: const Duration(milliseconds: 500),
            builder: (context, animateValue, child) {
              return Transform.rotate(
                angle: pi * animateValue,
                // angle: value < 0.5 ? pi : pi * -value,
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: CustomPaint(
                    painter: ArcPainter(),
                  ),
                ),
              );
            })
      ],
    );
  }

  Widget textAndSliderSection() {
    List<String> items = ["BAD", "NOT BAD", "GOOD"];
    return Builder(
      builder: (context) {
        return Column(
          children: [
            SizedBox(
              height: AppSizing.height(context) * 0.1,
              child: PageView.builder(
                  allowImplicitScrolling: false,
                  physics: const NeverScrollableScrollPhysics(),
                  controller: pageController,
                  itemCount: items.length,
                  onPageChanged: (value) {
                    setState(() {
                      activeIndex = value;
                    });
                  },
                  itemBuilder: (context, i) {
                    return Center(
                      child: Text(
                        items[i],
                        style:
                            Theme.of(context).textTheme.displayMedium!.copyWith(
                                  color: AppColors.bgBlack.withOpacity(0.3),
                                ),
                      ),
                    );
                  }),
            ),
            // AppSizing.khSpacer(AppSizing.height(context) * 0.05),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: AppSlider(
                onChanged: (dynamic val) {
                  setState(() {
                    value = val;
                  });

                  pageController.animateTo(
                    value * AppSizing.width(context),
                    duration: const Duration(milliseconds: 1800),
                    curve: Curves.elasticOut,
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }

  Widget eye() {
    return Builder(builder: (context) {
      double width = 50;
      double height = 25;
      double radius = 25;
      if (value <= 0.5) {
        width = 50;
        height = 50;
      }
      if (value > 0.5 && value < 1.2) {
        width = 50;
        height = 30;
      }
      if (value >= 1.2) {
        height = 120;
        width = 120;
        radius = 60;
      }
      return AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: AppColors.bgBlack,
          borderRadius: BorderRadius.circular(radius),
        ),
      );
    });
  }

  Color generateColors() {
    if (value <= 0.5) {
      return AppColors.ratingRed;
    } else if (value >= 0.5 && value <= 1.2) {
      return AppColors.bgOrange;
    } else {
      return AppColors.bgGreen;
    }
  }
}
