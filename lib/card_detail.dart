import 'package:flutter/material.dart';

class CardDetail extends StatefulWidget {
  const CardDetail({super.key});

  @override
  State<CardDetail> createState() => _CardDetailState();
}

class _CardDetailState extends State<CardDetail> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 1,
      child: Scaffold(
        appBar: AppBar(actions: const [], title: const Text('Detalhes'),),
      ),
    );
  }
}