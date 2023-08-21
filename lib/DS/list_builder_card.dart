import 'package:flutter/material.dart';
import '../transparency/cargos_vagos_ocupados/module/model/positions_model.dart';

Widget listBuilderCard(BuildContext context, Positions model) {
  return ListView.builder(
      itemCount: model.entrancia.length,
      itemBuilder: (context, index) {
        return Container(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text("Entrancia: ${model.entrancia[index]}"),
                    Text("Speciality: ${model.speciality[index]}"),
                    Text("Month: ${model.month[index]}"),
                    Text("Year: ${model.year[index]}"),
                  ],
                ),
              ),
            ));
      });
}
