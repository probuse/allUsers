import 'package:flutter/material.dart';
import '../../global_variables.dart';
import '../../models/user.dart';
import '../../views/widgets/user_widget.dart';

class AllUsersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      leading: BackButton(color: darkslategray),
      title: Text(
        "All Users",
        style: TextStyle(
          color: darkslategray,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _body() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _totalActiveUsersContainer("Total 2 active users"),
            SizedBox(height: 20.0),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.only(top: 8.0),
                shrinkWrap: true,
                children: [
                  UserWidget(
                    user: User(
                        userNames: "etwin himself",
                        isActive: true,
                        isAdmin: true,
                        userImageURL: "assets/etwin.jpg"),
                  ),
                  SizedBox(height: 30.0),
                  UserWidget(
                    user: User(
                        userNames: "Baluku Brian",
                        isActive: true,
                        isAdmin: false,
                        userImageURL: "assets/brian.jpeg"),
                  ),
                  SizedBox(height: 30.0),
                  UserWidget(
                    user: User(
                        userNames: "Isiiko Ivan",
                        isActive: true,
                        isAdmin: false,
                        userImageURL: "assets/isiiko.jpeg"),
                  ),
                  SizedBox(height: 30.0),
                  UserWidget(
                    user: User(
                        userNames: "Adonyo Maurice",
                        isActive: false,
                        isAdmin: false,
                        userImageURL: "assets/maurice.jpeg"),
                  ),
                  SizedBox(height: 30.0),
                  UserWidget(
                    user: User(
                        userNames: "Edgar Baluku",
                        isActive: false,
                        isAdmin: false,
                        userImageURL: "assets/edgar.jpeg"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  BottomAppBar _bottomNavigationBar() {
    return BottomAppBar(
      child: Container(
        child: TextButton(
          child: Text(
            "Add User",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
          ),
          onPressed: () {},
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: darkslategray,
        ),
        height: 70.0,
        margin: const EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 10.0,
        ),
      ),
    );
  }

  Container _totalActiveUsersContainer(String text) {
    return Container(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "•",
            style: TextStyle(
              color: greenColor,
              fontSize: 30.0,
            ),
          ),
          Text(
            text,
            style: TextStyle(
              color: greenColor,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: greenColor,
        ),
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.greenAccent.withOpacity(0.4),
      ),
      height: 60.0,
      padding: const EdgeInsets.all(8.0),
    );
  }
}
