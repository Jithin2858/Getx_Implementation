import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task5/domain/modal_class.dart';
import 'package:get/get.dart';

class MovieTile extends StatelessWidget {

  //final Movie movie;
  final Datum datum; //error must be here
  const MovieTile(this.datum);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
          backgroundImage: NetworkImage(datum.avatar)
      ),
      title: Text(datum.firstName),
      subtitle: Text("email:" + datum.email),
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Getx Implementation Completed Successfully"),
        ));
      },
    );
  }
}
