import 'package:app_logistica/util/constants.dart';
import 'package:app_logistica/util/constraints.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
              maxWidth: calculateMaxWidth(context),
              maxHeight: calculateMaxHeight(context)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hola, Bienvenido.',
                  style: TextStyle(
                      fontSize: fontSize1, fontWeight: FontWeight.bold)),
              SizedBox(
                height: space3,
              ),
              Text('Ingresa o Regístrate con tu numero de celular.',
                  style: TextStyle(
                      fontSize: fontSize1, fontWeight: FontWeight.normal)),
              SizedBox(
                height: space1,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder:
                      OutlineInputBorder(borderSide: BorderSide(color: color1)),
                  labelText: 'Celular',
                  labelStyle: TextStyle(color: Colors.black)
                ),
              ),
              SizedBox(
                height: space1,
              ),
              Row(
                children: [
                  Switch(value: false, onChanged: (bool state) {}),
                  Text('Acepto términos y condiciones.')
                ],
              ),
              TextButton(
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all<Size>(
                      Size.fromWidth(calculateMaxWidth(context))),
                  backgroundColor: MaterialStateProperty.all<Color>(color1),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                ),
                onPressed: () {},
                child: Text('Siguiente'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
