import 'package:flutter/material.dart';
import '../../models/user.dart';
import '../../global_variables.dart';

class UserWidget extends StatelessWidget {
  final User user;
  const UserWidget({Key key, @required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                user.userImageURL,
                height: 100.0,
                fit: BoxFit.cover,
              ),
            ),
            flex: 1,
          ),
          SizedBox(width: 8.0),
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _userNames(),
                  SizedBox(height: 4.0),
                  Row(
                    children: [
                      _activeContainer(user.isActive),
                      SizedBox(width: 4.0),
                      user.isAdmin ? _isAdminContainer() : Container(),
                    ],
                  ),
                  SizedBox(height: 12.0),
                  !user.isAdmin ? _removeUserContainer() : Container()
                ],
              ),
            ),
            flex: 2,
          ),
        ],
      ),
    );
  }

  Text _userNames() {
    return Text(
      user.userNames,
      style: TextStyle(
        color: darkslategray,
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Container _removeUserContainer() {
    return Container(
      child: Row(
        children: [
          Icon(
            Icons.delete_outline,
            size: 14,
            color: redColor,
          ),
          SizedBox(width: 4.0),
          Text(
            "Remove User",
            style: TextStyle(
              color: redColor,
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Container _activeContainer(bool isActive) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "•",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: isActive ? greenColor : greyColor,
              fontSize: 20.0,
            ),
          ),
          Text(
            "Active User",
            style: TextStyle(
              color: isActive ? greenColor : greyColor,
              fontSize: 11.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: isActive ? greenColor : greyColor,
        ),
        borderRadius: BorderRadius.circular(8.0),
        color: isActive
            ? Colors.greenAccent.withOpacity(0.4)
            : greyColor.withOpacity(0.4),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
    );
  }

  Container _isAdminContainer() {
    return Container(
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "•",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: redColor,
              fontSize: 20.0,
            ),
          ),
          Text(
            "Admin",
            style: TextStyle(
              color: redColor,
              fontSize: 11.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: redColor,
        ),
        borderRadius: BorderRadius.circular(8.0),
        color: redColor.withOpacity(0.2),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
    );
  }
}
