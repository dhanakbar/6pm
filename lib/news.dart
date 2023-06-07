import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'app_styles.dart';
import 'size_config.dart';
import 'package:polres/detailpage.dart';
import 'package:http/http.dart' as http;

class NewsScreen extends StatefulWidget {
  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen>
    with SingleTickerProviderStateMixin {
  // List _get = [];
  List<Tab> _tablist = [
    Tab(
      child: Text("Dota 2"),
    ),
    Tab(
      child: Text("Mobile Legend"),
    ),
    Tab(
      child: Text("CS:GO"),
    ),
    Tab(
      child: Text("LoL"),
    ),
    Tab(
      child: Text("PUBG"),
    ),
    Tab(
      child: Text("Free Fire"),
    ),
  ];

  late TabController _tabController;
  @override
  void initState() {
    // Ghozal edit disini

    // clue initial state dan call get state dan set controller tab

    // end of edit
  }

  Future _getData() async {
    try {
      // Ghozal edit disini

      // clue fetching ""https://newsapi.org/v2/top-headlines?country=us&category=sport&apiKey=5aae54827e234012a40622562bbe190b""

      // untuk cek data
      if (response.statusCode == 200) {
        // Clue decode dan set to get
      }
    } catch (e) {
      print(e);
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60.0,
        backgroundColor: Color(0xFFFAFAFA),
        centerTitle: true,
        title: Text(
          "News",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(30.0),
          child: TabBar(
            indicatorColor: Colors.black,
            isScrollable: true,
            labelColor: Colors.black,
            controller: _tabController,
            tabs: _tablist,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: _get.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              color: Colors.grey[200],
              height: 100,
              width: 100,
              child: _get[index]['urlToImage'] != null
                  ? Image.network(
                      _get[index]['urlToImage'],
                      width: 100,
                      fit: BoxFit.cover,
                    )
                  : Center(),
            ),
            title: Text(
              '${_get[index]['title']}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text(
              '${_get[index]['description']}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (c) => 
                  // Ghozal edit disini
                  // panggil detail page
                ),
              );
            },
          );
        },
      ),
    );
  }
}
