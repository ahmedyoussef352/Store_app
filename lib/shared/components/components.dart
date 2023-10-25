// ignore_for_file: sized_box_for_whitespace

import 'package:down_app/shared/components/widgets/widgets.dart';
import 'package:flutter/material.dart';

Widget list() => SingleChildScrollView(
      child: Column(
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
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Suggested for you',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Container(
            height: 190,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: [
                    suggest(),
                    suggest(),
                    suggest(),
                    suggest(),
                    suggest(),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sponsored',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          sponsored(),
        ],
      ),
    );

Widget suggest() => Container(
      padding: const EdgeInsets.only(left: 13),
      height: 190,
      width: 130,

      // color: Colors.red,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  20,
                ),
                image: const DecorationImage(
                    fit: BoxFit.cover, image: AssetImage('assets/161.jpg'))),
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: Expanded(
              child: Container(
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        'Call Duty Mobile',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Tatical shooter',

                        style: TextStyle(
                          color: Colors.black,
                        ),

                        // maxLines: 1,
                      ),
                    ),
                    Row(children: [
                      Text('4.2'),
                      Icon(
                        Icons.star,
                        size: 15,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                    ]),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );

Widget sponsored() => Column(
      children: [
        sponsoredItem(),
        sponsoredItem(),
        sponsoredItem(),
        sponsoredItem(),
      ],
    );

Widget sponsoredItem() => Container(
      padding: const EdgeInsets.only(bottom: 20),
      width: double.infinity,
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  5,
                ),
                image: const DecorationImage(
                    fit: BoxFit.cover, image: AssetImage('assets/161.jpg'))),
          ),
          const SizedBox(
            width: 20,
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
                  'Action . Tatical shooter . online',
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
                  Text(
                    '91 MB',
                    style: TextStyle(color: Colors.grey.shade700),
                  )
                ]),
              ],
            ),
          ),
        ],
      ),
    );
void navigateTo({required context, required widget}) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
}

void navigateToFinish({required context, required widget}) {
  Navigator.pushAndRemoveUntil(
      context, MaterialPageRoute(builder: (context) => widget), (route) {
    return false;
  });
}

Widget defaultButton({
  required String text,
  required Color color,
  required Color background,
  required Function() navigate,
}) =>
    Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextButton(
        onPressed: navigate,
        child: Text(
          text,
          style: TextStyle(color: color, fontSize: 16),
        ),
      ),
    );
Widget firstDetailsBar() => Container(
      //  color: Colors.red,
      width: 120,
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        const Row(
          children: [
            Expanded(child: SizedBox()),
            Text('4.3'),
            Icon(
              Icons.star,
              size: 15,
            ),
            Expanded(child: SizedBox())
          ],
        ),
        Row(
          children: [
            Text(
              '201K reviews ',
              style: TextStyle(color: Colors.grey.shade700),
            ),
            Icon(
              Icons.error_outline,
              size: 15,
              color: Colors.grey.shade700,
            )
          ],
        )
      ]),
    );

Widget secoundDetailsBar() => Container(
      //  color: Colors.red,
      width: 120,
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        const Row(
          children: [
            Expanded(child: SizedBox()),
            Icon(
              Icons.file_download,
              size: 20,
            ),
            Expanded(child: SizedBox())
          ],
        ),
        Text(
          '2.4 GB',
          style: TextStyle(color: Colors.grey.shade700, fontSize: 13),
        )
      ]),
    );
Widget thiredDetailsBar() => Container(
      //  color: Colors.red,
      width: 120,
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        const Row(
          children: [
            Expanded(child: SizedBox()),
            Icon(
              Icons.sixteen_mp_outlined,
              size: 20,
            ),
            Expanded(child: SizedBox())
          ],
        ),
        Row(
          children: [
            Text(
              'Rated for 16+ ',
              style: TextStyle(color: Colors.grey.shade700, fontSize: 13),
            ),
            Icon(
              Icons.error_outline,
              size: 15,
              color: Colors.grey.shade700,
            )
          ],
        )
      ]),
    );
Widget forthDetailsBar() => Container(
      // color: Colors.red,
      width: 100,
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        const Row(
          children: [
            Expanded(child: SizedBox()),
            Text('5M+'),
            Expanded(child: SizedBox())
          ],
        ),
        Row(
          children: [
            Expanded(child: SizedBox()),
            Text(
              'Downloads',
              style: TextStyle(color: Colors.grey.shade700, fontSize: 15),
            ),
            Expanded(child: SizedBox()),
          ],
        )
      ]),
    );
Widget verticalDrawer() => const Padding(
      padding: EdgeInsets.only(right: 10),
      child: Text(
        '|',
        style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.w300, color: Colors.grey),
      ),
    );
