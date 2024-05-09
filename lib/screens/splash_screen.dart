import 'package:arias0315/screens/dashboard.screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:shape_of_view_null_safe/shape_of_view_null_safe.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          splashImage(),
          const Gap(20),
          title(),
          myButton(),
        ],
      ),
    );
  }

  Widget splashImage() {
    return ShapeOfView(
        shape: ArcShape(
            direction: ArcDirection.Outside,
            height: 20,
            position: ArcPosition.Bottom),
        elevation: 0,
        child: Container(
          height: Get.height / 1.4,
          width: Get.width,
          decoration: BoxDecoration(
            color: Color(0xffF0F4EF),
          ),
          child: Image.asset("assets/image3.png"),
        ));
  }

  Widget title() {
    return Text(
      "Carpinteria \nArias!",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
    );
  }

  Widget myButton() {
    return GestureDetector(
      onTap: () {
        Get.to(DashboardScreen());
      },
      child: Container(
        height: 52,
        padding: EdgeInsets.symmetric(horizontal: 32.0),
        decoration: BoxDecoration(
            color: Color(0xfffbbb90), borderRadius: BorderRadius.circular(42)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Ir a Pantalla",
                style: TextStyle(fontSize: 18, color: Color(0xff363636))),
            Gap(10),
            Container(
                padding: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff313131), width: 0.8),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Color(0xff303030),
                  size: 18,
                ))
          ],
        ),
      ),
    );
  }
}
