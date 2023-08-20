import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../DS/list_builder_card.dart';
import "../controller/bloc/positions_bloc.dart";
import '../controller/bloc/positions_event.dart';
import '../controller/bloc/positions_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PositionsBloc _bloc = PositionsBloc();
  @override
  void initState() {
    _bloc.add(GetPositionsList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Lista de Testes'),
            BlocProvider<PositionsBloc>(
              create: (context) => _bloc,
              child: BlocListener<PositionsBloc, PositionState>(
                  listener: (context, state) {
                if (state is PositionsErrorState) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(state.message),
                    duration: const Duration(seconds: 60),
                  ));
                }
              }, child: BlocBuilder<PositionsBloc, PositionState>(
                      builder: (context, state) {
                if (state is PositionsLoadingState ||
                    state is PositionsInitialState) {
                  return const CircularProgressIndicator();
                }
                if (state is PositionsLoadedState) {
                  return listBuilderCard(context, state.positions);
                }
                return const SizedBox();
              })),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () => Modular.to.navigate('/form'),
                  child: const Text('Novo dado')),
            ),
          ],
        ),
      ),
    );
  }
}
