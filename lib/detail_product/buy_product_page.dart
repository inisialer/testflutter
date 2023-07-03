// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:testflutter/utils/text_helper.dart';

class DetailProductPage extends StatefulWidget {
  const DetailProductPage({Key? key}) : super(key: key);

  @override
  State<DetailProductPage> createState() => _DetailProductPageState();
}

class _DetailProductPageState extends State<DetailProductPage> {
  int jumlah = 1;

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
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Produk yang dibeli', style: TextHelper.black18w800),
                const SizedBox(
                  height: 16.0,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                        width: 68,
                        height: 68,
                        child: Image.asset('assets/product.png')),
                    const SizedBox(
                      width: 16.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(
                            width: 250,
                            child: Text(
                              'Golf Ball PXG XTREME | Bola Golf PXG XTREME | Dozen',
                              style: TextStyle(
                                color: Color(0xFF141414),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 4.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    '1000gr',
                                    style: TextStyle(
                                      color: Color(0xFF626262),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4.0,
                                  ),
                                  Text(
                                    'Rp699.000',
                                    style: TextStyle(
                                      color: Color(0xFF141414),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Container(
                                height: 32,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1,
                                        color: const Color(0xFFA3A3A3))),
                                child: Row(
                                  children: [
                                    IconButton(
                                        constraints: const BoxConstraints(),
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 0, horizontal: 12),
                                        onPressed: () {
                                          if (jumlah == 1) {
                                          } else {
                                            setState(() {
                                              jumlah--;
                                            });
                                          }
                                        },
                                        icon: const Icon(Icons.remove)),
                                    Text(
                                      '$jumlah',
                                      style: const TextStyle(
                                        color: Color(0xFF141414),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    IconButton(
                                        onPressed: () {
                                          setState(() {
                                            jumlah++;
                                          });
                                        },
                                        constraints: const BoxConstraints(),
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 0, horizontal: 12),
                                        icon: const Icon(Icons.add))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Divider(),
                const SizedBox(
                  height: 24.0,
                ),
                Text('Pengiriman', style: TextHelper.black18w800),
                const SizedBox(
                  height: 16.0,
                ),
                Container(
                  width: double.infinity,
                  height: 48,
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
                    children: const [
                      Text(
                        'Pilih Alamat',
                        style: TextStyle(
                          color: Color(0xFF2E398F),
                          fontSize: 14,
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Icon(Icons.arrow_right)
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Container(
                  width: double.infinity,
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            'Reguler',
                            style: TextStyle(
                              color: Color(0xFF141414),
                              fontSize: 14,
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Icon(Icons.arrow_right)
                        ],
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'JNE Reg (Rp 22.000)',
                                style: TextStyle(
                                  color: Color(0xFF141414),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                'Estimasi tiba 16-19 May',
                                style: TextStyle(
                                  color: Color(0xFF808080),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          const Icon(Icons.arrow_right)
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: (value) {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          fillColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.disabled)) {
                              return Colors.orange.withOpacity(.32);
                            }
                            return Colors.grey;
                          }),
                        ),
                        const Text(
                          'Asuransi Pengiriman Ekspedisi',
                          style: TextStyle(
                            color: Color(0xFF313131),
                            fontSize: 14,
                            fontFamily: 'Avenir',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
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
                const Divider(),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: double.infinity,
                  height: 48,
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
                      Row(
                        children: [
                          Image.asset('assets/discount.png'),
                          const SizedBox(
                            width: 12.0,
                          ),
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
                      const Icon(Icons.arrow_right)
                    ],
                  ),
                ),
              ],
            ),
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
                      children: const [
                        Text(
                          'Rp721.000',
                          style: TextStyle(
                            color: Color(0xFF141414),
                            fontSize: 20,
                            fontFamily: 'Avenir',
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(width: 8),
                        Icon(Icons.arrow_drop_down)
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
                  style: TextStyle(
                    color: Color(0xFFF8F8F8),
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
