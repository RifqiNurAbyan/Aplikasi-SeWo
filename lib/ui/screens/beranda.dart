import 'package:flutter/material.dart';
import 'package:SeWo/common/my_colors.dart';
import 'package:SeWo/common/my_font_size.dart';
import 'package:SeWo/ui/widgets/card_goclub.dart';
import 'package:SeWo/ui/widgets/card_info.dart';
import 'package:SeWo/ui/widgets/custom_button_icon.dart';
import 'package:SeWo/ui/widgets/custom_card.dart';
import 'package:SeWo/ui/widgets/nav_bottom.dart';
import 'package:SeWo/ui/widgets/subtitle.dart';
import 'package:SeWo/ui/widgets/scroll_brush.dart';
import '../../common/my_colors.dart';
import '../../common/my_font_size.dart';
import '../widgets/scroll_brush.dart';

class Beranda extends StatefulWidget {
  const Beranda({Key? key}) : super(key: key);

  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  var _scrollController = ScrollBrush();

  List<bool> tabBarBadgeList = [
    false,
    false,
    false,
    true,
  ];

  List tabBarList = [
    "Beranda",
    "Zakat",
    "Pesanan",
    "Chat",
  ];

  int tabBarIndex = 0;

  int balanceBalance = 0;

  bool isBrush = false;

  bool isCollapseNavBottom = true;

  @override
  void initState() {
    _scrollController.addListener(() {
      if (_scrollController.position.pixels > 0) {
        isBrush = true;
        setState(() {});
      } else {
        isBrush = false;
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget tabBarItem(int index) {
      return Expanded(
        child: Stack(
          children: [
            Container(
                margin: EdgeInsets.all(5),
                height: double.infinity,
                decoration: BoxDecoration(
                    color: (tabBarIndex == index)
                        ? MyColors.white
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(100)),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      tabBarIndex = index;
                    });
                  },
                  child: Center(
                    child: Text(
                      tabBarList[index],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: (tabBarIndex == index)
                              ? MyColors.darkGreen
                              : MyColors.white,
                          fontSize: MyFontSize.medium1,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )),
            if (tabBarBadgeList[index])
              Align(
                alignment: Alignment.topRight,
                child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        color: MyColors.red,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(width: 1.5, color: MyColors.white)),
                    child: Center(
                      child: Container(
                        height: 4,
                        width: 4,
                        decoration: BoxDecoration(
                          color: MyColors.white,
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    )),
              )
          ],
        ),
      );
    }

    Widget tabBar() {
      return Container(
        margin: EdgeInsets.only(bottom: 15),
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
            color: MyColors.darkGreen,
            borderRadius: BorderRadius.circular(100)),
        child: Row(
          children: [
            tabBarItem(0),
            tabBarItem(1),
            tabBarItem(2),
            tabBarItem(3),
          ],
        ),
      );
    }

    Widget searchBox() {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Expanded(
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 50,
                  decoration: BoxDecoration(
                      color: MyColors.whiteL2,
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 1.5, color: MyColors.softGrey)),
                  child: Row(
                    children: [
                      Icon(Icons.search, color: MyColors.blackText, size: 40),
                      SizedBox(width: 10),
                      Expanded(
                          child: Text(
                        "Apa Yang Anda Cari",
                        style: TextStyle(
                            color: MyColors.grey, fontSize: MyFontSize.medium2),
                      ))
                    ],
                  )),
            ),
            SizedBox(width: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(1000),
              child: Image.network(
                "https://drive.google.com/file/d/1JV_ddMdfqo8RoZVTZm1z8utkdY0ereB_/view?usp=sharing",
                height: 55,
                width: 55,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      );
    }

