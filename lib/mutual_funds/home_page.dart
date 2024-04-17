import 'package:flutter/material.dart';

class MutualFunds extends StatefulWidget {
  const MutualFunds({super.key});

  @override
  State<MutualFunds> createState() => _MutualFundsState();
}

class _MutualFundsState extends State<MutualFunds> {

  final List<String> collectionTextList =['High return','SIP with ₹100', 'Tax Saving',
    'Large Cap','Mid Cap','Small Cap'];

  final List<String> productToolImageList = [
    'assets/image/profile_logo.jpg', 'assets/image/profile_logo.jpg',
    'assets/image/profile_logo.jpg', 'assets/image/profile_logo.jpg',
    'assets/image/profile_logo.jpg','assets/image/profile_logo.jpg'
  ];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xFF121212),

      body: Expanded(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
              children: [


                //Top Buttons
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
                                'Dasboard',
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
                                'SIPs',
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
                                'Watchlist',
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

                //Popular Funds
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Row(

                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Popular Funds",
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),


                      ElevatedButton(
                        onPressed: () {
                          // Add your onPressed logic here
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 5,
                          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                            side: const BorderSide(color: Color(0xFF222222)), // Border color
                          ),
                          backgroundColor: const Color(0xFF121212),
                        ),
                        child: const Text(
                          'ALL MUTUAL FUNDS',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.green,
                          ),
                        ),
                      )

                    ],
                  ),
                ),

                //GridView (1)
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: SizedBox(
                      height: 160,
                      width: MediaQuery.of(context).size.width,
                      child: GridView.builder(
                        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                          childAspectRatio: (100/190),
                          maxCrossAxisExtent: 200, // Maximum width of each item
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 20,
                        ),
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int index) {
                          String imagePath = '';
                          String itemText = '';
                          String secondText = '';


                          switch (index) {
                            case 0:
                              imagePath = 'assets/image/infibeam_avenues_logo.png';
                              itemText = 'Parag Parikh Flexi Cap Fund Direct Growth';
                              secondText = 'Equity Flexi Cap •5 ⭐';

                              break;
                            case 1:
                              imagePath = 'assets/image/suzlon2_logo.jpg';
                              itemText = 'Quant Mid Cap Fund Direct Growth';
                              secondText = 'Equity Mid Cap •5 ⭐';

                              break;
                            case 2:
                              imagePath = 'assets/image/trident_logo.jpeg';
                              itemText = 'Axis Small Cap Fund Direct Growth';
                              secondText = 'Equity Small Cap •5 ⭐';

                              break;
                            case 3:
                              imagePath = 'assets/image/youtube.jpg';
                              itemText = 'Nippon India Large Cap Fund Direct Growth';
                              secondText = 'Equity Large Cap •5 ⭐';

                              break;
                          }

                          return InkWell(
                            onTap: () {},
                            child: Container(
                              width: 240,
                              decoration: BoxDecoration(
                                color: const Color(0xFF121212),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: const Color(0xFF333333),
                                ),
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
                                        width: 30,
                                        height: 30,
                                        fit: BoxFit.cover,
                                      ),
                                    ),

                                    const SizedBox(height: 13),

                                    Expanded(
                                      child: SizedBox(
                                        width: 240,
                                        child: Text(
                                          // overflow: TextOverflow.ellipsis,
                                         // overflow: TextOverflow.fade,
                                          overflow: TextOverflow.clip,
                                          itemText,
                                          style: const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),

                                    const SizedBox(height: 8),
                                    Text(
                                      secondText,
                                      style: const TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey,
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
                  ),
                ),

                //Collections
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Collections',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 15),

                SizedBox(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 200,
                        crossAxisCount: 3,
                        mainAxisSpacing: 30,
                        crossAxisSpacing: 30,
                      ),

                      itemCount: 6,
                      itemBuilder: (BuildContext context , int index){

                        return  Column(
                          children: [

                            Container(
                              height: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image: AssetImage('assets/image/profile_logo.jpg'),
                                ),
                              ),
                            ),

                            const Text(
                              'Collections',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        );
                      }),
                ),


            ]
          ),
        ),
      ),
    );
  }
}
