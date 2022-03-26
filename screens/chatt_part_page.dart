import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:umberto/constants/strings.dart';

// ignore: must_be_immutable
class ChartPartPage extends StatelessWidget {
  String imageUrl;
  bool status;
  String name, time, message;
  int notificationStatus;

  ChartPartPage(
    this.status,
    this.imageUrl,
    this.name,
    this.notificationStatus,
    this.message,
    this.time,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        children: <Widget>[
          const SizedBox(height: 15.0),
          buildCustomTextField(),
          const SizedBox(height: 15.0),
          buildCarouselSlider(),
          buildChatsTile(),
        ],
      ),
    );
  }

  Expanded buildCarouselSlider() {
    return Expanded(
      flex: 3,
      child: CarouselSlider(
        items: imagesList
            .map(
              (item) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  margin: const EdgeInsets.only(
                    top: 10.0,
                    bottom: 10.0,
                  ),
                  elevation: 6.0,
                  shadowColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: <Widget>[
                        Image.network(
                          item,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            titleList[0],
                            style: const TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              backgroundColor: Colors.black54,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
            .toList(),
        options: CarouselOptions(
          autoPlay: true,
          enlargeCenterPage: true,
          viewportFraction: 0.9,
          aspectRatio: 2.0,
          initialPage: 2,
        ),
      ),
    );
  }

  Expanded buildChatsTile() {
    return Expanded(
      flex: 5,
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(appBarBorderRadius),
                    color: defaultColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(0.75),
                    child: Container(
                      height: appBarHeightWidht,
                      width: appBarHeightWidht,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(appBarBorderRadius),
                        color: isOnlineColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(name, style: cardNameStyle),
                    Text(time, style: cardTextStyleOther),
                  ],
                ),
                const SizedBox(
                  height: 2.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(message, style: messageStyle),
                    Container(
                      height: 17.0,
                      width: 27.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(appBarBorderRadius),
                        color: deepOrangeColor,
                      ),
                      child: Center(
                        child: Text(
                          '$notificationStatus',
                          style: cardStatus,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: appBarColor,
      title: Text(appBarTextTitle),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 17.5, top: 10.0),
          child: Row(
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(appBarBorderRadius),
                      color: defaultColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(0.75),
                      child: Container(
                        height: appBarHeightWidht,
                        width: appBarHeightWidht,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(appBarBorderRadius),
                          color: isOnlineColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Padding buildCustomTextField() {
    return Padding(
      padding: const EdgeInsets.only(left: 35.0, right: 35.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(appBarBorderRadius),
          color: searchField,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: Icon(
                  iconData[0],
                  color: colorGrey,
                ),
              ),
              const SizedBox(width: 5.0),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: hintText,
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

final List<String> imagesList = [
  'https://picsum.photos/400/600',
  'https://picsum.photos/400/600',
  'https://picsum.photos/400/600',
];

final List<String> titleList = [
  'Advertisement',
];
