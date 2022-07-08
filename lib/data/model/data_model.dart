import 'package:jandj_customer/config/strings/app_strings.dart';

class DataModel {
  String? name;
  String? image;
  DataModel({
    this.name,
    this.image,
  });
}

final _brand = <DataModel>[
  DataModel(
    name: "assets/images/food.png",
  ),
  DataModel(name: "assets/images/unimart.png"),
  DataModel(name: "assets/images/food.png"),
  DataModel(name: "assets/images/unimart.png"),
];
final _images = <DataModel>[
  DataModel(
      name:
          "https://helpx.adobe.com/content/dam/help/en/photoshop/using/convert-color-image-black-white/jcr_content/main-pars/before_and_after/image-before/Landscape-Color.jpg"),
  DataModel(
      name:
          "https://images.ctfassets.net/hrltx12pl8hq/7yQR5uJhwEkRfjwMFJ7bUK/dc52a0913e8ff8b5c276177890eb0129/offset_comp_772626-opt.jpg?fit=fill&w=800&h=300"),
  DataModel(
      name:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/800px-Image_created_with_a_mobile_phone.png"),
  DataModel(
      name:
          "https://www.hdnicewallpapers.com/Walls/Big/Cat/Beautiful_Cat_Imge_Download.jpg"),
];
final categories = <DataModel>[
  DataModel(name: "Electronics", image: AppStrings.electronics),
  DataModel(name: "Bike", image: AppStrings.bike),
  DataModel(name: "Man's Fashion", image: AppStrings.manFashion),
  DataModel(name: "Mobiles", image: AppStrings.mobiles),
  DataModel(name: "Lifestyle", image: AppStrings.lifeStyle),
  DataModel(name: "Vehicles", image: AppStrings.vehicles),
  DataModel(name: "Woman's Fashion", image: AppStrings.womanFashion),
  DataModel(name: "Toy", image: AppStrings.toy),
  DataModel(name: "Electronics", image: AppStrings.electronics),
  DataModel(name: "Bike", image: AppStrings.bike),
];
