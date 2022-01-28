import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vorem/Widget/FontStyling.dart';
import 'package:vorem/Widget/TransactionComponent.dart';

class TransactionPage extends StatefulWidget {
  @override
  _TransactionPageState createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraints) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Transactions',
            style: appBarTextStyle,
          ),
          bottom: TabBar(
            isScrollable: false,
            unselectedLabelColor: Colors.grey.shade400,
            labelColor: Colors.black87,
            indicatorColor: HexColor("#33A59E"),
            tabs: [
              Tab(
                child: Center(
                  child: Text('All',
                    style: TabTextStyle,
                  ),
                ),
              ),
              Tab(
                child:  Center(
                  child: Text('Sales',
                    style: TabTextStyle,
                  ),
                ),
              ),
              Tab(
                child: Center(
                  child: Text('Purchase',
                  style: TabTextStyle,
                  ),
                ),
              ),
              Tab(
                child:Center(
                  child: Text('Sent',
                    style: TabTextStyle,
                  ),
                ),
              ),
            ],
            controller: _tabController,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(25, 15, 25, 10),
          child: TabBarView(
                controller: _tabController,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        transactionDate('Today'),
                        SizedBox(
                          height: constraints.maxHeight* 0.04,
                        ),
                        transactionDetails( constraints, Icons.arrow_upward_rounded, "10b77a",
                          'BTC Purchase', 'ETH', '7.5 ETH', 'ea2222', '0.0020342 BTC', '10b77a', '31,994.39', '02 : 10 pm'
                        ),
                        SizedBox(
                          height: constraints.maxHeight* 0.03,
                        ),
                        transactionDetails( constraints, Icons.arrow_downward_rounded, "ea2222",
                          'ETH Sales', 'USDC', '367.322 USDC', '10b77a', '0.0030312 ETH', 'ea2222', '29,294.39','02 : 10 pm'
                        ),
                        SizedBox(
                          height: constraints.maxHeight* 0.04,
                        ),
                        transactionDate('Yesterday'),
                        SizedBox(
                          height: constraints.maxHeight* 0.03,
                        ),
                        transactionDetails( constraints, Icons.arrow_upward_rounded, "10b77a",
                          'ETH Purchase', 'ETH', '7.5 ETH', 'ea2222', '0.0020342 ETH', '10b77a', '31,994.39','09 : 10 pm'
                        ),
                        SizedBox(
                          height: constraints.maxHeight* 0.03,
                        ),
                        transactionDetails( constraints, Icons.arrow_downward_rounded, "ea2222",
                          'BTC Sales', 'USDC', '367.322 USDC', '10b77a', '0.0030312 BTC', 'ea2222', '29,294.39','02 : 10 pm'
                        ),
                        SizedBox(
                          height: constraints.maxHeight* 0.04,
                        ),
                        transactionDate('August 6, 2021'),
                        SizedBox(
                          height: constraints.maxHeight* 0.03,
                        ),
                        transactionDetails( constraints, Icons.arrow_upward_rounded, "10b77a",
                          'USDT Purchase', 'ETH', '7.5 ETH', 'ea2222', '0.0020342 USDT', '10b77a', '31,994.39','02 : 10 pm'
                        ),
                        SizedBox(
                          height: constraints.maxHeight* 0.03,
                        ),
                        transactionDetails( constraints, Icons.arrow_downward_rounded, "ea2222",
                          'BTC Sales', 'USDC', '367.322 USDC', '10b77a', '0.0030312 BTC', 'ea2222', '29,294.39','02 : 10 pm'
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         transactionDate('Today'),
                         SizedBox(
                           height: constraints.maxHeight* 0.03,
                         ),
                         transactionDetails( constraints, Icons.arrow_downward_rounded, "ea2222",
                           'ETH Sales', 'USDC', '367.322 USDC', '10b77a', '0.0030312 ETH', 'ea2222', '29,294.39','02 : 10 pm'
                         ),
                         SizedBox(
                           height: constraints.maxHeight* 0.03,
                         ),
                         transactionDetails( constraints, Icons.arrow_downward_rounded, "ea2222",
                           'BTC Sales', 'USDC', '367.322 USDC', '10b77a', '0.0030312 BTC', 'ea2222', '29,294.39','02 : 10 pm'
                         ),
                         SizedBox(
                           height: constraints.maxHeight* 0.04,
                         ),
                         transactionDate('Yesterday'),
                         SizedBox(
                           height: constraints.maxHeight* 0.03,
                         ),
                         transactionDetails( constraints, Icons.arrow_downward_rounded, "ea2222",
                           'ETH Sales', 'USDC', '367.322 USDC', '10b77a', '0.0030312 ETH', 'ea2222', '31,294.39','02 : 10 pm'
                         ),
                         SizedBox(
                           height: constraints.maxHeight* 0.03,
                         ),
                         transactionDetails( constraints, Icons.arrow_downward_rounded, "ea2222",
                           'USDT Sales', 'USDC', '367.322 USDC', '10b77a', '0.0030312 USDT', 'ea2222', '22,094.39','02 : 10 pm'
                         ),
                         SizedBox(
                           height: constraints.maxHeight* 0.03,
                         ),
                         transactionDetails( constraints, Icons.arrow_downward_rounded, "ea2222",
                           'BTC Sales', 'USDC', '367.322 USDC', '10b77a', '0.0030312 BTC', 'ea2222', '31,294.39','02 : 10 pm'
                         ),
                         SizedBox(
                           height: constraints.maxHeight* 0.03,
                         ),
                         transactionDetails( constraints, Icons.arrow_downward_rounded, "ea2222",
                           'ETH Sales', 'USDC', '367.322 USDC', '10b77a', '0.0030312 ETH', 'ea2222', '28,294.39','02 : 10 pm'
                         ),
                       ],
                      ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        transactionDate('Today'),
                        SizedBox(
                          height: constraints.maxHeight* 0.03,
                        ),
                        transactionDetails( constraints, Icons.arrow_upward_rounded, "10b77a",
                          'BTC Purchase', 'ETH', '7.5 ETH', 'ea2222', '0.0020342 BTC', '10b77a', '31,994.39','02 : 10 pm'
                        ),
                        SizedBox(
                          height: constraints.maxHeight* 0.03,
                        ),
                        transactionDetails( constraints, Icons.arrow_upward_rounded, "10b77a",
                          'ETH Purchase', 'BTC', '7.5 BTC', 'ea2222', '0.0020342 ETH', '10b77a', '21,994.39','02 : 10 pm'
                        ),
                        SizedBox(
                          height: constraints.maxHeight* 0.03,
                        ),
                        transactionDetails( constraints, Icons.arrow_upward_rounded, "10b77a",
                          'ETH Purchase', 'BTC', '7.5 BTC', 'ea2222', '0.0020342 ETH', '10b77a', '21,994.39','02 : 10 pm'
                        ),
                        SizedBox(
                          height: constraints.maxHeight* 0.04,
                        ),
                        SizedBox(
                          height: constraints.maxHeight* 0.03,
                        ),
                        transactionDetails( constraints, Icons.arrow_upward_rounded, "10b77a",
                          'BTC Purchase', 'USDC', '3.44 USDC', 'ea2222', '0.0020342 BTC', '10b77a', '16,994.39','02 : 10 pm'
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        transactionDate('Today'),
                        SizedBox(
                          height: constraints.maxHeight* 0.03,
                        ),
                        transactionDetails( constraints, Icons.arrow_upward_rounded, "10b77a",
                          'BTC Purchase', 'ETH', '7.5 ETH', 'ea2222', '0.0020342 BTC', '10b77a', '31,994.39','02 : 10 pm'
                        ),
                        SizedBox(
                          height: constraints.maxHeight* 0.03,
                        ),
                        transactionDetails( constraints, Icons.arrow_upward_rounded, "10b77a",
                          'ETH Purchase', 'BTC', '7.5 BTC', 'ea2222', '0.0020342 ETH', '10b77a', '21,994.39','02 : 10 pm'
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
      );
    });
  }
}
