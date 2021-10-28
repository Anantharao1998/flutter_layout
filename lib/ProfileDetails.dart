import 'package:flutter/material.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String avatar = 'https://pic.onlinewebfonts.com/svg/img_550783.png';
    String first_name = 'First';
    String last_name = 'Lastname';
    String username = 'Username';
    String last_seen_time = '10.11pm';

    return Container(
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
                    child: Image.network(avatar),
                  ),
                ),
                Container(
                  height: 100,
                  width: 225,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 10.0),
                        child: Text(
                          '$first_name and $last_name',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 10),
                        child: Text(
                          '$username',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 2.5),
                        child: Text(
                          'Status....!',
                          style: TextStyle(fontSize: 20, color: Colors.grey),
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
                        child: Text('$last_seen_time'),
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
                            "23",
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
    );
  }
}
