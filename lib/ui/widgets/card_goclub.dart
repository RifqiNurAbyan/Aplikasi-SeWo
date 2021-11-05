import 'package:flutter/material.dart';
import 'package:SeWo/common/my_colors.dart';
import 'package:SeWo/common/my_style.dart';
import 'package:SeWo/ui/widgets/custom_card.dart';

class CardGoClub extends StatelessWidget {
  const CardGoClub({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      padding: EdgeInsets.all(20),
      bgColor: MyColors.white,
      shadow: true,
      shadowOpacity: .5,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/images/logo sewo 1.png",
                      height: 30,
                      width: 30,
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      child: Text("Promo SeWo", style: MyStyle.textTitleBlack),
                    ),
                  ],
                ),
                SizedBox(height: 3),
                Text("Liat dan dapatkan promo menarik untuk anda",
                    style: MyStyle.textParagraphBlack),
              ],
            ),
          ),
          SizedBox(width: 10),
          CustomCard(
              onTap: () {},
              padding: EdgeInsets.zero,
              bgColor: MyColors.green,
              shadow: false,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text("Liat Promo", style: MyStyle.textButtonWhite),
              )),
        ],
      ),
    );
  }
}
