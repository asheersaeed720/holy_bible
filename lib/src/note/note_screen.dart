import 'package:flutter/material.dart';
import 'package:holy_bible/utils/custom_app_bar.dart';

class NoteScreen extends StatelessWidget {
  static const String routeName = '/note';

  const NoteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Note'),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        itemBuilder: (context, i) {
          return _buildNoteCardItemView();
        },
        separatorBuilder: (context, i) => const SizedBox(height: 12.0),
        itemCount: 6,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }

  Widget _buildNoteCardItemView() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: const ListTile(
        title: Text('Note 1'),
        subtitle: Text('Some descriptive text here'),
        trailing: Icon(Icons.arrow_forward_ios_rounded),
      ),
    );
  }
}
