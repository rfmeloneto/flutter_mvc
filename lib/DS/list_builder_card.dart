import 'package:flutter/material.dart';
import '../transparency/cargos_vagos_ocupados/module/model/positions_model.dart';

Widget listBuilderCard(BuildContext context, Positions model) {
  return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Container(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text("Entrancia: ${model.entrancia}"),
                    Text("Speciality: ${model.speciality}"),
                    Text("Month: ${model.month}"),
                    Text("Year: ${model.year}"),
                  ],
                ),
              ),
            ));
      });
}
