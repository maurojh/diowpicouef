import 'package:diowpicouef/dados_cadastrais.dart';
import 'package:flutter/material.dart';

class DrawerAlterado extends StatelessWidget {
  const DrawerAlterado({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.orange),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Image.network(
                  'https://cdn.pensador.com/img/authors/ho/me/homer-simpson-l.jpg'),
            ),
            accountName: const Text('Fulano'),
            accountEmail: const Text('fulano@email.com'),
          ),
          InkWell(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              width: double.infinity,
              child: const Row(
                children: [
                  Icon(Icons.person),
                  SizedBox(width: 5,),
                  Text('Dados cadastrais'),
                ],
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, 
              MaterialPageRoute(
                builder: (context) => const DadosCadastrais()
              ),
              );
            },
          ),
          InkWell(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              width: double.infinity,
              child: const Row(
                children: [
                  Icon(Icons.info),
                  SizedBox(width: 5,),
                  Text('Termos de uso e privacidade'),
                ],
              ),
            ),
          ),
          InkWell(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              width: double.infinity,
              child: const Row(
                children: [
                  Icon(Icons.settings),
                  SizedBox(width: 5,),
                  Text('Configurações'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
