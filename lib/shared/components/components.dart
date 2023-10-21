import 'package:down_app/shared/components/widgets/widgets.dart';
import 'package:flutter/material.dart';

Widget list() => Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Recommended for you',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_sharp,
                    size: 25,
                  ))
            ],
          ),
        ),
        Container(
          //  color: Colors.amber,
          height: 230,
          child: ListView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
              HotelItem(
                  hotelImage: 'assets/161.jpg',
                  hotelLoc: "sdjkfhjsdhf",
                  hotelName: 'Hotel jardim Atlantico'),
              HotelItem(
                  hotelImage: 'assets/160.jpg',
                  hotelLoc: "Machono",
                  hotelName: 'Moradia Car de')
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recommended for you',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 0,
          child: Container(
            height: 300,
            width: double.infinity,
            color: Colors.red,
          ),
        ),
      ],
    );
