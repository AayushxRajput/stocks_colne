import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {

   TabController  _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      backgroundColor: const Color(0xFF121212),

      appBar: AppBar(
        backgroundColor: const Color(0xFF121212),
        title: const Column(
          children: [
            Text(
              'Stocks',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        leadingWidth: 45,
        leading: const CircleAvatar(
          radius: 15,
          backgroundImage: AssetImage('assets/image/grow_logo.png'),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.search, color: Colors.white),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.qr_code, color: Colors.white),
                onPressed: () {},
              ),
              const SizedBox(width: 8),
              InkWell(
                onTap: () {},
                child: ClipOval(
                  child: Material(
                    child: Ink.image(
                      image: const AssetImage('assets/image/profile_logo.jpg'),
                      fit: BoxFit.cover,
                      width: 30,
                      height: 30,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8)
            ],
          ),
        ],
      ),

      body: Expanded(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              // 2 box top
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

              //Most Bought on Grow
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

              //GridView.Builder (1)
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
                        secondText = '₹ 44.10';
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

              //'Product & Tools'
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
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

              const SizedBox(height: 10,),
              SizedBox(
                height: 90,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    String imagePath = 'assets/image/youtube.jpg';

                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                          border: Border.all( color: const Color(0xFF333333),),
                          color: const Color(0xFF1b1a1a),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        // margin: const EdgeInsets.only(right: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              imagePath,
                              fit: BoxFit.cover,
                              height: 50,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

              // TabBar View

              Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  controller: _tabController,
                  isScrollable: true,
                  // labelPadding: const EdgeInsets.only(left: 0,right: 0),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.white,
                  tabs: const [
                    Tab(
                      text: "Gainers",
                    ),
                    Tab(
                      text: 'Losers',
                    ),
                  ],
                ),
              ),

              SizedBox(
                width: double.maxFinite,
                height: 100,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    ListView.builder(
                      itemCount: 1,
                        itemBuilder: (_ , index) {
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
                    )
                  ],
                ),
              ),


              // 3 button
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child:  Column(
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
              ),

              //GridView.Builder (3)
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
              ),

              //Top Intra day
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
              const SizedBox(
                width: 250,
                height: 70,
                child:  Center(
                  child: Column(
                    children: [
                      Text(
                        'Nextbillion Technology Pvt.Ltd SEBI-Stock Brock - INZ000301838 DP-IN-DP-417-2019',
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
