import 'package:flutter/material.dart';
import 'package:holy_bible/utils/constants.dart';
import 'package:holy_bible/utils/custom_app_bar.dart';
import 'package:holy_bible/widgets/cache_img_widget.dart';
import 'package:holy_bible/widgets/custom_async_btn.dart';

class BookMarkDetailScreen extends StatelessWidget {
  static const String routeName = '/bookmark-detail';

  const BookMarkDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Bookmark Detail'),
      body: Column(
        children: [
          CacheImgWidget(
            'assets/images/no_img_available.jpg',
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 4.0,
          ),
          const SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Book Title', style: kTitleStyle.copyWith(fontSize: 20.0)),
                const SizedBox(height: 8.0),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
                  style: kTitleStyle.copyWith(fontSize: 16.0, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12.0),
            child: CustomAsyncBtn(
              btntxt: 'Read',
              onPress: () {},
            ),
          ),
        ],
      ),
    );
  }
}
