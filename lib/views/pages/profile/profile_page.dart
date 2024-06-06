
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home/widgets/dark.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30,),
              Dark(),
            ],
          ),
        ),
      ),
    );
  }
}
