import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';


import '../../../../common_widgets/core_widgets/app_text.dart';
import '../../../../utils/theme/widget_theme/colors.dart';
import '../../helpers/column_with_seprator.dart';
import 'account_item.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            ListTile(
              leading:
                  SizedBox(width: 65, height: 65, child: getImageHeader()),
              title: const AppText(
                text: "Kabin Chongbang Limbu",
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              subtitle: const AppText(
                text: "np05cp4s220027@iic.edu.np",
                color: Color(0xff7C7C7C),
                fontWeight: FontWeight.normal,
                fontSize: 16,
              ),
            ),
            Column(
              children: getChildrenWithSeperator(
                widgets: accountItems.map((e) {
                  return getAccountItemWidget(e);
                }).toList(),
                seperator: const Divider(
                  thickness: 1,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            logoutButton(),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }

  Widget logoutButton() {
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          visualDensity: VisualDensity.compact,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          elevation: 0,
          backgroundColor: const Color(0xffF2F3F2),
          textStyle: const TextStyle(
            color: Colors.white,
          ),
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 25),
          minimumSize: const Size.fromHeight(50),
          
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 20,
              height: 20,
              child: SvgPicture.asset(
                "assets/icons/account_icons/logout_icon.svg",
              ),
            ),
            const Text(
              "Log Out",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColor),
            ),
            Container()
          ],
        ),
        onPressed: () {
          FirebaseAuth.instance.signOut();
        },
      ),
    );
  }

  Widget getImageHeader() {
    String imagePath = "assets/images/profile.jpg";
    return CircleAvatar(
      radius: 5.0,
      backgroundImage: AssetImage(imagePath),
      backgroundColor: AppColors.primaryColor.withOpacity(0.7),
    );
  }

  Widget getAccountItemWidget(AccountItem accountItem) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          SizedBox(
            width: 20,
            height: 20,
            child: SvgPicture.asset(
              accountItem.iconPath,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            accountItem.label,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          const Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}
