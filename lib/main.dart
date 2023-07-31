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
              OptionCard(),
              sponsoredLinks(),
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

class OptionCard extends StatelessWidget {
  const OptionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                color: Color(0xff4e84da),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 20.0, bottom: 20, left: 10, right: 10),
                  child: Column(
                    children: [
                      Icon(
                        Icons.analytics_outlined,
                        color: Colors.white,
                        size: 25,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "PhonePe Wallet",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                color: Color(0xff4e84da),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 20.0, bottom: 20, left: 10, right: 10),
                  child: Column(
                    children: [
                      Icon(
                        Icons.account_box_outlined,
                        color: Colors.white,
                        size: 25,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Rewards",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                color: Color(0xff4e84da),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 20.0, bottom: 20, left: 10, right: 10),
                  child: Column(
                    children: [
                      Icon(
                        Icons.accessibility_new,
                        color: Colors.white,
                        size: 25,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Invite Now",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class sponsoredLinks extends StatelessWidget {
  const sponsoredLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5, bottom: 5),
      width: double.infinity,
      child: const Card(
        elevation: 4.0,
        shadowColor: Color(0xffe6efff),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            top: 16,
            bottom: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Text(
                  "Sponsored Links",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
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
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15), // Top left corner
                          topRight: Radius.circular(15), // Top right corner
                          bottomLeft: Radius.circular(15), // Bottom left corner
                          bottomRight:
                              Radius.circular(15), // Bottom right corner
                        ),
                        child: Image(
                          image: NetworkImage(
                              "https://play-lh.googleusercontent.com/G9tUm4oC57E6QQ9ZRbdmAjM1832BdRPw9B8lRweKn2QuPfdMM4LCCz68J22k3w_Vb_w=w240-h480-rw"),
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 7),
                      Text("Buddy Loan",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15), // Top left corner
                          topRight: Radius.circular(15), // Top right corner
                          bottomLeft: Radius.circular(15), // Bottom left corner
                          bottomRight:
                              Radius.circular(15), // Bottom right corner
                        ),
                        child: Image(
                          image: NetworkImage(
                              "https://devdiscourse.blob.core.windows.net/devnews/05_01_2023_14_57_06_7081964.jpg"),
                          width: 50,
                          height: 50,
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(height: 7),
                      Text("Kotak 811",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15), // Top left corner
                          topRight: Radius.circular(15), // Top right corner
                          bottomLeft: Radius.circular(15), // Bottom left corner
                          bottomRight:
                              Radius.circular(15), // Bottom right corner
                        ),
                        child: Image(
                          image: NetworkImage(
                              "https://play-lh.googleusercontent.com/Yg0lq5gOr7jHb6ODrMol40LDcrg_bRadfF9E8IW7qIVXLnnUKC-Ooesp8FZJKNZ4Fw"),
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 7),
                      Text("Rummy Circle",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15), // Top left corner
                          topRight: Radius.circular(15), // Top right corner
                          bottomLeft: Radius.circular(15), // Bottom left corner
                          bottomRight:
                              Radius.circular(15), // Bottom right corner
                        ),
                        child: Image(
                          image: NetworkImage(
                              "https://play-lh.googleusercontent.com/fQnF0Y8Yzx_g_2lH0i5z9LugLUyyqp9jRqGQSrVJenYkx6dJVh90cK6oUpsIDGrWNA=w200"),
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 7),
                      Text("Rummy Card",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          )),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
