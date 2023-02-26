import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  const CustomListTile({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
    );
  }
}

List<Widget> getWidgets(List<String> titles) {
  List<Widget> list = [];
  for (int i = 0; i < titles.length; i++) {
    list.add(CustomListTile(title: titles[i]));
  }

  return list;
}

class CustomExpandedListTile extends StatelessWidget {
  final String title;
  final List<String> children;

  const CustomExpandedListTile(
      {super.key, required this.title, required this.children});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(title),
      children: getWidgets(children),
    );
  }
}

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
