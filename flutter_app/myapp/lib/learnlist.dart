import 'package:flutter/material.dart';

class Learnlist extends StatefulWidget {
  const Learnlist({super.key});

  @override
  State<Learnlist> createState() => _LearnlistState();
}

class _LearnlistState extends State<Learnlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: ListView(children: [Text("Riju Manandhar"), Text("Hello!")]),
          ),
          SizedBox(
            height: 100,
            child: Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Text(index.toString());
                },
              ),
            ),
          ),
          SizedBox(
            height: 100,
            child: Expanded(
              child: ListView.builder(
                itemCount: stringList.length,
                itemBuilder: (context, index) {
                  final str = stringList[index];
                  return Text(str);
                },
              ),
            ),
          ),
          SizedBox(
            height: 100,
            child: Expanded(
              child: ListView.builder(
                itemCount: sList.length,
                itemBuilder: (context, index) {
                  final abc = sList[index];
                  return Text(abc);
                },
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: kuchoList.length,
              itemBuilder: (context, index) {
                final str = kuchoList[index];
                return Column(
                  children: [Text(str.name ?? ""), Text(str.brand ?? "")],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

List<String> stringList = ["Riju", "Rija", "Swostika", "Yunisha", "Ram"];
List<String> sList = ["Riju", "Rija", "Swostika", "Yunisha", "Ram"];

class Kucho {
  String? name;
  String? brand;
  Kucho(this.name, this.brand);
}

List<Kucho> kuchoList = [
  Kucho("Jhadu", "LG"),
  Kucho("uvakjc", "jegccbc"),
  Kucho("kqeb", "kadv"),
  Kucho("vfnkv", "dvbjb"),
];
