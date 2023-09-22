import 'package:diowpicouef/repositories/linguagens_repository.dart';
import 'package:diowpicouef/repositories/nivel_repository.dart';
import 'package:flutter/material.dart';

class DadosCadastrais extends StatefulWidget {
  const DadosCadastrais({super.key});

  @override
  State<DadosCadastrais> createState() => _DadosCadastraisState();
}

class _DadosCadastraisState extends State<DadosCadastrais> {
  var nivelRepository = NivelRepository();
  var linguagensRepository = LinguagensRepository();
  var niveis = [];
  var linguagens = [];
  String nivelSelecionado = '';

  @override
  void initState() {
    niveis = nivelRepository.retornaNiveis();
    linguagens = linguagensRepository.retornaLinguagens();
    super.initState();
  }

  TextEditingController controlaNome = TextEditingController(
    text: '',
  );
  TextEditingController controlaNascimento = TextEditingController(
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
            rotuloTexto('Nome'),
            TextField(
              controller: controlaNome,
            ),
            rotuloTexto('Data de nascimento'),
            TextField(
              controller: controlaNascimento,
              readOnly: true,
              onTap: () async {
                var data = await showDatePicker(
                  context: context,
                  initialDate: DateTime(2000, 1, 1),
                  firstDate: DateTime(1900, 5, 20),
                  lastDate: DateTime(2023, 10, 23),
                );
                //print(data);
                controlaNascimento.text = data.toString();
              },
            ),
            rotuloTexto('Nível de experiência'),
            Column(
                children: niveis
                    .map(
                      (nivel) => RadioListTile(
                        selected: nivelSelecionado == nivel.toString(),
                        title: Text(nivel.toString()),
                        value: nivel.toString(), // valor que recebe o click
                        groupValue: nivelSelecionado,
                        onChanged: (value) {
                          setState(() {
                            nivelSelecionado = value.toString();
                          });
                        },
                      ),
                    )
                    .toList()),
            rotuloTexto('Linguagens preferidas'),
            CheckboxListTile(
              title: Text('Dart'),
              value: true, onChanged: (value) {}),
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

  Container rotuloTexto(String rotulo) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Text(
        rotulo,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
      ),
    );
  }
}
