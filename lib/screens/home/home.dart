import 'package:flutter/material.dart';
import 'package:flutter_firebase/services/auth.dart';

class Home extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: Text('Brew Crew'),
        backgroundColor: Colors.brown[400],
        elevation: 0,
        actions: [
          FlatButton.icon(
              onPressed: () async {
                await _auth.signOut();
              },
              icon: Icon(Icons.person, color: Colors.white,),
              label: Text('Log Out', style: TextStyle(color: Colors.white)),
          )
        ],
      ),
    );
  }
}
