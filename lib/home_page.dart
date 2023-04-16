import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:path_provider/path_provider.dart';
import 'package:project_147/division_widget.dart';
import 'package:project_147/form_page.dart';
import 'package:pdf/pdf.dart';

import 'package:pdf/widgets.dart' as pw;
import 'package:project_147/division_widget.dart';
import 'package:project_147/pdf_generator.dart';
import 'package:open_file/open_file.dart';
import 'package:printing/printing.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerEquipament = TextEditingController();
  TextEditingController controllerSigla = TextEditingController();
  TextEditingController controllerHorimetroInicio = TextEditingController();
  TextEditingController controllerHorimetroFinal = TextEditingController();
  TextEditingController controllerHorarioIni = TextEditingController();
  TextEditingController controllerHorarioFinal = TextEditingController();
  TextEditingController controllerDate = TextEditingController();
  TextEditingController controllerDescri = TextEditingController();
  TextEditingController controllerParaliz = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              createPdf();
            }
          },
          child: Icon(
            Icons.picture_as_pdf,
            size: 35,
          ),
          backgroundColor: Color.fromARGB(255, 9, 12, 143),
        ),
        appBar: AppBar(
          title: Center(child: Text('Sua Parte Diária')),
          backgroundColor: Color.fromARGB(255, 9, 12, 143),
        ),
        body: Form(
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
                    maxLines: 1,
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
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
                      hintText: 'Data:',
                      filled: true,
                      hintMaxLines: 1,
                      fillColor: Colors.white,
                    )),
              ),
              DivisionWidget(
                widthDivison: MediaQuery.of(context).size.width,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                    maxLines: 1,
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return 'Não há informações suficientes';
                      }
                      return null;
                    },
                    controller: controllerName,
                    style: const TextStyle(fontSize: 16, color: Colors.black),
                    decoration: InputDecoration(
                        hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 73, 73, 73)),
                        hintText: 'Operador/Motorista',
                        filled: true,
                        hintMaxLines: 1,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16)))),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                    maxLines: 1,
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return 'Não há informações suficientes';
                      }
                      return null;
                    },
                    controller: controllerEquipament,
                    style: const TextStyle(fontSize: 16, color: Colors.black),
                    decoration: InputDecoration(
                        hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 73, 73, 73)),
                        hintText: 'Equipamento',
                        filled: true,
                        hintMaxLines: 1,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16)))),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                    maxLines: 1,
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return 'Não há informações suficientes';
                      }
                      return null;
                    },
                    controller: controllerSigla,
                    style: const TextStyle(fontSize: 16, color: Colors.black),
                    decoration: InputDecoration(
                        hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 73, 73, 73)),
                        hintText: 'Sigla do Consórcio',
                        filled: true,
                        hintMaxLines: 1,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16)))),
              ),
              DivisionWidget(
                widthDivison: MediaQuery.of(context).size.width,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 300, top: 10),
                child: Text(
                  'Horímetro',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                    maxLines: 1,
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
                        hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 73, 73, 73)),
                        hintText: 'Horímetro Inicial',
                        filled: true,
                        hintMaxLines: 1,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16)))),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                    maxLines: 1,
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
                        hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 73, 73, 73)),
                        hintText: 'Horímetro Final',
                        filled: true,
                        hintMaxLines: 1,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16)))),
              ),
              DivisionWidget(
                widthDivison: MediaQuery.of(context).size.width,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 300, top: 10),
                child: Text(
                  'Horário',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                    maxLength: 5,
                    maxLines: 1,
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
                        hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 73, 73, 73)),
                        hintText: 'Horário Inicial',
                        filled: true,
                        hintMaxLines: 1,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16)))),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                    maxLength: 5,
                    maxLines: 1,
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
                        hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 73, 73, 73)),
                        hintText: 'Horário Final',
                        filled: true,
                        hintMaxLines: 1,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16)))),
              ),
              DivisionWidget(
                widthDivison: MediaQuery.of(context).size.width,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 5, top: 10),
                child: Text(
                  'Descrição de Serviço:',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                    textAlign: TextAlign.start,
                    maxLines: 10,
                    textDirection: TextDirection.ltr,
                    textAlignVertical: TextAlignVertical.top,
                    autocorrect: true,
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return 'Não há informações suficientes';
                      }
                      return null;
                    },
                    controller: controllerDescri,
                    style: const TextStyle(fontSize: 16, color: Colors.black),
                    decoration: InputDecoration(
                        hintTextDirection: TextDirection.ltr,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 17, horizontal: 10),
                        hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 73, 73, 73)),
                        hintText: 'Descrição do serviço',
                        hintMaxLines: 10,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16)))),
              ),
              DivisionWidget(
                widthDivison: MediaQuery.of(context).size.width,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 5, top: 10),
                child: Text(
                  'Paralisações/Deslocamentos:',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 12, left: 12, right: 12, bottom: 60),
                child: TextFormField(
                    textAlign: TextAlign.start,
                    maxLines: 10,
                    textDirection: TextDirection.ltr,
                    textAlignVertical: TextAlignVertical.top,
                    autocorrect: true,
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return 'Não há informações suficientes';
                      }
                      return null;
                    },
                    controller: controllerParaliz,
                    style: const TextStyle(fontSize: 16, color: Colors.black),
                    decoration: InputDecoration(
                        hintTextDirection: TextDirection.ltr,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 17, horizontal: 10),
                        hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 73, 73, 73)),
                        hintText: 'Paralisações/Deslocamentos',
                        hintMaxLines: 10,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16)))),
              ),
              DivisionWidget(
                widthDivison: MediaQuery.of(context).size.width,
              ),
            ],
          )),
        ));
  }

  Future<void> createPdf() async {
    final pdf = pw.Document();
    final netImage = await networkImage(
        'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiwpsmcBtOfljvWY-MMXf1lPLYkLJ-144ZHSEdtbP0LTArVAem1nFD_CV2LZUsfNxvwPSXMBSFAauNIEOlRxXkzbLtJfcFMtFGjHVM3US22nUHYrYXmHQOQrDGpQaZx50LXUdRriHWbBbDkx4cIW505ei8Q7uXbdzK8eDAyMUx4orTByet_jyrY25CXPQ/s593/WhatsApp%20Image%202023-04-11%20at%2021.13.11.jpeg');

    pdf.addPage(
      pw.Page(build: (pw.Context context) {
        return pw
            .Column(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
          pw.Text('DATA: ${controllerDate.text}',
              style: pw.TextStyle(fontSize: 17, fontWeight: pw.FontWeight.bold),
              maxLines: 1),
          pw.SizedBox(height: 21),
          pw.Center(
            child: pw.Image(netImage, width: 350, height: 350),
          ),
          pw.SizedBox(height: 21),
          pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Container(
                  width: 500,
                  decoration: pw.BoxDecoration(
                      border: pw.Border.fromBorderSide(pw.BorderSide(
                          width: 2, style: pw.BorderStyle.solid))),
                  child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.SizedBox(height: 21),
                        pw.Padding(
                          padding: pw.EdgeInsets.only(left: 10),
                          child: pw.Text(
                            'OPERADOR/MOTORISTA: ${controllerName.text}',
                            style: pw.TextStyle(
                                fontSize: 14, fontWeight: pw.FontWeight.bold),
                            maxLines: 1,
                          ),
                        ),
                        pw.SizedBox(height: 5),
                        pw.Padding(
                          padding: pw.EdgeInsets.only(left: 10),
                          child: pw.Text(
                              'EQUIPAMENTO: ${controllerEquipament.text}',
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  fontWeight: pw.FontWeight.bold)),
                        ),
                        pw.SizedBox(height: 5),
                        pw.Padding(
                          padding: pw.EdgeInsets.only(left: 10),
                          child: pw.Text(
                            'SIGLA DO CONSÓRCIO: ${controllerSigla.text}',
                            style: pw.TextStyle(
                                fontSize: 14, fontWeight: pw.FontWeight.bold),
                            maxLines: 1,
                          ),
                        ),
                        pw.SizedBox(height: 5),
                        pw.Padding(
                          padding: pw.EdgeInsets.only(left: 10),
                          child: pw.Text(
                            'HORÍMETRO INICIAL: ${controllerHorimetroInicio.text}',
                            style: pw.TextStyle(
                                fontSize: 14, fontWeight: pw.FontWeight.bold),
                            maxLines: 1,
                          ),
                        ),
                        pw.Padding(
                          padding: pw.EdgeInsets.only(left: 10),
                          child: pw.Text(
                            'HORÍMETRO FINAL: ${controllerHorimetroFinal.text}',
                            style: pw.TextStyle(
                                fontSize: 14, fontWeight: pw.FontWeight.bold),
                            maxLines: 1,
                          ),
                        ),
                        pw.SizedBox(height: 5),
                        pw.Padding(
                          padding: pw.EdgeInsets.only(left: 10),
                          child: pw.Text(
                            'HORÁRIO INICIAL: ${controllerHorarioIni.text}',
                            style: pw.TextStyle(
                                fontSize: 14, fontWeight: pw.FontWeight.bold),
                            maxLines: 1,
                          ),
                        ),
                        pw.Padding(
                          padding: pw.EdgeInsets.only(left: 10),
                          child: pw.Text(
                            'HORÁRIO FINAL: ${controllerHorarioFinal.text}',
                            style: pw.TextStyle(
                                fontSize: 14, fontWeight: pw.FontWeight.bold),
                            maxLines: 1,
                          ),
                        ),
                        pw.SizedBox(height: 16),
                        pw.Center(
                            child: pw.Text('DESCRIÇÃO DO SERVIÇO:',
                                style: pw.TextStyle(
                                    fontSize: 17,
                                    fontWeight: pw.FontWeight.bold))),
                        pw.Padding(
                          padding: pw.EdgeInsets.only(left: 10, right: 10),
                          child: pw.Text('${controllerDescri.text}',
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  fontWeight: pw.FontWeight.bold)),
                        ),
                        pw.SizedBox(height: 16),
                        pw.Center(
                            child: pw.Text('PARALISAÇÃO/DESLOCAMENTO:',
                                style: pw.TextStyle(
                                    fontSize: 17,
                                    fontWeight: pw.FontWeight.bold))),
                        pw.Padding(
                          padding: pw.EdgeInsets.only(
                              left: 10, right: 10, bottom: 10),
                          child: pw.Text('${controllerParaliz.text}',
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  fontWeight: pw.FontWeight.bold)),
                        ),
                      ])),
            ],
          ),
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
