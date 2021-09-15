// import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:json_manipulation/view_model/user_model.dart';
import 'package:provider/provider.dart';

class JsonPage extends StatefulWidget {
  const JsonPage({Key? key}) : super(key: key);

  @override
  _JsonPageState createState() => _JsonPageState();
}

class _JsonPageState extends State<JsonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JSON Manipulation"),
      ),



      // TODO: ------------------------------------ Find items in the Meeting Room ------------------------------------
        body: ChangeNotifierProvider(
          create: (context) => UserModel(),
          child: Builder(builder: (context) {
            final model = Provider.of<UserModel>(context);
            final users = model.users;
            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index]; 
                return Text((user.placement.name == 'Meeting Room') ? user.tags.toString() : ""); 
              },
            );
          }), 
        ),
      //  ------------------------------------ Find items in the Meeting Room ------------------------------------



      // TODO: ------------------------------------ Find all electronic devices ------------------------------------
        // body: ChangeNotifierProvider(
        //   create: (context) => UserModel(),
        //   child: Builder(builder: (context) {
        //     final model = Provider.of<UserModel>(context);
        //     final users = model.users;
        //     return ListView.builder(
        //       itemCount: users.length,
        //       itemBuilder: (context, index) {
        //         final user = users[index]; 
        //         return Text((user.type == 'electronic') ? user.tags.toString() : ""); 
        //       },
        //     );
        //   }), 
        // ),
      //  ------------------------------------ Find all electronic devices ------------------------------------



      // TODO: ------------------------------------ Find all the furniture ------------------------------------
        // body: ChangeNotifierProvider(
        //   create: (context) => UserModel(),
        //   child: Builder(builder: (context) {
        //     final model = Provider.of<UserModel>(context);
        //     final users = model.users;
        //     return ListView.builder(
        //       itemCount: users.length,
        //       itemBuilder: (context, index) {
        //         final user = users[index]; 
        //         return Text((user.type == 'furniture') ? user.tags.toString() : ""); 
        //       },
        //     );
        //   }), 
        // ),
      //  ------------------------------------ Find all the furniture ------------------------------------



    );
  }
}