    Widget balance() {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          height: 130,
          decoration: BoxDecoration(
              color: MyColors.blue, borderRadius: BorderRadius.circular(25)),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                    2,
                    (index) => Container(
                      margin: EdgeInsets.symmetric(horizontal: 13, vertical: 5),
                      height: 16,
                      width: 4,
                      decoration: BoxDecoration(
                          color: (balanceBalance == index)
                              ? MyColors.white
                              : MyColors.softGrey,
                          borderRadius: BorderRadius.circular(100)),
                    ),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 90,
                width: 150,
                decoration: BoxDecoration(
                    color: MyColors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Saldo",
                          style: TextStyle(
                            color: MyColors.blackText,
                            fontSize: MyFontSize.large1,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Saldo masih kosong",
                      style: TextStyle(
                        color: MyColors.blackText,
                        fontSize: MyFontSize.medium1,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Klik buat isi",
                      style: TextStyle(
                        color: MyColors.green,
                        fontSize: MyFontSize.medium1,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: 5),
              Expanded(
                child: CustomButtonIcon(
                  action: () {},
                  iconPath: "assets/images/payment.png",
                  text: "Bayar",
                  fontColor: MyColors.white,
                  height: 33,
                  width: 33,
                  isBold: true,
                ),
              ),
              Expanded(
                child: CustomButtonIcon(
                  action: () {},
                  iconPath: "assets/images/top-up.png",
                  text: "Top Up",
                  fontColor: MyColors.white,
                  height: 33,
                  width: 33,
                  isBold: true,
                ),
              ),
              Expanded(
                child: CustomButtonIcon(
                  action: () {},
                  iconPath: "assets/images/wallet.png",
                  text: "Riwayat",
                  fontColor: MyColors.white,
                  height: 33,
                  width: 33,
                  isBold: true,
                ),
              ),
              SizedBox(width: 10),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        backgroundColor: MyColors.green,
        title: tabBar(),
      ),
      body: Stack(
        children: [
          ListView(
            controller: _scrollController,
            children: [
              SizedBox(height: 20),
              searchBox(),
              SizedBox(height: 20),
              balance(),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: CardGoClub(),
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Subtitle(
                    iconPath: "assets/images/logo sewo 1.png",
                    iconText: "Daftar Coworking",
                    subtitle: "Jakarta",
                    caption: "Manakah Coworking yang ingin anda datangi?"),
              ),
              AspectRatio(
                aspectRatio: 1 / 1,
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                      5,
                      (index) => CardInfo(
                            imageUrl:
                                "https://instagram.com/p/CPhgQ2B7xp/?utm_medium+copy_link",
                            title: "CoworkInc",
                            caption:
                                "Jl. Kemang I No 7 Bangka, Kec Mampang, Jakarta Selatan",
                          )),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Subtitle(
                  iconPath: "assets/images/logo sewo 1.png",
                  iconText: "Daftar Coworking",
                  subtitle: "Surabaya",
                  caption: "Manakah Coworking yang ingin anda datangi?",
                  prefWidget: CustomCard(
                      onTap: () {},
                      padding: EdgeInsets.zero,
                      bgColor: MyColors.softGreen,
                      shadow: false,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Text("Lihat Semua",
                            style: TextStyle(
                                color: MyColors.darkGreen,
                                fontSize: MyFontSize.medium2,
                                fontWeight: FontWeight.bold)),
                      )),
                ),
              ),
              AspectRatio(
                aspectRatio: 1 / 1,
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                      5,
                      (index) => CardInfo(
                            imageUrl:
                                "https://instagram.com/p/CVmjp-oNskY/?utm_medium+copy_link",
                            title: "IndigoSpace Surabaya",
                            caption:
                                "Jl. Bendul Merisi Selatan Airdas 55, Surabaya",
                          )),
                ),
              ),
              SizedBox(height: 120),
            ],
          ),
          if (isBrush)
            Align(alignment: Alignment.topCenter, child: ScrollBrush()),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: GestureDetector(
                onPanUpdate: (details) {
                  if (details.delta.dy < 0) {
                    isCollapseNavBottom = false;
                    setState(() {});
                  }

                  if (details.delta.dy > 0) {
                    isCollapseNavBottom = true;
                    setState(() {});
                  }
                },
                child: NavBottom(
                  isCollapse: isCollapseNavBottom,
                )),
          ),
        ],
      ),
    );
  }
}

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Order',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
      body: Center(
        child: new Text('Tidak Ada Order',
            style: TextStyle(color: Colors.white, fontSize: 16)),
      ),
      backgroundColor: Colors.redAccent,
    );
  }
}

class Zakat extends StatefulWidget {
  const Zakat({Key? key}) : super(key: key);

  @override
  _ZakatState createState() => _ZakatState();
}

class _ZakatState extends State<Zakat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Zakat',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
      backgroundColor: Colors.lightBlueAccent,
    );
  }

  Widget Perhitungan() {
    return Scaffold(
      body: Column(children: <Widget>[
        Container(
          child: Text("Masukkan Penghasilan per Bulan",
              style: TextStyle(color: Colors.white, fontSize: 16)),
          height: 50,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(100)),
        ),
        Container(
          child: Text("Masukkan Pendapatan lain per Bulan",
              style: TextStyle(color: Colors.white, fontSize: 16)),
          height: 50,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(100)),
        ),
        Container(
          child: Text("Masukkan Utang/Cicilan per bulan",
              style: TextStyle(color: Colors.white, fontSize: 16)),
          height: 50,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(100)),
        ),
        Container(
          child: Text("Hitung",
              style: TextStyle(color: Colors.white, fontSize: 16)),
          height: 50,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
        ),
      ]),
    );
  }
}

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Chat',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
      body: Center(
        child: new Text('Tidak Ada Chat',
            style: TextStyle(color: Colors.white, fontSize: 16)),
      ),
      backgroundColor: Colors.greenAccent,
    );
  }

  Widget searchBox() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: 50,
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              width: 1.5,
              color: Colors.white30,
            )),
        child: Row(
          children: [
            Expanded(
                child: Text(
              "Apa Yang Anda Cari?",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ))
          ],
        ));
  }
}
