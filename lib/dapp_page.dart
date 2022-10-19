
import 'package:flutter/material.dart';

class Dapp extends StatefulWidget {
  const Dapp({super.key});

  @override
  State<Dapp> createState() => _DappState();
}

class _DappState extends State<Dapp> {
  final List<Dapps> dlinks = [
    Dapps(
        id: 1,
        name: 'PancakeSwap',
        image: 'https://cryptologos.cc/logos/pancakeswap-cake-logo.png?v=023',
        link: 'https://pancakeswap.finance/',
        description:
            'PancakeSwap has the most users of any decentralized platform, ever. And those users are now entrusting the platform.'),
    Dapps(
      id: 2,
      name: 'UniSwap',
      image: 'https://cryptologos.cc/logos/uniswap-uni-logo.png?v=023',
      link: 'https://uniswap.org/',
      description:
            'PancakeSwap has the most users of any decentralized platform, ever. And those users are now entrusting the platform.'
    ),
    Dapps(
      id: 3,
      name: '1inch',
      image: 'https://cryptologos.cc/logos/1inch-1inch-logo.png?v=023',
      link: 'https://app.1inch.io/',
      description:
            'PancakeSwap has the most users of any decentralized platform, ever. And those users are now entrusting the platform.'
    ),
  ];
  // List<Url> _urlsToLaunch = [
  //  Uri(id:1, link: "https://pancakeswap.finance/",),
  //  Uri(id:2, link:"https://uniswap.org/"),
  //  Uri(id:3, link:"https://app.1inch.io/"),
    
    
  // ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.black
            ),
          body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: dlinks.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                    onTap: () {
                
              },
              child: Row(
                children: [
                  SizedBox(
                    height: 90,
                  ),
                  
                  
                  Column(
                    children: [
                      Image.network(
                        dlinks[index].image,
                        width: 50,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        dlinks[index].name,
                        style: TextStyle(
                            fontFamily: 'DM Sans',
                            color: Colors.white,
                            fontSize: 14),
                      )
                    ],
                  )
                ],
              ));
            }),
      )),
    );
  }
  // _launchUrl(index) async {
    
  // final url = Uri.parse(_urlsToLaunch[index].link);
  //   if (await canLaunchUrl(url)) {
  //   await launchUrl(url);
  // } else {
  //   throw 'Could not launch $_urlsToLaunch';
  // }
    // // ignore: deprecated_member_use
    // if (await canLaunch(_urlsToLaunch[index])) {
    //   // ignore: deprecated_member_use
    //   await launch(_urlsToLaunch[index]);
    // } else {
    //   throw "Could not open $_urlsToLaunch";
    // }
  //}
}

class Dapps {
  Dapps({
    required this.id,
    required this.name,
    required this.image,
    required this.link,
    required this.description,
  });
  late int id;
  late String name;
  late String image;
  late String link;
  late String description;
}

class Url {
  Url({
    required this.id,
    required this.link,
}
);
int id;
String link;

}

