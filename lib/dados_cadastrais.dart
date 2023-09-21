import 'package:flutter/material.dart';

class DadosCadastrais extends StatefulWidget {
  const DadosCadastrais({super.key});

  @override
  State<DadosCadastrais> createState() => _DadosCadastraisState();
}

class _DadosCadastraisState extends State<DadosCadastrais> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text('Meus dados'),
        ),
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical:12, horizontal: 16),
        child: Column(
          children: [
            Text('Nome',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}