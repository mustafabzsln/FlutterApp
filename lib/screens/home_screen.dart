import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController text1 = TextEditingController();
  TextEditingController text2 = TextEditingController();
  double? sonuc = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomeScreen"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                Text(
                  "Mustafa'nın Hesap Makinesi",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.green,
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  controller: text1,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(), labelText: 'Sayı 1'),
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  controller: text2,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(), labelText: 'Sayı 2'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        sonuc =
                            double.parse(text1.text) + double.parse(text2.text);
                        setState(() {});
                      },
                      child: Text('Topla'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        sonuc =
                            double.parse(text1.text) - double.parse(text2.text);
                        setState(() {});
                      },
                      child: const Text('Çıkart'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        sonuc =
                            double.parse(text1.text) * double.parse(text2.text);
                        setState(() {});
                      },
                      child: const Text('Çarp'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        sonuc =
                            double.parse(text1.text) / double.parse(text2.text);
                        setState(() {});
                      },
                      child: const Text('Böl'),
                    ),
                  ],
                ),
                Text("Sonuç : $sonuc")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
