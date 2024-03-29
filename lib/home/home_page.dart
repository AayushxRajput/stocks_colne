import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {


  final List<String> productToolTextList = [
    'F&O', 'Events', 'IPO', 'All Stocks'
  ];

  final List<String> productToolImageList = [
    'assets/image/speedometer.webp', 'assets/image/events.png',
    'assets/image/ipo.jpeg', 'assets/image/all_stocks.png'
  ];



  @override
  Widget build(BuildContext context) {

   TabController  _tabController = TabController(length: 2, vsync: this);


    return Scaffold(
      backgroundColor: const Color(0xFF121212),


      body: Expanded(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              // Top 2 box top
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10 ,vertical: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFF333333), // Border color
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFF121212),
                        ),

                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'NIFTY 50',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(height: 8),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text('22,000.00',
                                      style: TextStyle(color: Colors.white)),
                                  Text(
                                    '+ 153.20(0.70%)',
                                    style: TextStyle(color: Colors.green),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(width: 20,),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFF222222), // Border color
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFF121212),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'NIFTY 50',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                ),
                              ),
                              SizedBox(height: 8),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    '22,000.00',
                                      style: TextStyle(
                                          color: Colors.white,
                                      ),
                                  ),
                                  Text(
                                    '+ 153.20(0.70%)',
                                    style: TextStyle(
                                        color: Colors.green
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),

              // 3 button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [

                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20 ,vertical: 5),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xFF333333), // Border color
                              ),
                              borderRadius: BorderRadius.circular(120),
                              color: const Color(0xFF121212), // Customize the color as needed
                            ),
                            child: const Text(
                              'Explore',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),

                          const SizedBox(width: 8),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20 ,vertical: 5),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xFF222222), // Border color
                              ),
                              borderRadius: BorderRadius.circular(120),
                              color: const Color(0xFF121212), // Customize the color as needed
                            ),
                            child: const Text(
                              'Holdings',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),

                          const SizedBox(width: 8),

                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20 ,vertical: 5),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xFF222222), // Border color
                              ),
                              borderRadius: BorderRadius.circular(120),
                              color: const Color(0xFF121212),
                            ),
                            child: const Text(
                              'Aayush Watchlist',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              // Text Most Bought on Grow
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Most bought on Groww",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              // 4 Box GridView.Builder (1)
              Container(
                color: const Color(0xFF121212),
                height: 400,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(10),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {


                    String imagePath = ''; // images
                    String itemText = ''; // itemText
                    String secondText = ''; // secondText
                    String thirdText = ''; // thirdText

                    switch (index) {
                      case 0:
                        imagePath = 'assets/image/infibeam_avenues_logo.png';
                        itemText = 'Infibeam Avenues';
                        secondText = '₹ 27.00';
                        thirdText = '+0.45(1.69%)';
                        break;

                      case 1:
                        imagePath = 'assets/image/suzlon2_logo.jpg';
                        itemText = 'Suzlon Energy';
                        secondText = '₹ 49.35';
                        thirdText = '-0.80(1.78%)';
                        break;

                      case 2:
                        imagePath = 'assets/image/trident_logo.jpeg';
                        itemText = 'Trident';
                        secondText = '₹ 46.40';
                        thirdText = '-1.10(2.32%)';
                        break;

                      case 3:
                        imagePath = 'assets/image/youtube.jpg';
                        itemText = 'India Renewable..';
                        secondText = '₹ 27.00';
                        thirdText = '+9.00(1.70%)';
                        break;
                    }

                    return InkWell(
                      onTap: () {

                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFF121212),
                          borderRadius: BorderRadius.circular(10), // Border-radius for the Container
                          border: Border.all(
                            color: const Color(0xFF333333),
                          ), // Border properties
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              // Image.asset widget with the specified path
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  imagePath,
                                  width: 50,
                                  height: 50,
                                  fit: BoxFit.cover,
                                ),
                              ),
                      
                              const SizedBox(height: 8),
                      
                              // Text widget with the specified text
                              Text(
                                itemText,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                      
                              const SizedBox(height: 10),
                              Text(
                                secondText,
                                style: const TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                ),
                              ),
                      
                              const SizedBox(height: 3),
                              Text(
                                thirdText,
                                style: const TextStyle(
                                  fontSize: 17,
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

              //'Product & Tools'
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Product & Tools',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              // Row me Gridview(2)
              const SizedBox(height: 10,),
              SizedBox(
                height: 130,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: productToolTextList.length,
                  itemBuilder: (BuildContext context, int index) {

                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all( color: const Color(0xFF333333),),
                              color: const Color(0xFF1b1a1a),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 15),
                            // margin: const EdgeInsets.only(right: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  productToolImageList[index],
                                  fit: BoxFit.cover,
                                  height: 50,
                                ),
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(height: 10,),
                        Text(
                          productToolTextList[index],
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),

              // TabBar View
              Container(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  labelColor:Colors.green ,
                  // indicator: const BoxDecoration(color: Colors.transparent),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  controller: _tabController,
                  tabAlignment: TabAlignment.start,
                  isScrollable: true,
                  labelPadding: const EdgeInsets.only(left: 13 , right: 10),
                  // labelColor: Colors.black,
                  // unselectedLabelColor: Colors.black,
                  dividerColor: Colors.transparent,
                  tabs: const [
                    Tab(
                      child: Text("Gainers",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),

                    Tab(
                      child: Text("Losers",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),

                  ],
                ),
              ),

              SizedBox(
                // width: double.maxFinite,
                height: 460,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Column(
                      children: [
                        ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 1,
                            itemBuilder: (
                                BuildContext context, index) {
                              return  Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.symmetric(horizontal: 20 ,vertical: 5),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: const Color(0xFF333333), // Border color
                                              ),
                                              borderRadius: BorderRadius.circular(120),
                                              color: const Color(0xFF121212), // Customize the color as needed
                                            ),
                                            child: const Text(
                                              'Large',
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),

                                          const SizedBox(width: 8),
                                          Container(
                                            padding: const EdgeInsets.symmetric(horizontal: 20 ,vertical: 5),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: const Color(0xFF222222), // Border color
                                              ),
                                              borderRadius: BorderRadius.circular(120),
                                              color: const Color(0xFF121212), // Customize the color as needed
                                            ),
                                            child: const Text(
                                              'Mid',
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),

                                          const SizedBox(width: 8),

                                          Container(
                                            padding: const EdgeInsets.symmetric(horizontal: 20 ,vertical: 5),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: const Color(0xFF222222), // Border color
                                              ),
                                              borderRadius: BorderRadius.circular(120),
                                              color: const Color(0xFF121212),
                                            ),
                                            child: const Text(
                                              'Small',
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }
                        ),

                        ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 1,
                            itemBuilder: (
                                BuildContext context, index){
                              return  Container(
                                color: const Color(0xFF121212),
                                height: 400,
                                width: MediaQuery.of(context).size.width,
                                padding: const EdgeInsets.all(10),
                                child: GridView.builder(
                                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                    childAspectRatio: (200 / 200),
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10,
                                  ),
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 4,
                                  itemBuilder: (BuildContext context, int index) {

                                    String imagePath = ''; // images
                                    String itemText = ''; // itemText
                                    String secondText = ''; // secondText
                                    String thirdText = ''; // thirdText

                                    switch (index) {
                                      case 0:
                                        imagePath = 'assets/image/wipro_logo.jpg'; // Replace with the actual path of your image
                                        itemText = 'Wioro';
                                        const SizedBox(width: 10);
                                        secondText = '₹ 497.00';
                                        thirdText = '+31.55(6.78%)';
                                        break;

                                      case 1:
                                        imagePath = 'assets/image/oil&natural_logo.jpg';
                                        itemText = 'oil & natural gas...';
                                        const SizedBox(width: 10);
                                        secondText = '₹ 229.95';
                                        thirdText = '+6.55(2.93%)';
                                        break;

                                      case 2:
                                        imagePath = 'assets/image/hcl_logo.jpg';
                                        itemText = 'HCL Technologies';
                                        const SizedBox(width: 10);
                                        secondText = '₹ 1,584.35';
                                        thirdText = '+43.55(2.83%)';
                                        break;

                                      case 3:
                                        imagePath = 'assets/image/youtube.jpg';
                                        itemText = 'India Renewable..';
                                        const SizedBox(width: 10);
                                        secondText = '₹ 27.00';
                                        thirdText = '+9.00(1.70%)';

                                        break;
                                    }
                                    return Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF121212),
                                        borderRadius: BorderRadius.circular(10), // Border-radius for the Container
                                        border: Border.all(
                                          color: const Color(0xFF333333),
                                        ), // Border properties
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            // Image.asset widget with the specified path
                                            ClipRRect(
                                              borderRadius: BorderRadius.circular(10),
                                              child: Image.asset(
                                                imagePath,
                                                width: 50,
                                                height: 50,
                                                fit: BoxFit.cover,
                                              ),
                                            ),

                                            const SizedBox(height: 8),

                                            // Text widget with the specified text
                                            Text(
                                              itemText,
                                              style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),

                                            const SizedBox(height: 10),
                                            Text(
                                              secondText,
                                              style: const TextStyle(
                                                fontSize: 17,
                                                color: Colors.white,
                                              ),
                                            ),

                                            const SizedBox(height: 3),
                                            Text(
                                              thirdText,
                                              style: const TextStyle(
                                                fontSize: 17,
                                                color: Colors.green,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              );
                            }
                        ),
                      ],
                    ),

                    Column(
                      children: [
                        ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 1,
                            itemBuilder: (
                                BuildContext context, index) {
                              return  Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.symmetric(horizontal: 20 ,vertical: 5),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: const Color(0xFF333333), // Border color
                                              ),
                                              borderRadius: BorderRadius.circular(120),
                                              color: const Color(0xFF121212), // Customize the color as needed
                                            ),
                                            child: const Text(
                                              'Large',
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),

                                          const SizedBox(width: 8),
                                          Container(
                                            padding: const EdgeInsets.symmetric(horizontal: 20 ,vertical: 5),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: const Color(0xFF222222), // Border color
                                              ),
                                              borderRadius: BorderRadius.circular(120),
                                              color: const Color(0xFF121212), // Customize the color as needed
                                            ),
                                            child: const Text(
                                              'Mid',
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),

                                          const SizedBox(width: 8),

                                          Container(
                                            padding: const EdgeInsets.symmetric(horizontal: 20 ,vertical: 5),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: const Color(0xFF222222), // Border color
                                              ),
                                              borderRadius: BorderRadius.circular(120),
                                              color: const Color(0xFF121212),
                                            ),
                                            child: const Text(
                                              'Small',
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }
                        ),

                        ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 1,
                            itemBuilder: (
                                BuildContext context, index){
                              return  Container(
                                color: const Color(0xFF121212),
                                height: 400,
                                width: MediaQuery.of(context).size.width,
                                padding: const EdgeInsets.all(10),
                                child: GridView.builder(
                                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                    childAspectRatio: (200 / 200),
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10,
                                  ),
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 4,
                                  itemBuilder: (BuildContext context, int index) {

                                    String imagePath = ''; // images
                                    String itemText = ''; // itemText
                                    String secondText = ''; // secondText
                                    String thirdText = ''; // thirdText

                                    switch (index) {
                                      case 0:
                                        imagePath = 'assets/image/wipro_logo.jpg'; // Replace with the actual path of your image
                                        itemText = 'Wioro';
                                        const SizedBox(width: 10);
                                        secondText = '₹ 497.00';
                                        thirdText = '+31.55(6.78%)';
                                        break;

                                      case 1:
                                        imagePath = 'assets/image/oil&natural_logo.jpg';
                                        itemText = 'oil & natural gas...';
                                        const SizedBox(width: 10);
                                        secondText = '₹ 229.95';
                                        thirdText = '+6.55(2.93%)';
                                        break;

                                      case 2:
                                        imagePath = 'assets/image/hcl_logo.jpg';
                                        itemText = 'HCL Technologies';
                                        const SizedBox(width: 10);
                                        secondText = '₹ 1,584.35';
                                        thirdText = '+43.55(2.83%)';
                                        break;

                                      case 3:
                                        imagePath = 'assets/image/youtube.jpg';
                                        itemText = 'India Renewable..';
                                        const SizedBox(width: 10);
                                        secondText = '₹ 27.00';
                                        thirdText = '+9.00(1.70%)';

                                        break;
                                    }
                                    return Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF121212),
                                        borderRadius: BorderRadius.circular(10), // Border-radius for the Container
                                        border: Border.all(
                                          color: const Color(0xFF333333),
                                        ), // Border properties
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            // Image.asset widget with the specified path
                                            ClipRRect(
                                              borderRadius: BorderRadius.circular(10),
                                              child: Image.asset(
                                                imagePath,
                                                width: 50,
                                                height: 50,
                                                fit: BoxFit.cover,
                                              ),
                                            ),

                                            const SizedBox(height: 8),

                                            // Text widget with the specified text
                                            Text(
                                              itemText,
                                              style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),

                                            const SizedBox(height: 10),
                                            Text(
                                              secondText,
                                              style: const TextStyle(
                                                fontSize: 17,
                                                color: Colors.white,
                                              ),
                                            ),

                                            const SizedBox(height: 3),
                                            Text(
                                              thirdText,
                                              style: const TextStyle(
                                                fontSize: 17,
                                                color: Colors.green,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              );
                            }
                        ),
                      ],
                    ),

                  ],
                ),
              ),

              // Text Top Intra day
              const SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            'Top Intraday',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),

                        GestureDetector(
                          onTap: () {
                            // Action to be performed when "See More" is clicked
                          },
                          child: const Text(
                            'See more',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),

              //GridView.Builder (4)
              Container(
                color: const Color(0xFF121212),
                height: 400,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(10),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: (200 / 200),
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {

                    String imagePath = ''; // images
                    String itemText = ''; //  itemText
                    String secondText = ''; // secondText
                    String thirdText = '';  // thirdText

                    switch (index) {
                      case 0:
                        imagePath = 'assets/image/indian_railway_logo.png'; // Replace with the actual path of your image
                        itemText = 'Indian Railwey Fin..';
                        const SizedBox(width: 10);
                        secondText = '₹ 132.60';
                        thirdText = '+19.20(16.93%)';
                        break;

                      case 1:
                        imagePath = 'assets/image/infibeam_avenues_logo.png'; // Replace with the actual path of your image
                        itemText = 'Infibeam Avenues';
                        const SizedBox(width: 10);
                        secondText = '₹ 27.05';
                        thirdText = '+0.50(1.88%)';
                        break;

                      case 2:
                        imagePath = 'assets/image/trident_logo.jpeg';
                        itemText = 'Trident';
                        const SizedBox(width: 10);
                        secondText = '₹ 46.35';
                        thirdText = '-1.15(2.42%)';
                        break;

                      case 3:
                        imagePath = 'assets/image/firstsource_logo.png';
                        itemText = 'Firstsource Soluti..';
                        const SizedBox(width: 10);
                        secondText = '₹ 208.80';
                        thirdText = '-1.10(0.52%)';

                        break;
                    }

                    return Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF121212),
                        borderRadius: BorderRadius.circular(10), // Border-radius for the Container
                        border: Border.all(
                          color: const Color(0xFF333333),
                        ), // Border properties
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // Image.asset widget with the specified path
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                imagePath,
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),

                            const SizedBox(height: 8),

                            // Text widget with the specified text
                            Text(
                              itemText,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),

                            const SizedBox(height: 10),
                            Text(
                              secondText,
                              style: const TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                              ),
                            ),

                            const SizedBox(height: 3),
                            Text(
                              thirdText,
                              style: const TextStyle(
                                fontSize: 17,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

              //Stocks in news
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            'Stocks in news',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),

                        GestureDetector(
                          onTap: () {
                            // Action to be performed when "See More" is clicked
                          },
                          child: const Text(
                            'See more',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),

              //GridView.Builder (5)
              Container(
                color: const Color(0xFF121212),
                height: 400,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(10),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: (200 / 200),
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {

                    String imagePath = ''; // images
                    String itemText = ''; //  itemText
                    String secondText = ''; // secondText
                    String thirdText = '';  // thirdText

                    switch (index) {
                      case 0:
                        imagePath = 'assets/image/power_logo.png';
                        itemText = 'Power Grid Corpro..';
                        const SizedBox(width: 10);
                        secondText = '₹239.55';
                        thirdText = '+0.05(0.02%)';
                        break;

                      case 1:
                        imagePath = 'assets/image/aditiya_logo.webp';
                        itemText = 'Aditya Vision';
                        const SizedBox(width: 10);
                        secondText = '₹ 27.00';
                        thirdText = '+9.00(1.70%)';
                        break;

                      case 2:
                        imagePath = 'assets/image/wipro_logo.jpg';
                        itemText = 'Wioro';
                        const SizedBox(width: 10);
                        secondText = '₹ 27.00';
                        thirdText = '+9.00(1.70%)';
                        break;

                      case 3:
                        imagePath = 'assets/image/maruti_suzuki.png';
                        itemText = 'Maruti Suzuki India';
                        const SizedBox(width: 10);
                        secondText = '₹ 27.00';
                        thirdText = '+9.00(1.70%)';

                        break;
                    }

                    return Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF121212),
                        borderRadius: BorderRadius.circular(10), // Border-radius for the Container
                        border: Border.all(
                          color: const Color(0xFF333333),
                        ), // Border properties
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // Image.asset widget with the specified path
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                imagePath,
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),

                            const SizedBox(height: 8),

                            // Text widget with the specified text
                            Text(
                              itemText,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),

                            const SizedBox(height: 10),
                            Text(
                              secondText,
                              style: const TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                              ),
                            ),

                            const SizedBox(height: 3),
                            Text(
                              thirdText,
                              style: const TextStyle(
                                fontSize: 17,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

              //Stocks in news
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            'Stocks in news',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),

                        GestureDetector(
                          onTap: () {
                            // Action to be performed when "See More" is clicked
                          },
                          child: const Text(
                            'See more',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),

              //GridView.Builder (6)
              Container(
                color: const Color(0xFF121212),
                height: 400,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(10),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: (200 / 200),
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {

                    String imagePath = ''; // images
                    String itemText = ''; //  itemText
                    String secondText = ''; // secondText
                    String thirdText = '';  // thirdText

                    switch (index) {
                      case 0:
                        imagePath = 'assets/image/power_logo.png'; // Replace with the actual path of your image
                        itemText = 'Power Grid Corpro..';
                        const SizedBox(width: 10);
                        secondText = '₹ 27.00';
                        thirdText = '+9.00(1.70%)';
                        break;

                      case 1:
                        imagePath = 'assets/image/aditiya_logo.webp';
                        itemText = 'Aditya Vision';
                        const SizedBox(width: 10);
                        secondText = '₹ 27.00';
                        thirdText = '+9.00(1.70%)';
                        break;

                      case 2:
                        imagePath = 'assets/image/wipro_logo.jpg'; // Replace with the actual path of your image
                        itemText = 'Wioro';
                        const SizedBox(width: 10);
                        secondText = '₹ 27.00';
                        thirdText = '+9.00(1.70%)';
                        break;

                      case 3:
                        imagePath = 'assets/image/maruti_suzuki.png';
                        itemText = 'Maruti Suzuki India';
                        const SizedBox(width: 10);
                        secondText = '₹ 27.00';
                        thirdText = '+9.00(1.70%)';

                        break;
                    }

                    return Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF121212),
                        borderRadius: BorderRadius.circular(10), // Border-radius for the Container
                        border: Border.all(
                          color: const Color(0xFF333333),
                        ), // Border properties
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // Image.asset widget with the specified path
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                imagePath,
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),

                            const SizedBox(height: 8),

                            // Text widget with the specified text
                            Text(
                              itemText,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),

                            const SizedBox(height: 10),
                            Text(
                              secondText,
                              style: const TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                              ),
                            ),

                            const SizedBox(height: 3),
                            Text(
                              thirdText,
                              style: const TextStyle(
                                fontSize: 17,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

              //Last me Text likha he
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 60),
                child: const Center(
                  child: Column(
                    children: [
                      Text(
                        'Nextbillion Technology Pvt.Ltd SEBI-Stock Brock - INZ000301838 DP-IN-DP-417-2019',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
