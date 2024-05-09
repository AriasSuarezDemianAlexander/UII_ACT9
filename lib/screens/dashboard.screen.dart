import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        onPressed: () {},
        backgroundColor: Color(0xffe59451),
        child: Icon(
          Icons.qr_code_scanner,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Gap(20),
            topBar(),
            location(),
            const Gap(20),
            searchBar(),
            const Gap(20),
            categories(),
            const Gap(20), // Added gap for separation
            Expanded(
              child: gridView(), // Added GridView here
            ),
          ],
        ),
      ),
    );
  }

  Widget topBar() {
    return Row(
      children: [
        const CircleAvatar(
          radius: 24,
        ),
        const Gap(20),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Bienvenido",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff98A2B3))),
            Text("Demian Arias",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff252525))),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 21,
          backgroundColor: const Color(0xffF2F4F7),
          child: Image.asset("assets/noti.png", height: 31),
        )
      ],
    );
  }

  Widget location() {
    return const Row(
      children: [
        Icon(
          Icons.location_on_sharp,
          color: Color(0xffD0D5DD),
          size: 16,
        ),
        Gap(6.5),
        Text("Ciudad Juarez",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Color(0xff757575))),
      ],
    );
  }

  Widget searchBar() {
    return Container(
      width: Get.width,
      height: 40.0,
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(38),
        color: Color(0xffc8c7c7),
      ),
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: Image.asset("assets/search.png"),
            suffixIcon: Image.asset("assets/filter.png"),
            suffixIconConstraints: BoxConstraints(maxHeight: 24.0),
            prefixIconConstraints: BoxConstraints(maxHeight: 24.0),
            border: InputBorder.none,
            fillColor: Color(0xffc8c7c7),
            filled: true,
            hintText: "Buscar...",
            hintStyle: TextStyle(fontSize: 14, color: Color(0xff414142))),
      ),
    );
  }

  Widget categories() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Categoría",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
        ),
        const Gap(10.0),
        SizedBox(
          height: 42,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 28.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(29),
                    color: Color(0xffe59451)),
                child: Center(
                    child: Text(
                  "Todo",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                )),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.only(left: 10.0),
                padding: EdgeInsets.symmetric(horizontal: 28.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(29),
                    border: Border.all(color: Color(0xffD8D5DD), width: 1.5),
                    color: Color(0xffffffff)),
                child: Center(
                    child: Text(
                  "Comida",
                  style: TextStyle(
                      color: Color(0xffD8D5DD),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                )),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.only(left: 10.0),
                padding: EdgeInsets.symmetric(horizontal: 28.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(29),
                    border: Border.all(color: Color(0xffD8D5DD), width: 1.5),
                    color: Color(0xffffffff)),
                child: Center(
                    child: Text(
                  "Bebidas",
                  style: TextStyle(
                      color: Color(0xffD8D5DD),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                )),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.only(left: 10.0),
                padding: EdgeInsets.symmetric(horizontal: 28.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(29),
                    border: Border.all(color: Color(0xffD8D5DD), width: 1.5),
                    color: Color(0xffffffff)),
                child: Center(
                    child: Text(
                  "Clientes",
                  style: TextStyle(
                      color: Color(0xffD8D5DD),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                )),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.only(left: 10.0),
                padding: EdgeInsets.symmetric(horizontal: 28.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(29),
                    border: Border.all(color: Color(0xffD8D5DD), width: 1.5),
                    color: Color(0xffffffff)),
                child: Center(
                    child: Text(
                  "Empleados",
                  style: TextStyle(
                      color: Color(0xffD8D5DD),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                )),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.only(left: 10.0),
                padding: EdgeInsets.symmetric(horizontal: 28.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(29),
                    border: Border.all(color: Color(0xffD8D5DD), width: 1.5),
                    color: Color(0xffffffff)),
                child: Center(
                    child: Text(
                  "Gerente",
                  style: TextStyle(
                      color: Color(0xffD8D5DD),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                )),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget gridView() {
    return GridView.count(
      primary: false,
      childAspectRatio: 0.83,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xfffee6d2),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Stack(
            children: [
              Positioned(
                right: 0,
                child: CircleAvatar(
                  backgroundColor: Color(0xffe59451),
                  radius: 12,
                  child: Icon(Icons.heart_broken_sharp,
                      color: Colors.white, size: 15),
                ),
              ),
              Column(
                children: [
                  Image.asset(
                    "assets/isla1.jpeg",
                    height: 110,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Isla de sala",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          Gap(8.0),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 4.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Center(
                              child: Text("30.00",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Color(0xffe59451))),
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      CircleAvatar(
                        backgroundColor: Color(0xffe59451),
                        radius: 12,
                        child: Icon(Icons.add, color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xfffee6d2),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Stack(
            children: [
              Positioned(
                right: 0,
                child: CircleAvatar(
                  backgroundColor: Color(0xffe59451),
                  radius: 12,
                  child: Icon(Icons.heart_broken_sharp,
                      color: Colors.white, size: 15),
                ),
              ),
              Column(
                children: [
                  Image.asset(
                    "assets/cocina.png",
                    height: 110,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Cocineta",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          Gap(8.0),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 4.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Center(
                              child: Text("25.00",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Color(0xffe59451))),
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      CircleAvatar(
                        backgroundColor: Color(0xffe59451),
                        radius: 12,
                        child: Icon(Icons.add, color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xfffee6d2),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Stack(
            children: [
              Positioned(
                right: 0,
                child: CircleAvatar(
                  backgroundColor: Color(0xffe59451),
                  radius: 12,
                  child: Icon(Icons.heart_broken_sharp,
                      color: Colors.white, size: 15),
                ),
              ),
              Column(
                children: [
                  Image.asset(
                    "assets/cocina10.jpeg",
                    height: 110,
                    width: 70,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Isla de Cocina",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          Gap(8.0),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 4.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Center(
                              child: Text("20.00",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Color(0xffe59451))),
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      CircleAvatar(
                        backgroundColor: Color(0xffe59451),
                        radius: 12,
                        child: Icon(Icons.add, color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xfffee6d2),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Stack(
            children: [
              Positioned(
                right: 0,
                child: CircleAvatar(
                  backgroundColor: Color(0xffe59451),
                  radius: 12,
                  child: Icon(Icons.heart_broken_sharp,
                      color: Colors.white, size: 15),
                ),
              ),
              Column(
                children: [
                  Image.asset(
                    "assets/cocina8.jpeg",
                    height: 110,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Cocineta",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          Gap(8.0),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 4.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Center(
                              child: Text("15.00",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Color(0xffe59451))),
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      CircleAvatar(
                        backgroundColor: Color(0xffe59451),
                        radius: 12,
                        child: Icon(Icons.add, color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
