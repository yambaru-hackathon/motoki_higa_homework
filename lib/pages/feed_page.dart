import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(IconData(0xe093, fontFamily: 'MaterialIcons', matchTextDirection: true),),
        title: const Row(
          children: [
            SizedBox(width: 100,),
            Column(
              children: [
                Text(
                  'INSTAGRAM',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                Text(
                  '投稿',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(
            height: 3,
            color: Color.fromARGB(255, 242, 241, 241),
          )),
        ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children:[
                const SizedBox(width: 10),
                Image.network(
                      'https://w7.pngwing.com/pngs/953/528/png-transparent-instagram-icon-logo-desktop-computer-icons-instagram-miscellaneous-text-bing.png',
                      width: 45,                          
                  ),
                const SizedBox(width: 15),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Instagram',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            )
                        ),
                        SizedBox(width: 4),
                        Icon(
                          IconData(
                            0xe856, 
                            fontFamily: 'MaterialIcons',
                            ),
                            color: Colors.blue,
                            size: 15,
                        ),
                      ]
                    ),
                    Text(
                      'サンディエゴ',
                      style: TextStyle(fontSize: 13)
                      ),
                  ],
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.more_horiz),
                  onPressed: ()=>{}
                ),
              ],
            ),
              const SizedBox(height: 10),
              Container(
                child: Stack(
                  children: [
                    Image.network(
                      'https://illust55.com/wp-content/uploads/2022/06/%E6%A9%8B%E3%81%AE%E7%BE%8E%E3%81%97%E3%81%84%E5%A4%95%E6%97%A5%E3%81%A8%E3%81%8D%E3%82%8C%E3%81%84%E3%81%AA%E5%BA%83%E3%81%8C%E3%82%8B%E8%A1%97%E4%B8%A6%E3%81%BF%E3%81%A8%E9%9B%B2%E3%81%AE%E5%B0%91%E5%B9%B4%E5%B0%91%E5%A5%B3%E3%81%AE%E3%83%95%E3%83%AA%E3%83%BC%E3%82%A4%E3%83%A9%E3%82%B9%E3%83%88%E5%A3%81%E7%B4%99%E7%B4%A0%E6%9D%90.jpg',
                    ),
                    Positioned(
                      right: 10,
                      top: 15,
                      child: Container(
                        width: 38,
                        height: 28,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          '1/3',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ),
                    ),
                    Positioned(
                      left: 10,
                      bottom: 10,
                            child: Icon(
                              IconData(0xe043, fontFamily: 'MaterialIcons'),
                              color: Colors.black,
                              size: 40,
                            ),
                          ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  SizedBox(width: 12),
                  Icon(
                    IconData(0xe958, fontFamily: 'MaterialIcons'),
                    size: 30,
                  ),
                  SizedBox(width: 15),
                  Icon(
                    IconData(0xf1d6, fontFamily: 'MaterialIcons'),
                    size: 30,
                  ),
                  SizedBox(width: 15),
                  Icon(
                    IconData(0xf354, fontFamily: 'MaterialIcons'),
                    size: 30,
                  ),
                  Spacer(),
                  Icon(
                    Icons.bookmark_outline,
                    size: 30,
                  ),
                  SizedBox(width: 12),
                ],
              ),
              const SizedBox(height: 8),
              const Row(
                children: [
                  SizedBox(width: 15),
                  Text(
                    '「いいね！」',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '704,899件',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const Row(
                children:[
                SizedBox(width: 13),
                Text(
                  "instagram Styel and sustainability don't have to be",
                  style: TextStyle(
                    fontSize: 17,
                  )
                  ),
                ]
              ),
          ],
        ),
      ),
    );
  }
}