import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:path_provider/path_provider.dart';

class PortfolioPDFScreen extends StatelessWidget {
  final String pdfAssetPath = 'assets/pdfs/cv.pdf';

  const PortfolioPDFScreen({super.key});

  Future<String> _loadPdfFromAssets() async {
    final ByteData data = await rootBundle.load(pdfAssetPath);
    final buffer = data.buffer.asUint8List();
    final tempDir = await getTemporaryDirectory();
    final file = File('${tempDir.path}/cv.pdf');
    await file.writeAsBytes(buffer);
    return file.path;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mon Portfolio'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final pdfPath = await _loadPdfFromAssets();
            Navigator.push(
              // ignore: use_build_context_synchronously
              context,
              MaterialPageRoute(
                builder: (context) => PDFViewerScreen(pdfPath: pdfPath),
              ),
            );
          },
          child: const Text('Voir Mon CV'),
        ),
      ),
    );
  }
}

class PDFViewerScreen extends StatelessWidget {
  final String pdfPath;

  const PDFViewerScreen({super.key, required this.pdfPath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Mon CV'),
        ),
        body: const Text('pdf')
        /* PDFView(
        filePath: pdfPath,
      )*/
        );
  }
}
