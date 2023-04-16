import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:path_provider/path_provider.dart';
import 'package:project_147/view/widgets/division_widget.dart';

import 'package:pdf/pdf.dart';

import 'package:pdf/widgets.dart' as pw;
import 'package:project_147/view/widgets/division_widget.dart';

import 'package:open_file/open_file.dart';
import 'package:printing/printing.dart';
import 'package:project_147/view/pages/form_page.dart';

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
              FormPage(
                      formKey: _formKey,
                      controllerDate: controllerDate,
                      controllerName: controllerName,
                      controllerEquipament: controllerEquipament,
                      controllerSigla: controllerSigla,
                      controllerHorimetroInicio: controllerHorimetroInicio,
                      controllerHorimetroFinal: controllerHorimetroFinal,
                      controllerHorarioIni: controllerHorarioIni,
                      controllerHorarioFinal: controllerHorarioFinal,
                      controllerDescri: controllerDescri,
                      controllerParaliz: controllerParaliz)
                  .createPdf();
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
        body: FormPage(
            formKey: _formKey,
            controllerDate: controllerDate,
            controllerName: controllerName,
            controllerEquipament: controllerEquipament,
            controllerSigla: controllerSigla,
            controllerHorimetroInicio: controllerHorimetroInicio,
            controllerHorimetroFinal: controllerHorimetroFinal,
            controllerHorarioIni: controllerHorarioIni,
            controllerHorarioFinal: controllerHorarioFinal,
            controllerDescri: controllerDescri,
            controllerParaliz: controllerParaliz));
  }
}
