import 'package:flutter/material.dart';
import 'package:mvc_arch/transparency/cargos_vagos_ocupados/module/model/collection_model.dart';
import '../transparency/cargos_vagos_ocupados/module/model/positions_model.dart';

Widget listBuilderCard(BuildContext context, CollectionModel model) {
  return Container(
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
    ),
  );
}
