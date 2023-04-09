import 'package:flutter/material.dart';
import 'package:syp/src/repository/authentication_repository/authentication_repository.dart';
import '../../../../constants/text_strings.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu, color: Colors.black,),
        title: Text(kAppname, style: Theme.of(context).textTheme.headlineMedium,),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(40.0),
          child: IconButton(onPressed: () {
            AuthenticationRepository.instance.logout();
          },
          icon: const Icon(Icons.person_outline_outlined),
          ),
        ),
      ),
    );
  }
}