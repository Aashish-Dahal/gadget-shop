import 'package:flutter/material.dart';
import 'package:jandj_customer/config/strings/app_strings.dart';
import 'package:jandj_customer/data/model/data_model.dart';

import '../../config/app_theme/app_colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(195),
        child: Stack(
          children: [
            SizedBox(
              height: 150,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
                child: AppBar(
                  backgroundColor: AppColors.primaryColor,
                  title: const Text("T Commerce"),
                  actions: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Text(
                        'Robert Fox',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 15,
                      ),
                      child: CircleAvatar(
                          radius: 23,
                          backgroundImage:
                              AssetImage(AppStrings.pp.toString())),
                    ),
                  ],
                ),
              ),
            ),
            Container(),
            Positioned(
                top: 100,
                left: 20,
                right: 20,
                child: Card(
                  elevation: 8,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 15,
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: profileBarData.map((e) {
                          return Column(
                            children: [
                              CircleAvatar(
                                  radius: 28,
                                  backgroundImage:
                                      AssetImage(e.image.toString())),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                e.name.toString(),
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ],
                          );
                        }).toList()),
                  ),
                )),
          ],
        ),
      ),
      body: Column(
        children: List.generate(profileData.length, (index) {
          var data = profileData[index];
          return ListTile(
            contentPadding: const EdgeInsets.only(left: 20),
            minLeadingWidth: 20,
            leading: Icon(
              data.icon,
              color: AppColors.primaryColor,
            ),
            title: Text(data.name.toString(),
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontWeight: FontWeight.w500)),
          );
        }),
      ),
    );
  }
}
