import 'package:flutter/material.dart';
import 'package:jandj_customer/config/app_theme/app_colors.dart';
import 'package:jandj_customer/data/model/data_model.dart';
import 'package:jandj_customer/presentation/widgets/header_text.dart';
import 'package:jandj_customer/presentation/widgets/slide_carousel.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _brand = <String>[
    "assets/images/food.png",
    "assets/images/unimart.png",
    "assets/images/food.png",
    "assets/images/unimart.png",
  ];
  final _images = <String>[
    "https://helpx.adobe.com/content/dam/help/en/photoshop/using/convert-color-image-black-white/jcr_content/main-pars/before_and_after/image-before/Landscape-Color.jpg",
    "https://images.ctfassets.net/hrltx12pl8hq/7yQR5uJhwEkRfjwMFJ7bUK/dc52a0913e8ff8b5c276177890eb0129/offset_comp_772626-opt.jpg?fit=fill&w=800&h=300",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/800px-Image_created_with_a_mobile_phone.png",
    "https://www.hdnicewallpapers.com/Walls/Big/Cat/Beautiful_Cat_Imge_Download.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SlideCarousel(images: _images),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const HeaderText(title: "Categories"),
            GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: categories.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  childAspectRatio: .9,
                  mainAxisSpacing: 10.0,
                ),
                itemBuilder: (context, index) {
                  var cat = categories[index];
                  return Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(cat.image.toString())),
                          color: const Color(0xffe9eef2),
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        cat.name.toString(),
                        maxLines: 1,
                        textAlign: TextAlign.center,
                      )
                    ],
                  );
                }),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 25, left: 10, right: 10),
          decoration: BoxDecoration(boxShadow: const [
            BoxShadow(
              color: AppColors.creamColor,
              offset: Offset(2, 2),
            ),
            BoxShadow(
              color: AppColors.creamColor,
              offset: Offset(-2, -2),
            ),
          ], color: Colors.white, borderRadius: BorderRadius.circular(5)),
          height: 100,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: _brand.map((e) {
                return Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Image.asset(
                    e,
                    height: 60,
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
