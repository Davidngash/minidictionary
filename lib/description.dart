import 'package:flutter/material.dart';
import 'package:minidictionary/api.dart';
import 'package:minidictionary/dummydata.dart';

class NamesDescription extends StatefulWidget {
  const NamesDescription({super.key});

  @override
  State<NamesDescription> createState() => _NamesDescriptionState();
}

class _NamesDescriptionState extends State<NamesDescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Description'),
      ),
      body: Column(
        children: [Container()],
      ),
    );
  }
}
