import 'package:flutter/material.dart';

class DadosCadastrais extends StatefulWidget {
  const DadosCadastrais({super.key});

  @override
  State<DadosCadastrais> createState() => _DadosCadastraisState();
}

class _DadosCadastraisState extends State<DadosCadastrais> {
  TextEditingController controlaNome = TextEditingController(
    text: '',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text('Meus dados'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Nome',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            TextField(
              controller: controlaNome,
            ),
            TextButton(
              onPressed: () {
                print(controlaNome.text);
              },
              child: const Text('Salvar'),
            )
          ],
        ),
      ),
    );
  }
}
