import 'package:animation_wrappers/Animations/faded_slide_animation.dart';
import 'package:flutter/material.dart';
import 'package:go_pool/language/locale.dart';
import 'package:go_pool/screens/home/chats/chatPage.dart';
import 'package:go_pool/theme/colors.dart';

class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context)!;
    final List<Widget> tabs = <Widget>[
      Tab(text: locale.liveChat),
      Tab(text: locale.archive),
    ];
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            locale.chats!,
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(fontWeight: FontWeight.w600, fontSize: 22),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          bottom: PreferredSize(
              child: Container(
                alignment: Alignment.topLeft,
                child: TabBar(
                  indicatorWeight: 4.0,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: tabs,
                  isScrollable: true,
                  labelStyle: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 13.5),
                  labelColor: primaryColor,
                  indicatorColor: primaryColor,
                  unselectedLabelColor: Colors.black,
                ),
              ),
              preferredSize: Size.fromHeight(40)),
        ),
        body: TabBarView(children: [ChatRooms(), Archive()]),
      ),
    );
  }
}

class ChatRooms extends StatelessWidget {
  final List imgs = [
    "assets/profiles/img1.png",
    "assets/profiles/img2.png",
    "assets/profiles/img3.png",
    "assets/profiles/img4.png",
    "assets/profiles/img1.png",
    "assets/profiles/img3.png",
    "assets/profiles/img4.png",
    "assets/profiles/img2.png"
  ];
  final List names = [
    "George Anderson",
    "Emili Williamson",
    "Mark Taylor",
    "Lisa Davis",
    "Deneil Haydon",
    "Emili Williamson",
    "Mark Taylor",
    "Lisa Davis",
  ];

  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      color: backgroundColor,
      child: FadedSlideAnimation(
        ListView.builder(
          padding: EdgeInsets.only(bottom: 10),
          itemCount: 8,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChatPage()));
              },
              child: Container(
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  leading: Container(
                    child: Image.asset(imgs[index]),
                    height: 50,
                  ),
                  title: Text(
                    names[index],
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 13.5),
                  ),
                  subtitle: Row(
                    children: [
                      Text(locale!.no!,
                          style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              fontSize: 12, color: Color(0xffa8aeb2))),
                      Spacer(),
                      Text("20 min",
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 10, color: Color(0xffcccccc))),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
        beginOffset: Offset(0.4, 0),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }
}

class Archive extends StatelessWidget {
  final List imgs = [
    "assets/profiles/img1.png",
    "assets/profiles/img2.png",
    "assets/profiles/img3.png",
    "assets/profiles/img4.png",
  ];
  final List names = [
    "George Anderson",
    "Emili Williamson",
    "Mark Taylor",
    "Lisa Davis",
  ];

  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      color: backgroundColor,
      child: FadedSlideAnimation(
        ListView.builder(
          padding: EdgeInsets.only(bottom: 10),
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChatPage()));
              },
              child: Container(
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  leading: Container(
                    child: Image.asset(imgs[index]),
                    height: 50,
                  ),
                  title: Text(
                    names[index],
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 13.5,
                        ),
                  ),
                  subtitle: Row(
                    children: [
                      Text(locale!.no!,
                          style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              fontSize: 12, color: Color(0xffa8aeb2))),
                      Spacer(),
                      Text("20 min",
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 10, color: Color(0xffcccccc))),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
        beginOffset: Offset(0.4, 0),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }
}
