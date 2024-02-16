import 'package:flutter/material.dart';

class SearchToiletPage extends StatefulWidget {
  const SearchToiletPage({super.key});

  @override
  State<SearchToiletPage> createState() => _SearchToiletPageState();
}

class _SearchToiletPageState extends State<SearchToiletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Image.network('https://lh5.googleusercontent.com/p/AF1QipN-Gqu5hu58hFs1Iwe7zTvL-rLAaa_govQJc1Te=w408-h306-k-no'),
          SizedBox(height: 8),
          Text(
            'トイレ名',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              ),
            ),
            SizedBox(height: 8),
          ElevatedButton(
            onPressed: (){

            }, 
            child: Text('Google mapへ'),
            ),
        ],
      )
    );
  }
}