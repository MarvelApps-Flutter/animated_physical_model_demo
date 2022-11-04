import 'package:flutter/material.dart';
import '../models/list_model_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _first = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF2F5F8),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: true,
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(40.0),
            child: SizedBox(
              height: 40,
              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: listData.length,
                  itemBuilder: (context, index) {
                    ListModelData modelData = listData[index];
                    return index == 0
                        ? Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Wrap(
                              alignment: WrapAlignment.start,
                              runAlignment: WrapAlignment.start,
                              spacing: 3,
                              runSpacing: 3,
                              children: [
                                Text(modelData.index!,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18,
                                            color: Colors.black)),
                                Text(modelData.title!,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18,
                                            color: Colors.black))
                              ],
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Wrap(
                              alignment: WrapAlignment.start,
                              runAlignment: WrapAlignment.start,
                              spacing: 3,
                              runSpacing: 3,
                              children: [
                                Text(modelData.index!,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w300,
                                            fontSize: 18,
                                            color: Color(0xffA4B0BC))),
                                Text(modelData.title!,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w300,
                                            fontSize: 18,
                                            color: Color(0xffA4B0BC)))
                              ],
                            ),
                          );
                  }),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: FractionallySizedBox(
                  widthFactor: 0.89,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text("Select Your Car",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      fontFamily: "Inter",
                                      fontWeight: FontWeight.w300,
                                      fontSize: 24,
                                      color: Color(0xffA4B0BC)))),
                      AnimatedPhysicalModel(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.fastOutSlowIn,
                          elevation: _first ? 0 : 6.0,
                          shape: BoxShape.rectangle,
                          shadowColor: Colors.black,
                          color: Color(0xffF2F5F8),
                          borderRadius: _first
                              ? const BorderRadius.all(Radius.circular(0))
                              : const BorderRadius.all(Radius.circular(10)),
                          child: Image.asset("assets/images/car.png")),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Column(
                              children: [
                                Text("Performance",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 26,
                                            color: Colors.black)),
                                Text("\$55,700",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 24,
                                            color: Color(0xffD01000)))
                              ],
                            ),
                          ),
                          Flexible(
                            child: Column(
                              children: [
                                Text("Long Range",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 26,
                                            color:
                                                Colors.black.withOpacity(0.6))),
                                Text("\$46,700",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 24,
                                            color: Color(0xffA4B0BC)))
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5)],
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20))),
                child: FractionallySizedBox(
                  widthFactor: 0.82,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Column(
                              children: [
                                Text("3.5s",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w600,
                                            fontSize: 36,
                                            color: Colors.black)),
                                Text("0-60 mph",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w300,
                                            fontSize: 14,
                                            color: Colors.black))
                              ],
                            ),
                          ),
                          Flexible(
                            child: Column(
                              children: [
                                Text("150mph",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w600,
                                            fontSize: 36,
                                            color: Colors.black)),
                                Text("Top Speed",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w300,
                                            fontSize: 14,
                                            color: Colors.black))
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                          "Tesla All-Wheel Drive has two independent motors. Unlike traditional all-wheel drive systems, these two motors digitally control torque to the front and rear wheels- for far better handling and traction control",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w300,
                                  fontSize: 13,
                                  color: Color(0xff979797))),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                              child: Text("\$55,700",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                          fontFamily: "Inter",
                                          fontWeight: FontWeight.w300,
                                          fontSize: 26,
                                          color: Colors.black))),
                          Flexible(
                              child: OutlinedButton(
                            onPressed: () {
                              print('_first is $_first');
                              setState(() {
                                _first = !_first;
                              });
                            },
                            child: Text('Click here',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                        fontFamily: "Inter",
                                        fontWeight: FontWeight.w300,
                                        fontSize: 20,
                                        color: Colors.black)),
                            style: OutlinedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 20),
                              shape: StadiumBorder(),
                              side: BorderSide(
                                  width: 2.0, color: Color(0xffD01000)),
                            ),
                          )),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
