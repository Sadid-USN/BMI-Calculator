import 'package:flutter/material.dart';

class Advices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                'https://images.unsplash.com/photo-1518531933037-91b2f5f229cc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDV8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=400&q=60'),
            fit: BoxFit.cover),
      ),
      //height: 270,
      child: ListWheelScrollView(
        squeeze: 1,
        //useMagnifier: true,
        // magnification: 2.0,
        diameterRatio: 4,
        perspective: 0.001,
        physics: FixedExtentScrollPhysics(),
        itemExtent: 380,
        children: [
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://www.zdorovoepitanie.store/wp-content/uploads/2020/10/e444ba519980aa70a94b279145041caf.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ))),
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://i.pinimg.com/originals/c6/c7/cc/c6c7cc248d188509a52330309f630b1c.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ))),
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://www.healthwaters.ru/upload/iblock/46c/46c2b373964a16fcb60ed13b8ee3fa32.png'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ))),
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://uplady.ru/wp-content/uploads/2016/06/faktory-vliyaniya-na-rabotu-mozga.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ))),
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://ic.pics.livejournal.com/sisj/51588035/5064151/5064151_original.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ))),
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://ic.pics.livejournal.com/sisj/51588035/5062593/5062593_original.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ))),
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://ic.pics.livejournal.com/sisj/51588035/5064685/5064685_original.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ))),
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://ic.pics.livejournal.com/sisj/51588035/5062661/5062661_original.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ))),
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://ic.pics.livejournal.com/sisj/51588035/5075399/5075399_original.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ))),
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://rostovmama.ru/upload/023/u2353/170/f422f17a.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ))),
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://rostovmama.ru/upload/023/u2353/170/d0de2ae4.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ))),
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://rostovmama.ru/upload/023/u2353/170/0e8dbcc4.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ))),
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://rostovmama.ru/upload/023/u2353/170/65246531.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ))),
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://avatars.mds.yandex.net/get-zen_doc/1889318/pub_5d02778d3da65400af677437_5d027cc180030d00af083495/scale_1200'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ))),
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://avatars.mds.yandex.net/get-zen_doc/245342/pub_5d664685d4f07a00ad0058cb_5d66470a43fdc005395ea5ba/scale_1200'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ))),
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://avatars.mds.yandex.net/get-zen_doc/936895/pub_5f533c5372b2bd4697a2a8b2_5f533ca3c84c033ffd1c4ad5/scale_1200'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ))),
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'http://itd0.mycdn.me/image?id=881649139510&t=20&plc=MOBILE&tkn=*x_lMoptv02ghqQw_G736OXhd1Ho'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ))),
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://lh3.googleusercontent.com/proxy/y4snFUxIFuSvoBom_ATeF0EbtRgjVoYXRE7-_08EcvDmpjBfvg8IZS_aj0ia5JYn11FoYJQk69ZW3KD9OY462HkxmVnzqSiEMENfbs7xXKbkQI3yaRoUmzN-6cV4eryag72ZbQ'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ))),
        ],
      ),
    );
  }
}
