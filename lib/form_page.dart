import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';

import 'package:pdf/widgets.dart' as pw;
import 'package:project_147/division_widget.dart';
import 'package:project_147/pdf_generator.dart';
import 'package:open_file/open_file.dart';
import 'package:printing/printing.dart';

class FormPage extends StatefulWidget {
  const FormPage({
    Key? key,
  }) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerEquipament = TextEditingController();
  TextEditingController controllerSigla = TextEditingController();
  TextEditingController controllerHorimetroInicio = TextEditingController();
  TextEditingController controllerHorimetroFinal = TextEditingController();
  TextEditingController controllerHorarioIni = TextEditingController();
  TextEditingController controllerHorarioFinal = TextEditingController();
  TextEditingController controllerDate = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  int lenghtTime = 5;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/images/cons.jpeg',
              width: 316,
            ),
          ),
          DivisionWidget(
            widthDivison: MediaQuery.of(context).size.width / 2,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
                keyboardType: TextInputType.datetime,
                maxLength: 10,
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return 'Não há informações suficientes';
                  }
                  return null;
                },
                controller: controllerDate,
                style: const TextStyle(fontSize: 19, color: Colors.black),
                decoration: const InputDecoration(
                  hintStyle: TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
                  hintText: 'Data:',
                  filled: true,
                  hintMaxLines: 2,
                  fillColor: Colors.white,
                )),
          ),
          DivisionWidget(
            widthDivison: MediaQuery.of(context).size.width,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return 'Não há informações suficientes';
                  }
                  return null;
                },
                controller: controllerName,
                style: const TextStyle(fontSize: 16, color: Colors.black),
                decoration: InputDecoration(
                    hintStyle:
                        const TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
                    hintText: 'Operador/Motorista',
                    filled: true,
                    hintMaxLines: 2,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)))),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return 'Não há informações suficientes';
                  }
                  return null;
                },
                controller: controllerEquipament,
                style: const TextStyle(fontSize: 16, color: Colors.black),
                decoration: InputDecoration(
                    hintStyle:
                        const TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
                    hintText: 'Equipamento',
                    filled: true,
                    hintMaxLines: 2,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)))),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return 'Não há informações suficientes';
                  }
                  return null;
                },
                controller: controllerSigla,
                style: const TextStyle(fontSize: 16, color: Colors.black),
                decoration: InputDecoration(
                    hintStyle:
                        const TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
                    hintText: 'Sigla do Consórcio',
                    filled: true,
                    hintMaxLines: 2,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)))),
          ),
          DivisionWidget(
            widthDivison: MediaQuery.of(context).size.width,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 300, top: 10),
            child: Text(
              'Horímetro',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return 'Não há informações suficientes';
                  }
                  return null;
                },
                controller: controllerHorimetroInicio,
                style: const TextStyle(fontSize: 16, color: Colors.black),
                decoration: InputDecoration(
                    hintStyle:
                        const TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
                    hintText: 'Horímetro Inicial',
                    filled: true,
                    hintMaxLines: 2,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)))),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return 'Não há informações suficientes';
                  }
                  return null;
                },
                controller: controllerHorimetroFinal,
                style: const TextStyle(fontSize: 16, color: Colors.black),
                decoration: InputDecoration(
                    hintStyle:
                        const TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
                    hintText: 'Horímetro Final',
                    filled: true,
                    hintMaxLines: 2,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)))),
          ),
          DivisionWidget(
            widthDivison: MediaQuery.of(context).size.width,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 300, top: 10),
            child: Text(
              'Horário',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
                maxLength: 5,
                keyboardType: TextInputType.datetime,
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return 'Não há informações suficientes';
                  }
                  return null;
                },
                controller: controllerHorarioIni,
                style: const TextStyle(fontSize: 16, color: Colors.black),
                decoration: InputDecoration(
                    hintStyle:
                        const TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
                    hintText: 'Horário Inicial',
                    filled: true,
                    hintMaxLines: 2,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)))),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
                maxLength: 5,
                keyboardType: TextInputType.datetime,
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return 'Não há informações suficientes';
                  }
                  return null;
                },
                controller: controllerHorarioFinal,
                style: const TextStyle(fontSize: 16, color: Colors.black),
                decoration: InputDecoration(
                    hintStyle:
                        const TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
                    hintText: 'Horário Final',
                    filled: true,
                    hintMaxLines: 2,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)))),
          ),
          DivisionWidget(
            widthDivison: MediaQuery.of(context).size.width,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 150,
              height: 50,
              child: TextButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      createPdf();
                    }
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16))),
                      side: MaterialStateProperty.all(
                          const BorderSide(width: 2, color: Colors.black)),
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 10, 16, 126))),
                  child: const Text(
                    'GERAR PDF',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )),
            ),
          )
        ],
      )),
    );
  }

  Future<void> createPdf() async {
    final pdf = pw.Document();

    pdf.addPage(
      pw.Page(build: (pw.Context context) {
        return pw
            .Column(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
          pw.Text('Data: ${controllerDate.text}',
              style:
                  pw.TextStyle(fontSize: 22, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 30),
          pw.Center(
            child: pw.Text('Consórcio SP 147',
                style:
                    pw.TextStyle(fontSize: 30, fontWeight: pw.FontWeight.bold)),
          ),
          pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.SizedBox(height: 30),
              pw.Text('OPERADOR/MOTORISTA: ${controllerName.text}',
                  style: pw.TextStyle(
                      fontSize: 16, fontWeight: pw.FontWeight.bold)),
              pw.SizedBox(height: 10),
              pw.Text('EQUIPAMENTO: ${controllerEquipament.text}',
                  style: pw.TextStyle(
                      fontSize: 16, fontWeight: pw.FontWeight.bold)),
              pw.SizedBox(height: 10),
              pw.Text('SIGLA DO CONSÓRCIO: ${controllerSigla.text}',
                  style: pw.TextStyle(
                      fontSize: 16, fontWeight: pw.FontWeight.bold)),
              pw.SizedBox(height: 10),
              pw.Text('HORÍMETRO INICIAL: ${controllerHorimetroInicio.text}',
                  style: pw.TextStyle(
                      fontSize: 16, fontWeight: pw.FontWeight.bold)),
              pw.Text('HORÍMETRO FINAL: ${controllerHorimetroFinal.text}',
                  style: pw.TextStyle(
                      fontSize: 16, fontWeight: pw.FontWeight.bold)),
              pw.SizedBox(height: 10),
              pw.Text('HORÁRIO INICIAL: ${controllerHorarioIni.text}',
                  style: pw.TextStyle(
                      fontSize: 16, fontWeight: pw.FontWeight.bold)),
              pw.Text('HORÁRIO FINAL: ${controllerHorarioFinal.text}',
                  style: pw.TextStyle(
                      fontSize: 16, fontWeight: pw.FontWeight.bold)),
            ],
          ),
          pw.SizedBox(height: 18),
          pw.Center(
              child: pw.Text('DESCRIÇÃO DO SERVIÇO:',
                  style: pw.TextStyle(
                      fontSize: 21, fontWeight: pw.FontWeight.bold))),
          pw.SizedBox(height: 20),
          pw.Center(
              child: pw.Text('PARALISAÇÃO/DESLOCAMENTO:',
                  style: pw.TextStyle(
                      fontSize: 21, fontWeight: pw.FontWeight.bold))),
        ]);
      }),
    );

    final bytes = await pdf.save();
    final directory = await getApplicationDocumentsDirectory();
    final file = File(
        '${directory.path}/${controllerName.text + controllerDate.text}.pdf');
    await file.writeAsBytes(bytes);

    OpenFile.open(file.path);
  }
}
