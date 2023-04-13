import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';

import 'package:pdf/widgets.dart' as pdfLib;
import 'package:project_147/pdf_generator.dart';

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
                onChanged: ((value) {}),
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
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return 'Não há informações suficientes';
                  }
                  return null;
                },
                onChanged: ((value) {}),
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
                onChanged: ((value) {}),
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
                onChanged: ((value) {}),
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
                onChanged: ((value) {}),
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
                onChanged: ((value) {}),
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
                onChanged: ((value) {}),
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
                onChanged: ((value) {}),
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 150,
              height: 50,
              child: TextButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      final name = controllerName.text;
                      final equipament = controllerEquipament.text;
                      final sigla = controllerSigla.text;
                      final horimeFinal = controllerHorimetroFinal.text;
                      final horimeInicio = controllerHorimetroInicio.text;
                      final horarioInicio = controllerHorarioIni.text;
                      final horarioFinal = controllerHorarioFinal.text;
                      final date = controllerDate.text;

                      final pdf = await PdfGenerator.generate(
                          name: name,
                          equipament: equipament,
                          sigla: sigla,
                          horimeFinal: horimeFinal,
                          horimeInicio: horimeInicio,
                          horarioFinal: horarioFinal,
                          horarioInicio: horarioInicio,
                          date: date);
                      final file = File('caminho/para/o/arquivo.pdf');
                      await file.writeAsBytes(pdf.save());
                    }
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18))),
                      side: MaterialStateProperty.all(
                          const BorderSide(width: 2, color: Colors.black)),
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 10, 74, 126))),
                  child: const Text(
                    'ENVIAR',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
            ),
          )
        ],
      )),
    );
  }
}
