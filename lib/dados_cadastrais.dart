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
            SizedBox(height: 10,),
            rotuloTexto('Data de nascimento'),
            TextField(
              controller: controlaNascimento,
              readOnly: true,
              onTap: () async {
                var data = await showDatePicker(
                  context: context, 
                  initialDate: DateTime(2000,1,1), 
                  firstDate: DateTime(1900,5,20), 
                  lastDate: DateTime(2023, 10, 23),
                );
                //print(data);
                controlaNascimento.text = data.toString();
              },
            ),
            SizedBox(height: 10,),
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

  Text rotuloTexto(String rotulo) {
    return Text(
            rotulo,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          );
  }
}
