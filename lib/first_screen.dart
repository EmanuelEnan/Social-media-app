// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:social_media_app/data.dart';
import 'package:social_media_app/page_carousel.dart';
import 'package:social_media_app/user_model.dart';

import 'custom_drawer.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _pageController = PageController(
      initialPage: 0,
      viewportFraction: .7,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
        ),
        title: Center(
          child: Text(
            'almo'.toUpperCase(),
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              letterSpacing: 1,
              color: Colors.blue,
            ),
          ),
        ),
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.blue[400],
          labelStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
          tabs: [
            Tab(
              text: 'trending'.toUpperCase(),
            ),
            Tab(
              text: 'latest'.toUpperCase(),
            ),
            Tab(
              text: 'following'.toUpperCase(),
            ),
          ],
        ),
      ),
      drawer: CustomDrawer(),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(
                  20,
                  20,
                  20,
                  10,
                ),
                child: Text(
                  'Following',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 2,
                  ),
                ),
              ),
              SizedBox(
                height: 90,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  padding: EdgeInsets.only(
                    left: 10,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemCount: usersAll.length,
                  itemBuilder: (BuildContext context, int index) {
                    NewUser alluser = usersAll[index];
                    return Container(
                      margin: EdgeInsets.all(
                        10,
                      ),
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0, 2),
                              blurRadius: 6,
                            )
                          ],
                          border: Border.all(
                            width: 2,
                            color: Colors.blue,
                          )),
                      child: ClipOval(
                        child: Image(
                          height: 70,
                          width: 70,
                          image: AssetImage(
                            alluser.profileImageUrl,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          PageCarousel(
            pageController: _pageController,
            title: 'Posts',
            posts: posts,
          ),
        ],
      ),
    );
  }
}
