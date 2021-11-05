import 'package:flutter/material.dart';
import 'package:SeWo/common/my_colors.dart';
import 'package:SeWo/common/my_style.dart';
import 'package:SeWo/ui/widgets/custom_button_icon.dart';
import 'package:SeWo/ui/widgets/custom_card.dart';

class NavBottom extends StatelessWidget {
  final bool isCollapse;

  const NavBottom({Key? key, this.isCollapse = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget navCollapse() {
      return Padding(
        padding: isCollapse ? EdgeInsets.all(30) : EdgeInsets.zero,
        child: IntrinsicHeight(
          child: CustomCard(
            padding: EdgeInsets.all(10),
            bgColor: MyColors.white,
            shadow: true,
            elevationY: 5,
            shadowBlur: 30,
            borderRadius: isCollapse
                ? BorderRadius.circular(1000)
                : BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
            child: Column(
              children: [
                CustomCard(
                    height: 6,
                    width: 40,
                    bgColor: MyColors.grey,
                    shadow: false),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(width: 5),
                    Expanded(
                      child: CustomButtonIcon(
                        action: () {},
                        iconPath: "assets/images/logo sewo 1.png",
                        text: "CoworkInc",
                        height: 50,
                        width: 50,
                      ),
                    ),
                    Expanded(
                      child: CustomButtonIcon(
                        action: () {},
                        iconPath: "assets/images/logo sewo 1.png",
                        text: "Impala",
                        height: 50,
                        width: 50,
                      ),
                    ),
                    Expanded(
                      child: CustomButtonIcon(
                        action: () {},
                        iconPath: "assets/images/logo sewo 1.png",
                        text: "Artech Space",
                        height: 50,
                        width: 50,
                      ),
                    ),
                    Expanded(
                      child: CustomButtonIcon(
                        action: () {},
                        iconPath: "assets/images/logo sewo 1.png",
                        text: "lo.ka.si",
                        height: 50,
                        width: 50,
                      ),
                    ),
                    SizedBox(width: 5),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget navExpand() {
      return Padding(
        padding: isCollapse ? EdgeInsets.all(30) : EdgeInsets.zero,
        child: IntrinsicHeight(
          child: CustomCard(
            padding: EdgeInsets.all(10),
            bgColor: MyColors.white,
            shadow: true,
            elevationY: 5,
            shadowBlur: 30,
            borderRadius: isCollapse
                ? BorderRadius.circular(1000)
                : BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: CustomCard(
                        height: 6,
                        width: 40,
                        bgColor: MyColors.grey,
                        shadow: false),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Daftar Cowork Jakarta",
                    textAlign: TextAlign.start,
                    style: MyStyle.textTitleBlack,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 5),
                      Expanded(
                        child: CustomButtonIcon(
                          action: () {},
                          iconPath: "assets/images/logo sewo 1.png",
                          text: "CoworkInc",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Expanded(
                        child: CustomButtonIcon(
                          action: () {},
                          iconPath: "assets/images/logo sewo 1.png",
                          text: "Cohive",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Expanded(
                        child: CustomButtonIcon(
                          action: () {},
                          iconPath: "assets/images/logo sewo 1.png",
                          text: "Wellspaces",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      SizedBox(width: 5),
                    ],
                  ),
                  SizedBox(height: 30),
                  Text(
                    " Daftar Cowork Semarang",
                    textAlign: TextAlign.start,
                    style: MyStyle.textTitleBlack,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 5),
                      Expanded(
                        flex: 1,
                        child: CustomButtonIcon(
                          action: () {},
                          iconPath: "assets/images/logo sewo 1.png",
                          text: "Impala",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Expanded(
                        child: CustomButtonIcon(
                          action: () {},
                          iconPath: "assets/images/logo sewo 1.png",
                          text: "Hetero",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Expanded(
                        child: CustomButtonIcon(
                          action: () {},
                          iconPath: "assets/images/logo sewo 1.png",
                          text: "Tiga Perempat",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(),
                      ),
                      SizedBox(width: 5),
                    ],
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Daftar Cowork Yogyakarta",
                    textAlign: TextAlign.start,
                    style: MyStyle.textTitleBlack,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 5),
                      Expanded(
                        flex: 1,
                        child: CustomButtonIcon(
                          action: () {},
                          iconPath: "assets/images/logo sewo 1.png",
                          text: "Artech Space",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Expanded(
                        child: CustomButtonIcon(
                          action: () {},
                          iconPath: "assets/images/logo sewo 1.png",
                          text: "IndigoHub",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(),
                      ),
                      SizedBox(width: 5),
                    ],
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Daftar Cowork Bandung",
                    textAlign: TextAlign.start,
                    style: MyStyle.textTitleBlack,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 5),
                      Expanded(
                        flex: 1,
                        child: CustomButtonIcon(
                          action: () {},
                          iconPath: "assets/images/logo sewo 1.png",
                          text: "lo.ka.si",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: CustomButtonIcon(
                          action: () {},
                          iconPath: "assets/images/logo sewo 1.png",
                          text: "EduPlex",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: CustomButtonIcon(
                          action: () {},
                          iconPath: "assets/images/logo sewo 1.png",
                          text: "Ruangreka",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: CustomButtonIcon(
                          action: () {},
                          iconPath: "assets/images/logo sewo 1.png",
                          text: "Conclave",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      SizedBox(width: 5),
                    ],
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Daftar Cowork Surabaya",
                    textAlign: TextAlign.start,
                    style: MyStyle.textTitleBlack,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 5),
                      Expanded(
                        flex: 1,
                        child: CustomButtonIcon(
                          action: () {},
                          iconPath: "assets/images/logo sewo 1.png",
                          text: "IndigoSpace",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: CustomButtonIcon(
                          action: () {},
                          iconPath: "assets/images/logo sewo 1.png",
                          text: "AMG Tower",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: CustomButtonIcon(
                          action: () {},
                          iconPath: "assets/images/logo sewo 1.png",
                          text: "Urban Office",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: CustomButtonIcon(
                          action: () {},
                          iconPath: "assets/images/logo sewo 1.png",
                          text: "CoHive Voza",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      SizedBox(width: 5),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ),
      );
    }

    return isCollapse ? navCollapse() : navExpand();
  }
}
