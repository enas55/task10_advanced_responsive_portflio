import 'package:flutter/material.dart';
import 'package:task10_advanced_responsive_portflio/utilities/color_utility.dart';
import 'package:task10_advanced_responsive_portflio/widgets/navbar_item_widget.dart';
import 'package:task10_advanced_responsive_portflio/widgets/wrap_items_widget.dart';

class DesktopWidget extends StatefulWidget {
  const DesktopWidget({
    super.key,
  });

  @override
  State<DesktopWidget> createState() => _DesktopWidgetState();
}

class _DesktopWidgetState extends State<DesktopWidget> {
  int selectedIndex = 0;

  Color getColor(int index) {
    if (index == selectedIndex) {
      return ColorsUtility.lightOrange;
    } else {
      return Colors.grey;
    }
  }

  void onTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  Map<int, Widget> indexWidgetMap = {
    0: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                'ABOUT ME',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.5,
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              Flexible(
                child: Container(
                  constraints:
                      const BoxConstraints(maxHeight: 2, maxWidth: 250),
                  // height: 2,
                  // width: 250,
                  color: ColorsUtility.lightOrange,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'What I do!',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 20,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.5,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Wrap(
            direction: Axis.horizontal,
            spacing: 10,
            runSpacing: 15,
            children: [
              WrapItemsWidget(
                color: ColorsUtility.lightRed,
                title: 'Web Development',
                description:
                    'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?',
              ),
              WrapItemsWidget(
                color: ColorsUtility.semiWhite,
                title: 'App Development',
                description:
                    'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?',
              ),
              WrapItemsWidget(
                color: ColorsUtility.semiWhite,
                title: 'UI/UX Designing',
                description:
                    'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?',
              ),
              WrapItemsWidget(
                color: ColorsUtility.lightRed,
                title: 'Mentorship',
                description:
                    'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?',
              ),
            ],
          ),
        ],
      ),
    ),
    1: const Text('Resume'),
    2: const Text('Work'),
    3: const Text('Contact'),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.all(10),
              color: ColorsUtility.lightGrey,
              width: 1240,
              height: 70,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Enas Taher',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    IconButton(
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.dark_mode_outlined,
                        size: 25,
                      ),
                      style: ButtonStyle(
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 60),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      constraints: BoxConstraints(
                        maxHeight: MediaQuery.sizeOf(context).height * 0.8,
                        maxWidth: MediaQuery.sizeOf(context).width * 0.8,
                      ),
                      // width: 250,
                      // height: 800,
                      // color: Colors.blue,
                      child: Center(
                        child: Stack(
                          clipBehavior: Clip.none,
                          alignment: Alignment.center,
                          children: [
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 80, horizontal: 16),
                              constraints: BoxConstraints(
                                maxWidth:
                                    MediaQuery.sizeOf(context).width * 0.8,
                              ),
                              // width: 400,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    blurRadius: 3,
                                    spreadRadius: 1,
                                  ),
                                ],
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const SizedBox(height: 10),
                                    const Text(
                                      'Enas Taher',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    const Text(
                                      'Flutter Developer',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    Container(
                                      width:
                                          MediaQuery.sizeOf(context).width / 2,
                                      height: 60,
                                      decoration: const BoxDecoration(
                                          color: ColorsUtility.white),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          socialIconButton(
                                              Icons.facebook, Colors.blue),
                                          socialIconButton(
                                              Icons.code, Colors.black),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      padding: const EdgeInsets.all(30),
                                      decoration: BoxDecoration(
                                        color: ColorsUtility.semiLightGrey,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        children: [
                                          contactInfo(Icons.phone,
                                              '+201012423789', 'Phone'),
                                          const SizedBox(height: 10),
                                          Container(
                                            constraints: BoxConstraints(
                                                maxWidth:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.8),
                                            height: 1,
                                            // width: 300,
                                            color: Colors.grey.shade300,
                                          ),
                                          contactInfo(
                                            Icons.email,
                                            'enastaher@gmail.com',
                                            'Email',
                                          ),
                                          const SizedBox(height: 10),
                                          Container(
                                            constraints: BoxConstraints(
                                                maxWidth:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.8),
                                            height: 1,
                                            // width: 300,
                                            color: Colors.grey.shade300,
                                          ),
                                          contactInfo(Icons.location_on,
                                              'Elminia, Egypt', 'Location'),
                                          Container(
                                            constraints: BoxConstraints(
                                                maxWidth:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.8),
                                            height: 1,
                                            // width: 300,
                                            color: Colors.grey.shade300,
                                          ),
                                          const SizedBox(height: 20),
                                          ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  ColorsUtility.lightOrange,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                horizontal: 20,
                                                vertical: 20,
                                              ),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                            ),
                                            child: const Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.download,
                                                  color: Colors.white,
                                                ),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Text(
                                                  'Download Resume',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: -200,
                              left: 0,
                              right: 0,
                              child: Image.asset(
                                'assets/images/Capture5.PNG',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      color: ColorsUtility.lightGrey,
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              constraints: const BoxConstraints(
                                  maxHeight: 100,
                                  maxWidth: 430,
                                  minHeight: 100),
                              // height: 100,
                              // width: 450,
                              decoration: BoxDecoration(
                                  color: ColorsUtility.semiWhite,
                                  border: Border.all(
                                    color: Colors.black.withOpacity(0.1),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      blurRadius: 3,
                                      spreadRadius: 1,
                                    ),
                                  ]),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  NavbarItemWidget(
                                    title: 'Home',
                                    icon: Icons.home,
                                    onTap: () {
                                      onTapped(0);
                                    },
                                    color: getColor(0),
                                  ),
                                  NavbarItemWidget(
                                    title: 'Resume',
                                    icon: Icons.description_sharp,
                                    onTap: () {
                                      onTapped(1);
                                    },
                                    color: getColor(1),
                                  ),
                                  NavbarItemWidget(
                                    title: 'Work',
                                    icon: Icons.work_outline_sharp,
                                    onTap: () {
                                      onTapped(2);
                                    },
                                    color: getColor(2),
                                  ),
                                  NavbarItemWidget(
                                    title: 'Contact',
                                    icon: Icons.contact_page_sharp,
                                    onTap: () {
                                      onTapped(3);
                                    },
                                    color: getColor(3),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Container(
                              margin: const EdgeInsets.all(10),
                              constraints: const BoxConstraints(
                                maxWidth: 800,
                                maxHeight: 1500,
                              ),
                              decoration: BoxDecoration(
                                color: ColorsUtility.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    blurRadius: 3,
                                    spreadRadius: 1,
                                  )
                                ],
                              ),

                              child: Padding(
                                padding: const EdgeInsets.all(40.0),
                                child: indexWidgetMap[selectedIndex],
                              ),

                              // height: 1000,
                              // width: 1000,

                              // child: Padding(
                              //   padding: const EdgeInsets.all(40),
                              //   child: SingleChildScrollView(
                              //     child: Column(
                              //       crossAxisAlignment:
                              //           CrossAxisAlignment.start,
                              //       children: [
                              //         Row(
                              //           children: [
                              //             const Text(
                              //               'ABOUT ME',
                              //               style: TextStyle(
                              //                 fontFamily: 'Poppins',
                              //                 fontSize: 25,
                              //                 fontWeight: FontWeight.w600,
                              //                 letterSpacing: 1.5,
                              //               ),
                              //             ),
                              //             const SizedBox(
                              //               width: 25,
                              //             ),
                              //             Expanded(
                              //               flex: 1,
                              //               child: Container(
                              //                 constraints: const BoxConstraints(
                              //                     maxHeight: 2, maxWidth: 250),
                              //                 // height: 2,
                              //                 // width: 250,
                              //                 color: ColorsUtility.lightOrange,
                              //               ),
                              //             ),
                              //           ],
                              //         ),
                              //         const SizedBox(
                              //           height: 10,
                              //         ),
                              //         const Text(
                              //           'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                              //         ),
                              //         const SizedBox(
                              //           height: 10,
                              //         ),
                              //         const Text(
                              //           'What I do!',
                              //           style: TextStyle(
                              //             fontFamily: 'Poppins',
                              //             fontSize: 20,
                              //             fontWeight: FontWeight.w600,
                              //             letterSpacing: 1.5,
                              //           ),
                              //         ),
                              //         const SizedBox(
                              //           height: 10,
                              //         ),
                              //         const Wrap(
                              //           direction: Axis.horizontal,
                              //           spacing: 10,
                              //           runSpacing: 15,
                              //           children: [
                              //             WrapItemsWidget(
                              //               color: ColorsUtility.lightRed,
                              //               title: 'Web Development',
                              //               description:
                              //                   'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?',
                              //             ),
                              //             WrapItemsWidget(
                              //               color: ColorsUtility.semiWhite,
                              //               title: 'App Development',
                              //               description:
                              //                   'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?',
                              //             ),
                              //             WrapItemsWidget(
                              //               color: ColorsUtility.semiWhite,
                              //               title: 'UI/UX Designing',
                              //               description:
                              //                   'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?',
                              //             ),
                              //             WrapItemsWidget(
                              //               color: ColorsUtility.lightRed,
                              //               title: 'Mentorship',
                              //               description:
                              //                   'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?',
                              //             ),
                              //           ],
                              //         ),
                              //       ],
                              //     ),
                              //   ),
                              // ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget socialIconButton(IconData icon, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: 60,
        height: 50,
        decoration: BoxDecoration(
          color: ColorsUtility.semiLightGrey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: IconButton(
          icon: Icon(icon),
          color: color,
          onPressed: () {},
        ),
      ),
    );
  }

  Widget contactInfo(IconData icon, String info, String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.orange),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 14, color: Colors.grey),
              ),
              Text(
                info,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
