import 'package:classapp/AppTemplates/Carbon/CUSTOMIZED/AppBars.dart';
import 'package:flutter/material.dart';

class CarbonAddMoney extends StatelessWidget {
  const CarbonAddMoney({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        surfaceTintColor: Colors.white,
        child: Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(241, 193, 221, 255),
              borderRadius: BorderRadius.circular(10)),
          child: const Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.sunny,
                color: Color.fromARGB(183, 0, 95, 211),
                size: 24,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Upgrade your account for higher transaction limits",
                style: TextStyle(fontSize: 13),
              )
            ],
          ),
        ),
      ),
      appBar: CarbonAppBars(title: "Fund account"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                height: 75,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(228, 211, 231, 255),
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    const Column(
                      children: [
                        SizedBox(
                          height: 6,
                        ),
                        Icon(
                          Icons.sunny,
                          color: Color.fromARGB(183, 0, 95, 211),
                          size: 24,
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const SizedBox(
                      width: 290,
                      height: 70,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "You earn monthly interest by storing money in your account.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            "Tap here to learn more",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(183, 0, 95, 211),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 6,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.grey.shade500,
                          radius: 10,
                          child: Icon(
                            Icons.close,
                            color: Colors.grey.shade800,
                            size: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const AccountCard(),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  const Row(
                    children: [
                      Text("Other Options",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700)),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 378,
                        child: Card(
                          elevation: 4,
                          surfaceTintColor: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 2.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                  CircleAvatar(
                                    backgroundColor:
                                        const Color.fromARGB(255, 172, 202, 255)
                                            .withOpacity(0.5),
                                    radius: 19,
                                    child: const Icon(
                                      Icons.tag,
                                      color: Color.fromARGB(183, 0, 70, 156),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  const Text("USSD",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700))
                                ]),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "Transfer using your other bank's USSD code",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 61, 61, 61)),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            elevation: 0,
                                            shape:
                                                const RoundedRectangleBorder(),
                                            surfaceTintColor: Colors.white),
                                        child: const Icon(
                                          Icons.arrow_forward_ios_outlined,
                                          size: 15,
                                          color: Colors.black,
                                        ),
                                      )
                                    ]),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 378,
                        child: Card(
                          elevation: 4,
                          surfaceTintColor: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                  CircleAvatar(
                                    backgroundColor:
                                        const Color.fromARGB(255, 172, 202, 255)
                                            .withOpacity(0.5),
                                    radius: 19,
                                    child: const Icon(
                                      Icons.credit_card,
                                      color: Color.fromARGB(183, 0, 70, 156),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  const Text("Debit Card",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700))
                                ]),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "Fund your wallet with your bank",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 61, 61, 61)),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            elevation: 0,
                                            shape:
                                                const RoundedRectangleBorder(),
                                            surfaceTintColor: Colors.white),
                                        child: const Icon(
                                          Icons.arrow_forward_ios_outlined,
                                          size: 15,
                                          color: Colors.black,
                                        ),
                                      )
                                    ]),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AccountCard extends StatelessWidget {
  const AccountCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3), // Shadow color
            spreadRadius: 2, // Spread radius
            blurRadius: 7, // Blur radius
            offset: const Offset(0, 2), // Offset
          ),
        ],
      ),
      child: Card(
        elevation: 3,
        surfaceTintColor: Colors.white,
        shadowColor: Colors.blueAccent.withOpacity(0.5),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                          backgroundColor:
                              const Color.fromARGB(255, 172, 202, 255)
                                  .withOpacity(0.5),
                          radius: 19,
                          child: const Icon(
                            Icons.account_tree_outlined,
                            color: Color.fromARGB(183, 0, 70, 156),
                            size: 22,
                          )),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        "Bank Transfer",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(199, 175, 255, 178),
                        borderRadius: BorderRadius.circular(3)),
                    child: const Text(
                      "RECOMMENDED",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 118, 4), fontSize: 12),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              RichText(
                  text: const TextSpan(
                style: TextStyle(
                  // letterSpacing: 0.2,
                  fontSize: 15,
                  color: Color.fromARGB(255, 36, 36, 36),
                ),
                children: <TextSpan>[
                  TextSpan(
                      text:
                          'To add money to your Carbon account, make a bank transfer of up to '),
                  TextSpan(
                    text: '₦0',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black), // Change the color as needed
                  ),
                  TextSpan(
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      text: ' to the account below. Funds reflect instantly.'),
                ],
              )),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: const Color.fromARGB(255, 67, 105, 166),
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor:
                                  const Color.fromARGB(255, 172, 202, 255)
                                      .withOpacity(0.5),
                              radius: 19,
                              child: const Icon(
                                Icons.account_balance,
                                color: Color.fromARGB(183, 0, 70, 156),
                                size: 20,
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "BANK NAME",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey.shade600),
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  "Carbon",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.share,
                          color: Color.fromARGB(255, 0, 70, 156),
                          size: 25,
                        )
                      ],
                    ),
                    const Divider(
                      height: 30,
                      color: Color.fromARGB(255, 67, 105, 166),
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor:
                              const Color.fromARGB(255, 172, 202, 255)
                                  .withOpacity(0.5),
                          radius: 19,
                          child: const Icon(
                            Icons.tag_rounded,
                            color: Color.fromARGB(183, 0, 70, 156),
                            size: 24,
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "ACCOUNT NUMBER",
                              style: TextStyle(
                                  fontSize: 10, color: Colors.grey.shade600),
                            ),
                            const SizedBox(height: 5),
                            const Row(
                              children: [
                                Text(
                                  "4004383940385",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromARGB(183, 0, 72, 255),
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.copy,
                                  size: 20,
                                  color: Color.fromARGB(183, 0, 70, 156),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Divider(
                      height: 30,
                      color: Color.fromARGB(255, 67, 105, 166),
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor:
                              const Color.fromARGB(255, 172, 202, 255)
                                  .withOpacity(0.5),
                          radius: 19,
                          child: const Icon(
                            Icons.account_circle,
                            color: Color.fromARGB(183, 0, 70, 156),
                            size: 24,
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "BENEFICIARY",
                              style: TextStyle(
                                  fontSize: 10, color: Colors.grey.shade600),
                            ),
                            const SizedBox(height: 5),
                            const Row(
                              children: [
                                Text(
                                  "Jonathan Smith Reyes",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
