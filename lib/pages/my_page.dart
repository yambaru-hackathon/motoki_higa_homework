import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  MyPage({super.key});

  final images = [
    'https://w7.pngwing.com/pngs/953/528/png-transparent-instagram-icon-logo-desktop-computer-icons-instagram-miscellaneous-text-bing.png',
    'https://images.unsplash.com/photo-1705579608433-25fba5aa1fdf?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1682685797527-63b4e495938f?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://w7.pngwing.com/pngs/953/528/png-transparent-instagram-icon-logo-desktop-computer-icons-instagram-miscellaneous-text-bing.png',
    'https://images.unsplash.com/photo-1705579608433-25fba5aa1fdf?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1682685797527-63b4e495938f?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://w7.pngwing.com/pngs/953/528/png-transparent-instagram-icon-logo-desktop-computer-icons-instagram-miscellaneous-text-bing.png',
    'https://images.unsplash.com/photo-1705579608433-25fba5aa1fdf?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1682685797527-63b4e495938f?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://w7.pngwing.com/pngs/953/528/png-transparent-instagram-icon-logo-desktop-computer-icons-instagram-miscellaneous-text-bing.png',
    'https://images.unsplash.com/photo-1705579608433-25fba5aa1fdf?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1682685797527-63b4e495938f?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('マイページ')),
      body: SingleChildScrollView(
        child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(children:[
                Image.network(
                  'https://w7.pngwing.com/pngs/953/528/png-transparent-instagram-icon-logo-desktop-computer-icons-instagram-miscellaneous-text-bing.png',
                  width: 80,
              ),
              const Spacer(),
              const Column(
                children: [
                  Text(
                    '7,041', 
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      ),
                    ),
                    Text('投稿')
                ],
              ),
              const SizedBox(width: 16),
              const Column(
                children: [
                  Text(
                    '4.6億',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      ),
                    ),
                  Text('フォロワー')
                ],
              ),
              const SizedBox(width: 16),
              const Column(
                children: [
                  Text(
                    '99',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      ),
                    ),
                  Text('フォロー中')
                ],
              ),
            ]
            ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                  'instagram',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    ),
                  ),
                Text(
                  '#YoursToMake',
                  style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                Text(
                  'help.instagram.com',
                  style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                            child: const Text(
                              'フォロー中',
                              style: TextStyle(
                                color:Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                )
                              ),
                          ),
                        ),
                        const SizedBox(width: 4),
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                            child: const Text(
                              'メッセージ', 
                              style: TextStyle(
                                color:Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                )
                              ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 4),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: const Icon(Icons.keyboard_arrow_down, color: Colors.black),
                  ),
                ],
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              primary: false,
              crossAxisCount: 3,
              children: images.map((imageUrl){
                return InstagramPostItem(imageUrl: imageUrl);
              }
              ).toList(),
            ),
            ],
          )
      ),
    );
  }
}

class InstagramPostItem extends StatelessWidget {
  const InstagramPostItem({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      fit: BoxFit.cover,
    );
  }
}