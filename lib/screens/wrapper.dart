import 'package:flutter/material.dart';
import 'package:flutter_firebase/screens/authenticate/authenticate.dart';
import 'package:flutter_firebase/screens/home/home.dart';
import 'package:flutter_firebase/models/app_user.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<AppUser>(context);

    // return either Home or Auth widget
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }

  }
}
