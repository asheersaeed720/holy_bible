import 'package:flutter/material.dart';
import 'package:holy_bible/utils/custom_app_bar.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ReadScreen extends StatelessWidget {
  const ReadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: customAppBar('Read', isSearchIcon: true),
        body: SfPdfViewer.asset(
          'assets/images/test.pdf',
          pageLayoutMode: PdfPageLayoutMode.continuous,
        ),
      ),
    );
  }
}
