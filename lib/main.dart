import "package:flutter/material.dart";

// main function that will run the app
void main() {
  runApp(
    const PhonePe(),
  );
}

// main class starts here
class PhonePe extends StatelessWidget {
  const PhonePe({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: phonePecard(),
        ),
      ),
    );
  }
}

class phonePecard extends StatefulWidget {
  const phonePecard({super.key});

  @override
  State<phonePecard> createState() => _phonePecardState();
}

class _phonePecardState extends State<phonePecard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
          child: ListView(
            children: [
              Card(
                color: Colors.white,
                elevation: 4.0,
                shadowColor: Color(0xffe6efff),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 16, bottom: 0, left: 0, right: 0),
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Align children to the left
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Text(
                          "Transfer Money",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Inter",
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: const BoxDecoration(
                                  color: Color(0xff5c269d),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                ),
                                child: const Icon(
                                  Icons.person_outline_outlined,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                              const SizedBox(height: 7),
                              const Text("To Mobile\nNumber",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  )),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: const BoxDecoration(
                                  color: Color(0xff5c269d),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                ),
                                child: const Icon(
                                  Icons.home_outlined,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                              const SizedBox(height: 7),
                              const Text(
                                "To Bank",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: const BoxDecoration(
                                  color: Color(0xff5c269d),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                ),
                                child: const Icon(
                                  Icons.qr_code_scanner_outlined,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                              const SizedBox(height: 7),
                              const Text(
                                "To UPI ID",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: const BoxDecoration(
                                  color: Color(0xff5c269d),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                ),
                                child: const Icon(
                                  Icons.more_horiz_outlined,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                              const SizedBox(height: 7),
                              const Text(
                                "More",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: Color(0xffe6efff),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                            )),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 11, bottom: 11, left: 19, right: 19),
                          child: Container(
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text.rich(
                                  TextSpan(
                                    text: "MY UPI ID:   ",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "9829xxxxx@XYZ",
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              // Add more cards or widgets here as needed
              BillPaymentCard(),
            ],
          ),
        ),
      ),
    );
  }
}

class BillPaymentCard extends StatelessWidget {
  const BillPaymentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 4.0,
      shadowColor: Color(0xffe6efff),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Recharge & Pay Bills",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.battery_charging_full,
                      size: 30,
                      color: Color.fromRGBO(87, 28, 149, 1),
                    ),
                    SizedBox(height: 7),
                    Text(
                      "Mobile\nRecharge",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.all_out,
                      size: 30,
                      color: Color.fromRGBO(87, 28, 149, 1),
                    ),
                    SizedBox(height: 7),
                    Text(
                      "DTH",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.lightbulb_outline,
                      size: 30,
                      color: Color.fromRGBO(87, 28, 149, 1),
                    ),
                    SizedBox(height: 7),
                    Text(
                      "Electricity",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.addchart_outlined,
                      size: 30,
                      color: Color.fromRGBO(87, 28, 149, 1),
                    ),
                    SizedBox(height: 7),
                    Text(
                      "Credit card\nBill Payment",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
