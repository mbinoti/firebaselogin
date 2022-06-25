import 'package:appfirebase/authentication.dart';
import 'package:appfirebase/login.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(child: Text('Welcome')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AuthenticationHelper()
              .signOut()
              .then((_) => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (contex) => Login()),
                  ));
        },
        child: Icon(Icons.logout),
        tooltip: 'Logout',
      ),
    );
  }
}
