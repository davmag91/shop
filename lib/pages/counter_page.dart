import 'package:flutter/material.dart';
import 'package:shop/providers/counter.dart';
import '../models/product.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({
    super.key,
  });

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    final provider = CounterProvider.of(context);

    return Scaffold(
        appBar: AppBar(
          title: Text('Exemplo contador'),
        ),
        body: Column(
          children: [
            Text(provider?.state.value.toString() ?? '0'),
            IconButton(
              onPressed: () {
                setState(() {
                  provider?.state.inc();
                  provider?.state.value.toString();
                });
              },
              icon: Icon(Icons.add),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  provider?.state.dec();
                  print(provider?.state.value.toString());
                });
              },
              icon: Icon(Icons.remove),
            ),
          ],
        ));
  }
}
