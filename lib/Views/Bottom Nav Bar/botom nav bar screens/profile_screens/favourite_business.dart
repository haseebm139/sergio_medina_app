import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sergio_medina_app/Widgets/custom_card_favourit_and_history_screen.dart';
import 'package:sergio_medina_app/utils.dart';

class FavouriteBusiness extends StatefulWidget {
  const FavouriteBusiness({super.key});

  @override
  State<FavouriteBusiness> createState() => _FavouriteBusinessState();
}

class _FavouriteBusinessState extends State<FavouriteBusiness> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: OffwhiteColor,
      appBar: AppBar(
        backgroundColor: WhiteColor,
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Image.asset('assets/backarrow.png')),
        title: Text(
          'Favourite Businesses',
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 18, color: BlackColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            return CustomCardFavouritAndHistoryScreen(
                w1: const Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                w2: Row(children: [
                  Text(
                    'Starting From',
                    style: TextStyle(
                        fontFamily: 'Proxima',
                        fontWeight: FontWeight.w300, fontSize: 10, color: BlackColor),

                  ),
                  Text(
                    '  \$50',
                    style: TextStyle(
                        fontFamily: 'Proxima',
                        fontWeight: FontWeight.w600, fontSize: 12, color: BlackColor),

                  ),
                ],),
                text1: 'Metrotech Center, NY 11201, USA',
                text2: '', widget:  Row(
              children: [
                Icon(
                  Icons.star,
                  color: BlackColor,
                  size: 15,
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  '5.0 (22)',
                  style: TextStyle(
                      fontFamily: 'Proxima',
                      fontWeight: FontWeight.w300,
                      fontSize: 10,
                      color: BlackColor),
                ),
              ],
            ),);
          },
        ),
      ),
    );
  }
}
