import 'package:diowpicouef/card_detail.dart';
import 'package:diowpicouef/repositories/card_repository_detail.dart';
import 'package:flutter/material.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  CardDetail? cardDetail;
  CardRepositoryDetail cardRepositoryDetail = CardRepositoryDetail();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    carregaDados();
  }

  void carregaDados() async {
    cardDetail = await cardRepositoryDetail.get();
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      width: double.infinity,
      child: Card(
        elevation: 8,
        shadowColor: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  Image.network(
                    'https://cdn.pensador.com/img/authors/ho/me/homer-simpson-l.jpg',
                    height: 50,
                  ),
                  const Text(
                    'Meu card',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
              ),
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  //Navigator.pop(context);
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (BuildContext bc) {
                    return const CardDetail();
                  }));
                },
                child: const Text(
                  'Ler mais',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
