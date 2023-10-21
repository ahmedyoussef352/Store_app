import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:down_app/shared/components/components.dart';
import 'package:down_app/shared/components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  var myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 45),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue.shade50,
                        borderRadius: BorderRadius.circular(30)),
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    width: 285,
                    height: 55,
                    child: Container(
                      child: TextFormField(
                        maxLines: 1,
                        enabled: false,
                        controller: myController,
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            hintText: 'Search apps',
                            hintStyle: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 21,
                                fontWeight: FontWeight.w400),
                            prefixIcon: const Icon(
                              Icons.search,
                              size: 30,
                            ),
                            suffixIcon: const Icon(
                              Icons.keyboard_voice_outlined,
                              size: 30,
                            ),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications_none_rounded,
                        size: 31,
                      )),
                  const CircleAvatar(
                    backgroundColor: Colors.blue,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 40,
                child: const TabBar(
                  indicatorColor: Colors.blue,
                  labelColor: Colors.blue,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(
                      child: Text(
                        ' For you ',
                        style: TextStyle(),
                      ),
                      // text: 'Sigin Up',
                    ),
                    Tab(
                      child: Text(
                        'Top chart',
                        style: TextStyle(),
                      ),
                      // text: 'Sigin Up',
                    ),
                    Tab(
                      child: Text(
                        ' Premium ',
                        style: TextStyle(),
                      ),
                      // text: 'Sigin Up',
                    ),
                    Tab(
                      child: Text(' Category '),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: TabBarView(
                children: [
                  list(),
                  Center(
                    child: list(),
                  ),
                  list(),
                  list(),
                ],
              )),
              // Container(
              //   height: MediaQuery.of(context).size.height * .5,
              //   child: DefaultTabController(
              //     length: 3,
              //     child: Column(
              //       children: [
              //         ButtonsTabBar(
              //           unselectedLabelStyle: TextStyle(
              //             color: Colors.white,
              //             fontSize: MediaQuery.of(context).size.width * .045,
              //           ),
              //           labelStyle: const TextStyle(color: Colors.black),
              //           borderColor: Colors.blue,
              //           // unselectedBackgroundColor: Colors.black,
              //           // unselectedBorderColor: Colors.green.shade300,
              //           // backgroundColor: Colors.green.shade300,
              //           height: MediaQuery.of(context).size.height * .06,
              //           splashColor: Colors.green.shade300,
              //           duration: 50,
              //           // borderWidth: MediaQuery.of(context).size.width * .005,
              //           radius: MediaQuery.of(context).size.width * .05,
              //           contentPadding: EdgeInsets.symmetric(
              //             horizontal: MediaQuery.of(context).size.width * .05,
              //             vertical: MediaQuery.of(context).size.height * .003,
              //           ),
              //           physics: const BouncingScrollPhysics(),
              //           tabs: [
              //             Tab(
              //               child: Text(
              //                 'Best offers ',
              //               ),
              //               //
              //             ),
              //             const Tab(
              //               text: 'Top rates',
              //             ),
              //             const Tab(
              //               text: 'Pupular',
              //             ),
              //           ],
              //         ),
              //         SizedBox(
              //           height: MediaQuery.of(context).size.height * .05,
              //         ),
              //         Expanded(
              //           child: TabBarView(
              //             children: [list(), list(), list()],
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
