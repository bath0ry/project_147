import 'package:flutter/material.dart';

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
  bool valueValidator(value) {
    if (value != null && value.isEmpty) {
      return true;
    }
    return false;
  }

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
                  if (valueValidator(value)) {
                    return 'Não há informações suficientes';
                  }
                  return null;
                },
                onChanged: ((value) {}),
                controller: controllerDate,
                style: TextStyle(fontSize: 19, color: Colors.black),
                decoration: InputDecoration(
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
                  if (valueValidator(value)) {
                    return 'Não há informações suficientes';
                  }
                  return null;
                },
                onChanged: ((value) {}),
                controller: controllerName,
                style: TextStyle(fontSize: 24, color: Colors.black),
                decoration: InputDecoration(
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
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
                  if (valueValidator(value)) {
                    return 'Não há informações suficientes';
                  }
                  return null;
                },
                onChanged: ((value) {}),
                controller: controllerEquipament,
                style: TextStyle(fontSize: 24, color: Colors.black),
                decoration: InputDecoration(
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
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
                  if (valueValidator(value)) {
                    return 'Não há informações suficientes';
                  }
                  return null;
                },
                onChanged: ((value) {}),
                controller: controllerSigla,
                style: TextStyle(fontSize: 24, color: Colors.black),
                decoration: InputDecoration(
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
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
                  if (valueValidator(value)) {
                    return 'Não há informações suficientes';
                  }
                  return null;
                },
                onChanged: ((value) {}),
                controller: controllerHorimetroInicio,
                style: TextStyle(fontSize: 24, color: Colors.black),
                decoration: InputDecoration(
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
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
                  if (valueValidator(value)) {
                    return 'Não há informações suficientes';
                  }
                  return null;
                },
                onChanged: ((value) {}),
                controller: controllerHorimetroFinal,
                style: TextStyle(fontSize: 24, color: Colors.black),
                decoration: InputDecoration(
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
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
                  if (valueValidator(value)) {
                    return 'Não há informações suficientes';
                  }
                  return null;
                },
                onChanged: ((value) {}),
                controller: controllerHorarioIni,
                style: TextStyle(fontSize: 24, color: Colors.black),
                decoration: InputDecoration(
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
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
                  if (valueValidator(value)) {
                    return 'Não há informações suficientes';
                  }
                  return null;
                },
                onChanged: ((value) {}),
                controller: controllerHorarioFinal,
                style: TextStyle(fontSize: 24, color: Colors.black),
                decoration: InputDecoration(
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
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
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {}
                  },
                  child: Text(
                    'ENVIAR',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18))),
                      side: MaterialStateProperty.all(
                          BorderSide(width: 2, color: Colors.black)),
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 10, 74, 126)))),
            ),
          )
        ],
      )),
    );
  }
}
