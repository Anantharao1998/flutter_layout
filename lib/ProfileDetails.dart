import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_layout/details.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'details.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ReadJsonData(),
      builder: (context, data) {
        var items = data.data as List<Details>;

        return ListView.builder(
          itemBuilder: (context, index) => Container(
            child: Column(
              children: [
                Divider(
                  color: Colors.black,
                ),
                Container(
                  margin: EdgeInsets.all(2.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 100,
                  child: Row(
                    children: [
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(left: 5, right: 20),
                          width: 80,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                '${items[index].avatar.toString()}'),
                          ),
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 225,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15.0, top: 10.0),
                              child: Text(
                                '${items[index].first_name.toString()} ${items[index].last_name.toString()}',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15.0, top: 10),
                              child: Text(
                                '${items[index].username.toString()}',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15.0, top: 2.5),
                              child: Text(
                                '${items[index].status.toString()}',
                                style:
                                    TextStyle(fontSize: 20, color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 70,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: Text(
                                  '${items[index].last_seen_time.toString()}'),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 15),
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.blue[400],
                                borderRadius: BorderRadius.circular(400),
                              ),
                              child: Center(
                                child: Text(
                                  '${items[index].message.toString()}',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<List<Details>> ReadJsonData() async {
    final jsondata =
        await rootBundle.rootBundle.loadString('jsonfile/sample.json');

    final list = json.decode(jsondata) as List<dynamic>;

    return list.map((e) => Details.fromJson(e)).toList();
  }
}
