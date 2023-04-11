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
  final _formKey = GlobalKey<FormState>();
  bool valueValidator(value) {
    if (value != null && value.isEmpty) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
          child: Column(
        children: [
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
                    hintText: 'Insira seu nome',
                    filled: true,
                    hintMaxLines: 2,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)))),
          ),
          TextButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {}
              },
              child: Text(
                'ENVIAR',
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 10, 74, 126))))
        ],
      )),
    );
  }
}
