import 'package:app_logistica/util/constants.dart';
import 'package:app_logistica/util/constraints.dart';
import 'package:app_logistica/views/home_view.dart';
import 'package:app_logistica/widgets/image_profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FirstPerfilView extends StatelessWidget {

  void handleNextViewHome(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => HomeView()));
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
            Text('Para finalizar.',
                style: TextStyle(
                    fontSize: fontSize1, fontWeight: FontWeight.bold)),
            SizedBox(
              height: space3,
            ),
            Text(
                'Configura tu comercio para brindarte un servicio personalizado, rápido y seguro.',
                style: TextStyle(
                    fontSize: fontSize1, fontWeight: FontWeight.normal)),
            SizedBox(
              height: space1,
            ),
            ImageProfileWidget(),
            SizedBox(
              height: space2,
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder:
                      OutlineInputBorder(borderSide: BorderSide(color: color1)),
                  labelText: 'Nombre',
                  labelStyle: TextStyle(color: Colors.black)),
            ),
            SizedBox(
              height: space2,
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder:
                      OutlineInputBorder(borderSide: BorderSide(color: color1)),
                  labelText: 'CC o Nit',
                  labelStyle: TextStyle(color: Colors.black)),
            ),
            SizedBox(
              height: space2,
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder:
                      OutlineInputBorder(borderSide: BorderSide(color: color1)),
                  labelText: 'Dirreción favorita',
                  labelStyle: TextStyle(color: Colors.black)),
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
                onPressed: () => handleNextViewHome(context),
                child: Text('Siguiente'),
              )
          ],
        ),
      ),
    ));
  }
}
