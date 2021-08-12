import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:maan_application_1/auth/data/auth_helper.dart';
import 'package:maan_application_1/auth/ui/login_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.logout,
              color: Colors.white,
            ),
            onPressed: () {
              AuthHelper.authHelper
                  .signOut(AuthHelper.authHelper.getCurrentUser().email);
              if (Navigator.canPop(context)) {
                Navigator.pop(context);
              } else {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => LoginScreen()),
                // );
                SystemNavigator.pop();
              }
            },
          )
        ],
      ),
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}
