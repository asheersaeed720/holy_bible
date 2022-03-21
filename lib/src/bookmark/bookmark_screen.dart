import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:holy_bible/src/bookmark/bookmark_detail_screen.dart';
import 'package:holy_bible/utils/constants.dart';
import 'package:holy_bible/utils/custom_app_bar.dart';
import 'package:holy_bible/widgets/cache_img_widget.dart';

class BookMarkScreen extends StatelessWidget {
  static const String routeName = '/book-mark';

  const BookMarkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Bookmark', isSearchIcon: true),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        itemBuilder: (context, i) {
          return _buildBookMarkItemView(context);
        },
        separatorBuilder: (context, i) => const Divider(thickness: 1.5),
        itemCount: 6,
      ),
    );
  }

  Widget _buildBookMarkItemView(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(BookMarkDetailScreen.routeName),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              CacheImgWidget(
                'assets/images/no_img_available.jpg',
                width: MediaQuery.of(context).size.width / 3.0,
                height: MediaQuery.of(context).size.height / 5.0,
              ),
              Positioned(
                top: 8.0,
                right: 8.0,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(4.0, 6.0, 4.0, 4.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(28.0),
                  ),
                  child: const Icon(
                    Icons.favorite_rounded,
                    color: Colors.red,
                    size: 22.0,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(width: 10.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  'Title Text Here',
                  style: kTitleStyle,
                ),
              ),
              const SizedBox(height: 6.0),
              Text(
                'Some descriptive text here',
                style: kBodyStyle,
              ),
              const SizedBox(height: 10.0),
            ],
          )
        ],
      ),
    );
  }
}
