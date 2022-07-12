import 'package:flutter/material.dart' show IconData, Icons;
import 'package:jandj_customer/config/strings/app_strings.dart';

class DataModel {
  String? name;
  String? image;
  IconData? icon;
  DataModel({
    this.name,
    this.image,
    this.icon,
  });
}

final brand = <DataModel>[
  DataModel(
    image: "assets/images/food.png",
  ),
  DataModel(image: "assets/images/unimart.png"),
  DataModel(image: "assets/images/food.png"),
  DataModel(image: "assets/images/unimart.png"),
];
final profileBarData = <DataModel>[
  DataModel(image: AppStrings.orders, name: "Orders"),
  DataModel(image: AppStrings.cart, name: "Cart"),
  DataModel(image: AppStrings.offers, name: "Offers"),
  DataModel(image: AppStrings.wishlist, name: "Wishlist"),
];
final profileData = <DataModel>[
  DataModel(icon: Icons.location_pin, name: "Address"),
  DataModel(icon: Icons.category, name: "All Category"),
  DataModel(icon: Icons.notifications, name: "All Category"),
  DataModel(icon: Icons.settings, name: "Settings"),
  DataModel(icon: Icons.question_mark, name: "Terms & Condition"),
  DataModel(icon: Icons.policy, name: "Privacy Policy"),
  DataModel(icon: Icons.question_answer, name: "FAQ"),
  DataModel(icon: Icons.not_listed_location_outlined, name: "About Us"),
];
final images = <String>[
  "https://helpx.adobe.com/content/dam/help/en/photoshop/using/convert-color-image-black-white/jcr_content/main-pars/before_and_after/image-before/Landscape-Color.jpg",
  "https://images.ctfassets.net/hrltx12pl8hq/7yQR5uJhwEkRfjwMFJ7bUK/dc52a0913e8ff8b5c276177890eb0129/offset_comp_772626-opt.jpg?fit=fill&w=800&h=300",
  "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/800px-Image_created_with_a_mobile_phone.png",
  "https://www.hdnicewallpapers.com/Walls/Big/Cat/Beautiful_Cat_Imge_Download.jpg",
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
