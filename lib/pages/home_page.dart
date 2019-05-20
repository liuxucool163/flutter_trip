import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _imageUrls = [
    'http://hbimg.b0.upaiyun.com/62ab79fcd20d1368b8039a78f16adbaa1e9b8d35890c7-5dOfYn_fw658',
    'http://pic32.nipic.com/20130823/13339320_183302468194_2.jpg',
    'http://5b0988e595225.cdn.sohucs.com/images/20171011/24db4b3387a346978d724512508229be.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: 160,
              child: Swiper(
                itemCount: _imageUrls.length,
                autoplay: true,
                itemBuilder: (BuildContext context, int index) {
                  return Image.network(
                    _imageUrls[index],
                    fit: BoxFit.fill,
                  );
                },
                pagination: SwiperPagination(),
              ),
            )
          ],
        ),
      ), //Pageview
    ); //Scafford
  }
}
