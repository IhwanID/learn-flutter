import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "ListView",
    home: new Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
     appBar: new AppBar(
       backgroundColor: Colors.amberAccent,
       title: new Text("Tokoh Penting"),
     ),
     body: new ListView(
       children: <Widget>[
         new ListTokoh(url: "http://asset-a.grid.id/crop/0x0:0x0/700x465/photo/grid/original/52211_hijab-motif-bunga-memberi-kesan-feminin-sekaligus-cantik-awkarin-tetap-memulas-lipstik-warna-merah.png",name: "Awkarin", profesi: "Selebgram",),
         new ListTokoh(url: "http://www.genmuda.com/wp-content/uploads/2017/08/young-lex-problem-meme.jpg", name: "Young Lex", profesi: "K-Popers",),
         new ListTokoh(url: "http://cdn2.tstatic.net/kaltim/foto/bank/images/bowo-alpenliebe-artis-tik-tok_20180630_131351.jpg",name: "Bowo", profesi: "Tiktokers",),
         new ListTokoh(url: "https://galaticgameblog.files.wordpress.com/2017/02/img_20170224_204346_654.jpg?w=1000", name: "Reza Arap", profesi: "Gamers Idaman",),
         new ListTokoh(url: "https://yt3.ggpht.com/a-/ACSszfHGrHHO-lYROzUwWi2-jPg96b-TxIkEL1QEkA=s900-mo-c-c0xffffffff-rj-k-no",name: "Qory Gore", profesi: "Youtuber religius",),
         new ListTokoh(url: "https://4.bp.blogspot.com/-53rpZTDWBrA/WV_LAK1IG6I/AAAAAAAABaA/Yy_Qy75uQL8NkNQg89Q8FctwXoK7P0JVwCLcBGAs/s1600/Agung%2BHapsah.PNG", name: "Agung Hapsah", profesi: "Film Maker",),
         new ListTokoh(url: "https://awsimages.detik.net.id/community/media/visual/2018/04/20/b4d85399-a743-4a81-a7cd-d82b5c619e58_169.jpeg?w=780&q=90",name: "Rocky Gerung", profesi: "Politikus",),
         new ListTokoh(url: "https://yt3.ggpht.com/a-/ACSszfEeHNYwCDEIl9Qdqn49fl9n2NfyjdFCphz-vQ=s900-mo-c-c0xffffffff-rj-k-no", name: "Ihwan ID", profesi: "Orang Biasa",),

       ],
     ),
    );
  }
}

class ListTokoh extends StatelessWidget {
  ListTokoh ({this.url, this.name, this.profesi});

  final String url;
  final String name;
  final String profesi;
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
       child: 
      new Card(
          child: new Row(
            children: <Widget>[
              new Image(image: new NetworkImage(url),width: 150.0,),
              new Container( 
                
            padding: new EdgeInsets.all(10.0),
                  child: new Column(
                  children: <Widget>[
                    new Text(name, style: new TextStyle(fontSize: 20.0),),
                    new Text(profesi, style: new TextStyle(fontSize: 15.0),),
                    
                  ],
                ),
                
                
              )
              
            ],
        ),
        ));
  }
}