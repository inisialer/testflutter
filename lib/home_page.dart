// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:testflutter/components/main_dropdown.dart';
import 'package:testflutter/detail_product/buy_product_page.dart';
import 'package:testflutter/utils/text_helper.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List varian = ['Varian 1', 'Varian 2', 'Varian 3', 'Varian 4'];
  static List dropdown = [
    {"id": 1, "name": 'Change Password'},
    {"id": 2, "name": 'Reporting'},
    {"id": 3, "name": 'Logout'},
  ];
  int indexVarian = 0;
  int maxLines = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      width: 414,
                      height: 414,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/image.png'),
                              fit: BoxFit.cover)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.share,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 16.0,
                              ),
                              Icon(
                                Icons.shopping_bag_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 16.0,
                              ),
                              Icon(
                                Icons.menu,
                                color: Colors.white,
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Rp 699.000', style: TextHelper.black20w800),
                          const Icon(Icons.favorite_outline)
                        ],
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      SizedBox(
                        width: 366,
                        child: Text(
                          'Golf Ball PXG XTREME | Bola Golf PXG XTREME | Dozen',
                          style: TextHelper.black16w500,
                        ),
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            const Text(
                              'Terjual 100+',
                              style: TextStyle(
                                color: Color(0xFF626262),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              width: 16.0,
                            ),
                            Row(
                              children: [
                                _cardDetail(),
                                const SizedBox(
                                  width: 16.0,
                                ),
                                _cardDetail(
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                            text: 'Foto Pembeli ',
                                            style: TextHelper.grey14w500),
                                        const TextSpan(
                                          text: '(54)',
                                          style: TextStyle(
                                            color: Color(0xFF808080),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 16.0,
                                ),
                                _cardDetail(
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                            text: 'Pertanyaan ',
                                            style: TextHelper.grey14w500),
                                        const TextSpan(
                                          text: '(12)',
                                          style: TextStyle(
                                            color: Color(0xFF808080),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 24.0,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 24.0,
                      ),
                      Text.rich(TextSpan(
                        children: [
                          TextSpan(
                              text: 'Pilih Varian: ',
                              style: TextHelper.black18w800),
                          TextSpan(
                              text: ' 4 Pilihan', style: TextHelper.grey16w500),
                        ],
                      )),
                      const SizedBox(
                        height: 16.0,
                      ),
                      SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                              children: List.generate(varian.length, (index) {
                            return GestureDetector(
                              onTap: () => setState(() {
                                indexVarian = index;
                              }),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 16),
                                child: _cardDetail(
                                  height: 38,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 8),
                                  decoration: indexVarian == index
                                      ? ShapeDecoration(
                                          color: const Color(0xFFEFF0FA),
                                          shape: RoundedRectangleBorder(
                                            side: const BorderSide(
                                                width: 0.50,
                                                color: Color(0xFF2E398F)),
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                        )
                                      : ShapeDecoration(
                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            side: const BorderSide(
                                                width: 0.50,
                                                color: Color(0xFFA3A3A3)),
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                        ),
                                  child: Text(
                                    '${varian[index]}',
                                    style: indexVarian == index
                                        ? const TextStyle(
                                            color: Color(0xFF2E398F),
                                            fontSize: 16,
                                            fontFamily: 'Avenir',
                                            fontWeight: FontWeight.w900,
                                          )
                                        : const TextStyle(
                                            color: Color(0xFF313131),
                                            fontSize: 16,
                                            fontFamily: 'Avenir',
                                            fontWeight: FontWeight.w500,
                                          ),
                                  ),
                                ),
                              ),
                            );
                          }))),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 24.0,
                      ),
                      Text('Detail Produk', style: TextHelper.black18w800),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Text('Kondisi',
                                style: TextHelper.greyOld16w500),
                          ),
                          Text('Baru', style: TextHelper.black16w500),
                        ],
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Text('Min. Pemesanan',
                                style: TextHelper.greyOld16w500),
                          ),
                          Text('1 Buah', style: TextHelper.black16w500),
                        ],
                      ),
                      const SizedBox(
                        height: 32.0,
                      ),
                      Text('Deskripsi Produk', style: TextHelper.black18w800),
                      const SizedBox(
                        height: 16.0,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Golf Ball PXG XTREME | Bola Golf PXG XTREME | Box 1 BOX = 4 sleeve (12pcs bola) Available Color : - White NOTE - PENTING! Harap perhatikan',
                          style: TextHelper.black16w500,
                          maxLines: maxLines,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      GestureDetector(
                        onTap: () => setState(() {
                          maxLines = 999;
                        }),
                        child: const Text(
                          'Baca Selengkapnya',
                          style: TextStyle(
                            color: Color(0xFF2E398F),
                            fontSize: 16,
                            fontFamily: 'Avenir',
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 24.0,
                      ),
                      Text('Produk Lainnya', style: TextHelper.black18w800),
                      const SizedBox(
                        height: 16.0,
                      ),
                      SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                              children: List.generate(varian.length, (index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: Container(
                                width: 130,
                                height: 252,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4)),
                                  shadows: const [
                                    BoxShadow(
                                      color: Color(0x14000000),
                                      blurRadius: 70,
                                      offset: Offset(0, 32),
                                      spreadRadius: 0,
                                    ),
                                    BoxShadow(
                                      color: Color(0x0A000000),
                                      blurRadius: 16,
                                      offset: Offset(0, -8),
                                      spreadRadius: 0,
                                    )
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 130,
                                      height: 130,
                                      decoration: const ShapeDecoration(
                                        image: DecorationImage(
                                            image:
                                                AssetImage('assets/image.png'),
                                            fit: BoxFit.cover),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(4),
                                            topRight: Radius.circular(4),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 16.0,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(
                                            width: 106,
                                            child: Text(
                                              'All-New PXG 0311 GEN6 Iron Special GEN6 Iron Special',
                                              style: TextStyle(
                                                color: Color(0xFF141414),
                                                fontSize: 11,
                                                fontFamily: 'Avenir',
                                                fontWeight: FontWeight.w500,
                                              ),
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 6.0,
                                          ),
                                          SizedBox(
                                            width: 106,
                                            child: Text('Rp 8.000.000',
                                                style: TextHelper.black12w900),
                                          ),
                                          const SizedBox(
                                            height: 8.0,
                                          ),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                                size: 12,
                                              ),
                                              const SizedBox(
                                                width: 4.0,
                                              ),
                                              Text('4.9',
                                                  style: TextHelper.grey11w400),
                                              const SizedBox(
                                                width: 6.0,
                                              ),
                                              const Text(
                                                'Terjual 100+',
                                                style: TextStyle(
                                                  color: Color(0xFF626262),
                                                  fontSize: 11,
                                                  fontFamily: 'Avenir',
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }))),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 24.0,
                      ),
                      Text('Ulasan Pembeli', style: TextHelper.black18w800),
                      const SizedBox(
                        height: 12.0,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 20,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '4.9/5.0',
                                  style: TextStyle(
                                    color: Color(0xFF313131),
                                    fontSize: 16,
                                    fontFamily: 'Avenir',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                TextSpan(
                                  text: ' ',
                                  style: TextStyle(
                                    color: Color(0xFF626262),
                                    fontSize: 16,
                                    fontFamily: 'Avenir',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                TextSpan(
                                  text: '(89 Ulasan)',
                                  style: TextStyle(
                                    color: Color(0xFF808080),
                                    fontSize: 16,
                                    fontFamily: 'Avenir',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 24.0,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 12.0,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            height: 32,
                            child: MainDropdown(
                              iconColor: const Color(0xFFD6D6D6),
                              title: "Rating",
                              buttonPadding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              boxDecoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    width: 0.50,
                                    color: const Color(0xFFA3A3A3)),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              items: dropdown
                                  .map((item) =>
                                      DropdownMenuItem<Map<String, dynamic>>(
                                        value: item,
                                        child: Text(
                                          item['name'] ?? '',
                                          style: const TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ))
                                  .toList(),
                            ),
                          ),
                          const SizedBox(
                            width: 8.0,
                          ),
                          SizedBox(
                            width: 110,
                            height: 32,
                            child: MainDropdown(
                              iconColor: const Color(0xFFD6D6D6),
                              title: "Urutkan",
                              buttonPadding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              boxDecoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    width: 0.50,
                                    color: const Color(0xFFA3A3A3)),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              items: dropdown
                                  .map((item) =>
                                      DropdownMenuItem<Map<String, dynamic>>(
                                        value: item,
                                        child: Text(
                                          item['name'] ?? '',
                                          style: const TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ))
                                  .toList(),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 12.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 32,
                                height: 32,
                                decoration: const ShapeDecoration(
                                  color: Color(0xFFD9D9D9),
                                  shape: OvalBorder(),
                                ),
                              ),
                              const SizedBox(
                                width: 8.0,
                              ),
                              const Text(
                                'John Doe',
                                style: TextStyle(
                                  color: Color(0xFF141414),
                                  fontSize: 14,
                                  fontFamily: 'Avenir',
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Row(
                            children: [
                              RatingBarIndicator(
                                rating: 5,
                                itemBuilder: (context, index) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                itemCount: 5,
                                itemSize: 16.0,
                                unratedColor: Colors.amber.withAlpha(50),
                                direction: Axis.horizontal,
                              ),
                              const SizedBox(
                                width: 8.0,
                              ),
                              const Text(
                                '3 hari lalu',
                                style: TextStyle(
                                  color: Color(0xFF626262),
                                  fontSize: 12,
                                  fontFamily: 'Avenir',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          const SizedBox(
                            width: double.infinity,
                            child: Text(
                              'Rekom seller .. semua sesuai dgn ekspetasi dr pengiriman smpai barangnya semua ok .. Tinggal mainkan aja bola dilapangan bru tau rasanya .. 👍',
                              style: TextStyle(
                                color: Color(0xFF626262),
                                fontSize: 16,
                                fontFamily: 'Avenir',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          const Divider(),
                          const SizedBox(
                            height: 24.0,
                          ),
                          const Text(
                            'Pertanyaan Costumer',
                            style: TextStyle(
                              color: Color(0xFF141414),
                              fontSize: 18,
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 110,
                                height: 32,
                                child: MainDropdown(
                                  iconColor: const Color(0xFFD6D6D6),
                                  title: "Terbaru",
                                  buttonPadding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  boxDecoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        width: 0.50,
                                        color: const Color(0xFFA3A3A3)),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  items: dropdown
                                      .map((item) => DropdownMenuItem<
                                              Map<String, dynamic>>(
                                            value: item,
                                            child: Text(
                                              item['name'] ?? '',
                                              style: const TextStyle(
                                                fontSize: 12,
                                                color: Colors.black,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ))
                                      .toList(),
                                ),
                              ),
                              _cardDetail(
                                height: 32,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 6.50),
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 0.50, color: Color(0xFF2E398F)),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                                child: const Text(
                                  '+ Pertanyaan',
                                  style: TextStyle(
                                    color: Color(0xFF2E398F),
                                    fontSize: 14,
                                    fontFamily: 'Avenir',
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 32,
                                        height: 32,
                                        decoration: const ShapeDecoration(
                                          color: Color(0xFFD9D9D9),
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8.0,
                                      ),
                                      const Text(
                                        'John Doe',
                                        style: TextStyle(
                                          color: Color(0xFF141414),
                                          fontSize: 14,
                                          fontFamily: 'Avenir',
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Text(
                                    '1 hari lalu',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFF626262),
                                      fontSize: 14,
                                      fontFamily: 'Avenir',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                    left: 8, top: 6, bottom: 6),
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                decoration: const BoxDecoration(
                                    border: Border(
                                  left: BorderSide(
                                    width: 1.50,
                                    // color: Colors.red,
                                    color: Color(0xFFF8F8F8),
                                  ),
                                )),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 32,
                                          height: 32,
                                          decoration: const ShapeDecoration(
                                            color: Color(0xFFD9D9D9),
                                            shape: OvalBorder(),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 8.0,
                                        ),
                                        const Text(
                                          'Admin AsiaGolf',
                                          style: TextStyle(
                                            color: Color(0xFF2E398F),
                                            fontSize: 14,
                                            fontFamily: 'Avenir',
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 8.0,
                                    ),
                                    const SizedBox(
                                      width: double.infinity,
                                      child: Text(
                                        'Siapp boss',
                                        style: TextStyle(
                                          color: Color(0xFF626262),
                                          fontSize: 16,
                                          fontFamily: 'Avenir',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8.0,
                                    ),
                                    const SizedBox(
                                      width: 354,
                                      child: Text(
                                        '2 jawaban lainnya',
                                        style: TextStyle(
                                          color: Color(0xFF313131),
                                          fontSize: 16,
                                          fontFamily: 'Avenir',
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                width: 71,
                height: 43,
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 0.75, color: Color(0xFF369B43)),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: Image.asset('assets/chat.png')),
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DetailProductPage())),
              child: Container(
                width: 140,
                height: 43,
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 0.75, color: Color(0xFF2E398F)),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      'Beli Langsung',
                      style: TextStyle(
                        color: Color(0xFF2E398F),
                        fontSize: 14,
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 129,
              height: 43,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: const Color(0xFF2E398F),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    '+ Keranjang',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Avenir',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _cardDetail(
      {Widget? child,
      double? height,
      EdgeInsetsGeometry? padding,
      Decoration? decoration}) {
    return Container(
      height: height ?? 27,
      padding:
          padding ?? const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      clipBehavior: Clip.antiAlias,
      decoration: decoration ??
          ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 0.50, color: Color(0xFFA3A3A3)),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
      child: child ??
          Row(
            children: [
              const Icon(
                Icons.star,
                color: Colors.amber,
                size: 16,
              ),
              const SizedBox(
                width: 10.0,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: '4.9 ', style: TextHelper.grey14w500),
                    const TextSpan(
                        text: '(89)',
                        style: TextStyle(
                          color: Color(0xFF808080),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        )),
                  ],
                ),
              ),
            ],
          ),
    );
  }
}
