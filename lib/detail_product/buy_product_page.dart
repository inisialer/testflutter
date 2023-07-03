// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class DetailProductPage extends StatefulWidget {
  const DetailProductPage({Key? key}) : super(key: key);

  @override
  State<DetailProductPage> createState() => _DetailProductPageState();
}

class _DetailProductPageState extends State<DetailProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Beli Produk",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
        // actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          // margin: const EdgeInsets.all(10),
          height: 896,
          // padding: const EdgeInsets.only(right: 36),
          decoration: const BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              // Positioned(
              //   left: 0,
              //   top: 0,
              //   child: SizedBox(
              //     width: 414,
              //     height: 66,
              //     child: Stack(
              //       children: const [
              //         // Positioned(
              //         //   // left: 24,
              //         //   top: 21,
              //         //   child: Container(
              //         //     child: Row(
              //         //       mainAxisSize: MainAxisSize.min,
              //         //       mainAxisAlignment: MainAxisAlignment.start,
              //         //       crossAxisAlignment: CrossAxisAlignment.center,
              //         //       children: [
              //         //         Container(
              //         //           width: 24,
              //         //           height: 24,
              //         //           clipBehavior: Clip.antiAlias,
              //         //           decoration: const BoxDecoration(),
              //         //           child: Stack(children: const []),
              //         //         ),
              //         //         const SizedBox(width: 24),
              //         //         const Text(
              //         //           'Beli Produk',
              //         //           style: TextStyle(
              //         //             color: Color(0xFF141414),
              //         //             fontSize: 18,
              //         //             fontFamily: 'Avenir',
              //         //             fontWeight: FontWeight.w800,
              //         //           ),
              //         //         ),
              //         //       ],
              //         //     ),
              //         //   ),
              //         // ),
              //       ],
              //     ),
              //   ),
              // ),
              const Positioned(
                left: 24,
                top: 10,
                child: Text(
                  'Produk yang dibeli',
                  style: TextStyle(
                    color: Color(0xFF141414),
                    fontSize: 18,
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              const Positioned(
                left: 24,
                top: 180,
                child: Text(
                  'Pengiriman',
                  style: TextStyle(
                    color: Color(0xFF141414),
                    fontSize: 18,
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Positioned(
                left: 24,
                right: 24,
                top: 246,
                child: Container(
                    // width: 366,

                    // decoration: const ShapeDecoration(
                    //   shape: RoundedRectangleBorder(
                    //     side: BorderSide(
                    //       width: 1,
                    //       strokeAlign: BorderSide.strokeAlignCenter,
                    //       color: Color(0xFFF8F8F8),
                    //     ),
                    //   ),
                    // ),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/product.png')))
                    // child: ,
                    ),
              ),
              Positioned(
                left: 24,
                right: 24,
                top: 400,
                child: Container(
                  width: 400,
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFF8F8F8),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 24,
                right: 24,
                top: 460,
                child: Container(
                  width: 366,
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFF8F8F8),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 24,
                right: 24,
                top: 220,
                child: Container(
                  width: 366,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 0.50, color: Color(0xFFA3A3A3)),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Pilih Alamat',
                        style: TextStyle(
                          color: Color(0xFF2E398F),
                          fontSize: 14,
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const SizedBox(width: 188),
                      Image.asset(
                        'assets/dropdown.png',
                        width: 20,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 24,
                right: 24,
                top: 500,
                child: Container(
                  width: 366,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 0.50, color: Color(0xFFA3A3A3)),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: Row(
                    // mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/discount.png',
                              width: 20,
                            ),
                            const SizedBox(width: 12),
                            const Text(
                              'Pakai Promo',
                              style: TextStyle(
                                color: Color(0xFF141414),
                                fontSize: 14,
                                fontFamily: 'Avenir',
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // const Icon(Icons.keyboard_arrow_right)
                      // const SizedBox(width: 192),
                      Image.asset(
                        'assets/dropdown.png',
                        width: 20,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 24,
                right: 24,
                top: 280,
                child: Container(
                  width: 366,
                  height: 106,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 0.50, color: Color(0xFFA3A3A3)),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Row(
                          // mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'Reguler',
                              style: TextStyle(
                                color: Color(0xFF141414),
                                fontSize: 14,
                                fontFamily: 'Avenir',
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            // const SizedBox(width: 259),
                            Image.asset(
                              'assets/dropdown.png',
                              width: 20,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        child: Row(
                          // mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'JNE Reg (Rp 22.000)',
                                    style: TextStyle(
                                      color: Color(0xFF141414),
                                      fontSize: 14,
                                      fontFamily: 'Avenir',
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    'Estimasi tiba 16-19 May',
                                    style: TextStyle(
                                      color: Color(0xFF808080),
                                      fontSize: 14,
                                      fontFamily: 'Avenir',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // const SizedBox(width: 160),
                            Image.asset(
                              'assets/dropdown.png',
                              width: 20,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 24,
                right: 24,
                top: 410,
                child: Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                    checkColor: Colors.white,
                                    activeColor: Colors.grey,
                                    value: true,
                                    onChanged: (e) {}),
                                const Text(
                                  'Asuransi Pengiriman Ekspedisi',
                                  style: TextStyle(
                                    color: Color(0xFF313131),
                                    fontSize: 14,
                                    fontFamily: 'Avenir',
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                            // // const SizedBox(width: 8),
                            // const Text(
                            //   'Asuransi Pengiriman Ekspedisi',
                            //   style: TextStyle(
                            //     color: Color(0xFF313131),
                            //     fontSize: 14,
                            //     fontFamily: 'Avenir',
                            //     fontWeight: FontWeight.w500,
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                      // const SizedBox(width: 20),
                      const Text(
                        'Rp0',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF313131),
                          fontSize: 14,
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Positioned(
              //   left: 24,
              //   right: 24,
              //   top: 500,
              //   child: SizedBox(
              //     // width: 366,
              //     child: Row(
              //       mainAxisSize: MainAxisSize.min,
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       crossAxisAlignment: CrossAxisAlignment.center,
              //       children: [
              //         Container(
              //           child: Column(
              //             mainAxisSize: MainAxisSize.min,
              //             mainAxisAlignment: MainAxisAlignment.start,
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               const Text(
              //                 'Total Bayar',
              //                 style: TextStyle(
              //                   color: Color(0xFF808080),
              //                   fontSize: 14,
              //                   fontFamily: 'Avenir',
              //                   fontWeight: FontWeight.w500,
              //                 ),
              //               ),
              //               const SizedBox(height: 4),
              //               Container(
              //                 child: Row(
              //                   mainAxisSize: MainAxisSize.min,
              //                   mainAxisAlignment: MainAxisAlignment.start,
              //                   crossAxisAlignment: CrossAxisAlignment.center,
              //                   children: [
              //                     const Text(
              //                       'Rp721.000',
              //                       style: TextStyle(
              //                         color: Color(0xFF141414),
              //                         fontSize: 20,
              //                         fontFamily: 'Avenir',
              //                         fontWeight: FontWeight.w800,
              //                       ),
              //                     ),
              //                     const SizedBox(width: 8),
              //                     Container(
              //                       width: 24,
              //                       height: 24,
              //                       clipBehavior: Clip.antiAlias,
              //                       decoration: const BoxDecoration(),
              //                       child: Stack(children: const []),
              //                     ),
              //                   ],
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
              //         // const SizedBox(width: 52),
              //         // ElevatedButton(
              //         //   onPressed: () {},
              //         //   child: const Text(
              //         //     'Bayar',
              //         //     textAlign: TextAlign.right,
              //         //     style: TextStyle(
              //         //       color: Color(0xFFF8F8F8),
              //         //       fontSize: 16,
              //         //       fontFamily: 'Avenir',
              //         //       fontWeight: FontWeight.w800,
              //         //       height: 24,
              //         //     ),
              //         //   ),
              //         // )
              //         // Container(
              //         //   padding: const EdgeInsets.symmetric(
              //         //       horizontal: 24, vertical: 14),
              //         //   decoration: ShapeDecoration(
              //         //     color: const Color(0xFF2E398F),
              //         //     shape: RoundedRectangleBorder(
              //         //         borderRadius: BorderRadius.circular(8)),
              //         //   ),
              //         //   child: Row(
              //         //     mainAxisSize: MainAxisSize.min,
              //         //     mainAxisAlignment: MainAxisAlignment.start,
              //         //     crossAxisAlignment: CrossAxisAlignment.center,
              //         //     children: const [
              //         //       Text(
              //         //         'Bayar',
              //         //         textAlign: TextAlign.right,
              //         //         style: TextStyle(
              //         //           color: Color(0xFFF8F8F8),
              //         //           fontSize: 16,
              //         //           fontFamily: 'Avenir',
              //         //           fontWeight: FontWeight.w800,
              //         //           height: 24,
              //         //         ),
              //         //       ),
              //         //     ],
              //         //   ),
              //         // ),
              //       ],
              //     ),
              //   ),
              // ),

              Positioned(
                left: 24,
                // right: 24,
                top: 59,
                child: Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 68,
                        height: 68,
                        decoration: ShapeDecoration(
                          image: const DecorationImage(
                            image: AssetImage("assets/product.png"),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              width: 0.50,
                              strokeAlign: BorderSide.strokeAlignOutside,
                              color: Color(0xFFA3A3A3),
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Container(
                        // padding: const EdgeInsets.only(right: 12),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 282,
                              child: Text(
                                'Golf Ball PXG XTREME | Bola Golf PXG XTREME | Dozen',
                                style: TextStyle(
                                  color: Color(0xFF141414),
                                  fontSize: 14,
                                  fontFamily: 'Avenir',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(height: 4),
                            Container(
                              child: Row(
                                // mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          '1000gr',
                                          style: TextStyle(
                                            color: Color(0xFF626262),
                                            fontSize: 14,
                                            fontFamily: 'Avenir',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(height: 4),
                                        Text(
                                          'Rp699.000',
                                          style: TextStyle(
                                            color: Color(0xFF141414),
                                            fontSize: 16,
                                            fontFamily: 'Avenir',
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 60),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 96,
                                        height: 32,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 0,
                                              top: 0,
                                              child: Container(
                                                width: 96,
                                                height: 32,
                                                decoration: ShapeDecoration(
                                                  color: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                    side: const BorderSide(
                                                        width: 0.50,
                                                        color:
                                                            Color(0xFFA3A3A3)),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const Positioned(
                                              left: 44,
                                              top: 7,
                                              child: Text(
                                                '1',
                                                style: TextStyle(
                                                  color: Color(0xFF141414),
                                                  fontSize: 14,
                                                  fontFamily: 'Avenir',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 70,
                                              top: 5,
                                              child: Container(
                                                width: 20,
                                                height: 20,
                                                clipBehavior: Clip.antiAlias,
                                                decoration:
                                                    const BoxDecoration(),
                                                child: const Icon(
                                                  Icons.add,
                                                  size: 20,
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 6,
                                              top: 6,
                                              child: Container(
                                                width: 20,
                                                height: 20,
                                                clipBehavior: Clip.antiAlias,
                                                decoration:
                                                    const BoxDecoration(),
                                                child: const Icon(
                                                  Icons.remove,
                                                  size: 20,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 24,
                right: 24,
                top: 160,
                child: Container(
                  width: 366,
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFF8F8F8),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        margin: const EdgeInsets.all(20),
        height: 70,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Total Bayar',
                    style: TextStyle(
                      color: Color(0xFF808080),
                      fontSize: 14,
                      fontFamily: 'Avenir',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Rp721.000',
                          style: TextStyle(
                            color: Color(0xFF141414),
                            fontSize: 20,
                            fontFamily: 'Avenir',
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          width: 24,
                          height: 24,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(),
                          child: Stack(children: const []),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 45,
              width: 91,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    backgroundColor: const Color(0xFF2E398F)),
                onPressed: () {},
                child: const Text(
                  'Bayar',
                  // textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFFF8F8F8),
                    // fontSize: 16,
                    // fontFamily: 'Avenir',
                    // fontWeight: FontWeight.w800,
                    // height: 24,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
