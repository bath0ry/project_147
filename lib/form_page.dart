import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';

import 'package:pdf/widgets.dart' as pw;
import 'package:project_147/division_widget.dart';
import 'package:project_147/pdf_generator.dart';
import 'package:open_file/open_file.dart';

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
              width: 320,
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
                style: const TextStyle(fontSize: 24, color: Colors.black),
                decoration: InputDecoration(
                    hintStyle:
                        const TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
                    hintText: 'Operador/Motorista',
                    filled: true,
                    hintMaxLines: 2,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)))),
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
                style: const TextStyle(fontSize: 24, color: Colors.black),
                decoration: InputDecoration(
                    hintStyle:
                        const TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
                    hintText: 'Equipamento',
                    filled: true,
                    hintMaxLines: 2,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)))),
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
                style: const TextStyle(fontSize: 24, color: Colors.black),
                decoration: InputDecoration(
                    hintStyle:
                        const TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
                    hintText: 'Sigla do Consórcio',
                    filled: true,
                    hintMaxLines: 2,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)))),
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
                style: const TextStyle(fontSize: 24, color: Colors.black),
                decoration: InputDecoration(
                    hintStyle:
                        const TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
                    hintText: 'Horímetro Inicial',
                    filled: true,
                    hintMaxLines: 2,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)))),
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
                style: const TextStyle(fontSize: 24, color: Colors.black),
                decoration: InputDecoration(
                    hintStyle:
                        const TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
                    hintText: 'Horímetro Final',
                    filled: true,
                    hintMaxLines: 2,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)))),
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
                style: const TextStyle(fontSize: 24, color: Colors.black),
                decoration: InputDecoration(
                    hintStyle:
                        const TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
                    hintText: 'Horário Inicial',
                    filled: true,
                    hintMaxLines: 2,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)))),
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
                style: const TextStyle(fontSize: 24, color: Colors.black),
                decoration: InputDecoration(
                    hintStyle:
                        const TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
                    hintText: 'Horário Final',
                    filled: true,
                    hintMaxLines: 2,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)))),
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
                          borderRadius: BorderRadius.circular(18))),
                      side: MaterialStateProperty.all(
                          const BorderSide(width: 2, color: Colors.black)),
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 10, 18, 126))),
                  child: const Text(
                    'GERAR PDF',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
            ),
          )
        ],
      )),
    );
  }

  Future<void> createPdf() async {
    final pdf = pw.Document();
    final image = PdfImage.file(pdf.document,
        bytes: File('assets/images/cons.jpeg').readAsBytesSync());

    pdf.addPage(
      pw.Page(build: (context) {
        return pw
            .Column(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
          pw.Text('Data: ${controllerDate.text}'),
          pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Text('Operador/Motorista: ${controllerName.text}'),
              pw.Text('Equipamento: ${controllerEquipament.text}'),
              pw.Text('Sigla: ${controllerSigla.text}'),
              pw.Text('Horimetro Inicial: ${controllerHorimetroInicio.text}'),
              pw.Text('Horimetro Final: ${controllerHorimetroFinal.text}'),
              pw.Text('Horario Inicial: ${controllerHorarioIni.text}'),
              pw.Text('Horario Final: ${controllerHorarioFinal.text}'),
            ],
          )
        ]);
      }),
    );

    final bytes = await pdf.save();
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/parte_diaria.pdf');
    await file.writeAsBytes(bytes);

    OpenFile.open(file.path);
  }
}
