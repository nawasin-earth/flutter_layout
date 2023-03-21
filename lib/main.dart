import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // root
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Members',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Members"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(children: [
            Card(
                context: context,
                color: Colors.white,
                blocktext: "nawasin intem",
                imgPath:
                    "https://scontent.futh1-1.fna.fbcdn.net/v/t39.30808-6/322180316_2377445172411647_8999569951487089387_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHySX2fyuVg2R0VcxjczXFofYu4Veh7Ph99i7hV6Hs-H1P5upHtO6hozwCqKaw-r_xXfWGILgyhA7cvZNbTsDts&_nc_ohc=lF5VgTvsW-gAX81X5Ib&_nc_ht=scontent.futh1-1.fna&oh=00_AfBfbLPvYi6nWkDobUMgOPSCqthY5adhCCCUfPBG5FDA7Q&oe=641E6D40",
                nickname: "earth",
                stuID: "Student-ID : 633410016-0",
                contact: "FB: nawasin intem"),
            Card(
                context: context,
                color: Colors.white,
                blocktext: "Jeerasak Phalee",
                imgPath:
                    "https://scontent.futh1-1.fna.fbcdn.net/v/t39.30808-6/311643047_3272508826338306_3582498542528085903_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeGqtkGZO9kYfyLyktj49KWgBOGylMFdzOgE4bKUwV3M6HH2TdVe6_raYZ5EzuR6KUsYPGDBp8Dxb8dciWkQJARa&_nc_ohc=tzqWtYuCd4oAX8uVgcX&_nc_ht=scontent.futh1-1.fna&oh=00_AfDDrcn5PGfuta6lHtw84kQ2H6OG8dcA9_wZ2509HLQ_oA&oe=641E06AB",
                nickname: "Jonus",
                stuID: "Student-ID : 633410009-7",
                contact: "FB: Jeerasak Phalee"),
            Card(
                context: context,
                color: Colors.white,
                blocktext: "Nattawat Wilai",
                imgPath:
                    "https://scontent.futh1-1.fna.fbcdn.net/v/t39.30808-6/283917183_1915172192012669_129191124400808929_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeGoiEA9KVV98Xev1gEwyttP-8APmxhPsGL7wA-bGE-wYiLusNHiISRIDphW4Uh7IkgSrYimTaqqPpzLnSOax4qz&_nc_ohc=_9aWQxqsfGoAX8yYs0B&_nc_ht=scontent.futh1-1.fna&oh=00_AfB_ad86_5y7zitUexR4elzpoY771Cx8RTsTpmoQjpp4oQ&oe=641EAC04",
                nickname: "Bom",
                stuID: "Student-ID : 633410013-6",
                contact: "FB: Nattawat Wilai"),
            Card(
                context: context,
                color: Colors.white,
                blocktext: "Anusit Kitudomsuk",
                imgPath:
                    "https://scontent.futh1-1.fna.fbcdn.net/v/t39.30808-6/321287211_848595556407400_7704011169296610361_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFaq-1IYEa5iPDozUrNH819ZW8qCRSKZ4dlbyoJFIpnhxhH88QP_A7oCUxlutiSy3nQKgV9rlXOI7FL9nCZ6hoX&_nc_ohc=NdmeAJTPk94AX_JKpx1&_nc_ht=scontent.futh1-1.fna&oh=00_AfCvmABmEYQ0Jop4KV2osKz3aiWxwTtLYBsNdOY9n6BSmg&oe=641DF736",
                nickname: "Kanun",
                stuID: "Student-ID : 633410036-4",
                contact: "FB: Kanun Anusit"),
          ]),
        ),
      ),
    );
  }

  Widget Card(
      {required BuildContext context,
      required Color color,
      required String blocktext,
      required String imgPath,
      required String nickname,
      required String stuID,
      required String contact}) {
    return Container(
      width: 3000,
      color: Colors.white,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Profile(
                      name: blocktext,
                      imPath: imgPath,
                      nickname: nickname,
                      id: stuID,
                      contact: contact)));
        },
        child: Column(
          children: [
            CircleAvatar(radius: 110, backgroundImage: NetworkImage(imgPath)),
            Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                //margin: EdgeInsets.all(10),
                color: color,
                child: Center(child: Text(blocktext))),
          ],
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  Profile(
      {required this.name,
      required this.nickname,
      required this.imPath,
      required this.id,
      required this.contact});
  String name;
  String nickname;
  String imPath;
  String id;
  String contact;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About"),
      ),
      body: Column(
          children:[Text(name), Text(id), Text(nickname), Text(contact)]),
    );
  }
}