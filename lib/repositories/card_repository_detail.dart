import 'package:diowpicouef/card_detail.dart';

class CardRepositoryDetail {

  Future<CardDetail> get() async {
    await Future.delayed(Duration(seconds: 3));
    return CardDetail();
  }
  
}