import 'package:app_logistica/util/constants.dart';
import 'package:app_logistica/util/constraints.dart';
import 'package:app_logistica/views/first_perfil_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PasswordView extends StatelessWidget {
  void handleNextViewPerfilOrHome(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => FirstPerfilView()));
  }

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
              Text('¡Espera un segundo!',
                  style: TextStyle(
                      fontSize: fontSize1, fontWeight: FontWeight.bold)),
              SizedBox(
                height: space3,
              ),
              Text(
                  'En unos instantes recibirás un mensaje de texto con el código de verificación de 4 digitos.',
                  style: TextStyle(
                      fontSize: fontSize1, fontWeight: FontWeight.normal)),
              SizedBox(
                height: space1,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(
                        maxWidth: calculateMaxWidth(context) / 5),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: color1)),
                      ),
                    ),
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                        maxWidth: calculateMaxWidth(context) / 5),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: color1)),
                      ),
                    ),
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                        maxWidth: calculateMaxWidth(context) / 5),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: color1)),
                      ),
                    ),
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                        maxWidth: calculateMaxWidth(context) / 5),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: color1)),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: space1,
              ),
              SizedBox(
                height: space1,
              ),
              TextButton(
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all<Size>(
                      Size.fromWidth(calculateMaxWidth(context))),
                  backgroundColor: MaterialStateProperty.all<Color>(color1),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                ),
                onPressed: () => handleNextViewPerfilOrHome(context),
                child: Text('Validar'),
              ),
              SizedBox(
                height: space1,
              ),
              TextButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all<double>(2),
                  fixedSize: MaterialStateProperty.all<Size>(
                      Size.fromWidth(calculateMaxWidth(context))),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                ),
                onPressed: (){},
                child: Text('No recíbi codigo'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
