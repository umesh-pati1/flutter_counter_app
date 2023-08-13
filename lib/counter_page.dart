import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_couter_app/bloc/counter_bloc.dart';
import 'package:flutter_couter_app/bloc/counter_event.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: BlocBuilder<CounterBloc, int>(
        builder: (context, count) => Center(
          child: Text(
            '$count',
            style: const TextStyle(fontSize: 24.0),
          ),
        ),
      ),
      floatingActionButton: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                child: const Icon(Icons.add),
                onPressed: () =>
                    context.read<CounterBloc>().add(CounterIncrementPressed()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                child: const Icon(Icons.remove),
                onPressed: () =>
                    context.read<CounterBloc>().add(CounterDecrementPressed()),
              ),
            )
          ]),
    );
  }
}
