// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class HotelItem extends StatefulWidget {
  String hotelImage;
  String hotelName;
  String hotelLoc;
  HotelItem(
      {super.key,
      required this.hotelImage,
      required this.hotelLoc,
      required this.hotelName});

  @override
  State<HotelItem> createState() => _HotelItemState();
}

class _HotelItemState extends State<HotelItem> {
  bool click = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        height: 1,
        // color: Colors.black,
        width: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 250,
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    15,
                  ),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(widget.hotelImage.toString()))),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 0,
              child: Container(
                width: double.infinity,
                // color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            5,
                          ),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(widget.hotelImage.toString()))),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Call Duty Mobile',
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            'Action . Tatical shooter',
                            style: TextStyle(color: Colors.grey.shade700),
                          ),
                          Row(children: [
                            const Text('4.2'),
                            const Icon(
                              Icons.star,
                              size: 15,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Icon(
                              Icons.calendar_month_outlined,
                              color: Colors.blue,
                            ),
                            Text(
                              'Events',
                              style: TextStyle(color: Colors.grey.shade700),
                            )
                          ]),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
