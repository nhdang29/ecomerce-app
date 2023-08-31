import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class TopPromoSlider extends StatelessWidget {
  const TopPromoSlider({super.key});

  @override
  Widget build(BuildContext context) {

    List<Widget> itemsSlider = [
      Image.network("https://product.hstatic.net/200000475537/product/0fb34078f099f12907d1ee24b5fe6b3e_bd681046306f43a08759c82633f905be_a95f63a18bbd44dbb9a99becc0a5ca52_1024x1024.jpg"),
      Image.network("https://bizweb.dktcdn.net/100/440/071/products/mi-hao-hao-tom-chua-cay.jpg?v=1635479804447"),
      Image.network("https://product.hstatic.net/200000475537/product/0fb34078f099f12907d1ee24b5fe6b3e_bd681046306f43a08759c82633f905be_a95f63a18bbd44dbb9a99becc0a5ca52_1024x1024.jpg"),
      Image.network("https://cdn.tgdd.vn/Files/2021/12/28/1407304/diem-qua-cac-loai-dau-an-meizan-duoc-cac-ba-noi-tro-tin-dung-202112281637384407.jpg")
    ];

    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: SizedBox(
          height: 130.0,
          width: double.infinity,
          child: CarouselSlider(
              items: itemsSlider,
              options: CarouselOptions(
                autoPlay: true,
                viewportFraction: 0.9,
                autoPlayInterval: const Duration(seconds: 2),
                autoPlayAnimationDuration: const Duration(milliseconds: 1200),
              )
          )
      ),
    );
  }
}