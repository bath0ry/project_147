import 'dart:io';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class PdfGenerator {
  static Future<pw.Document> generate({
    required String name,
    required String equipament,
    required String sigla,
    required String horimeFinal,
    required String horimeInicio,
    required String horarioFinal,
    required String horarioInicio,
    required String date,
  }) async {
    final pdf = pw.Document();
    pdf.addPage(pw.Page(
        build: (pw.Context context) {
          return pw.Center(
              child: pw.Column(children: <pw.Widget>[
            pw.Text('Operador/Motorista: $name'),
            pw.Text('Equipamento: $equipament'),
            pw.Text('Sigla: $sigla'),
          ]));
        },
        pageFormat: PdfPageFormat.a4));
    return pdf;
  }
}
