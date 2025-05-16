import 'package:meu_app_oo/service/notificacao_interface.dart';

import '../../classes/pessoa_abstract.dart';

class NotificacaoSms implements NotificacaoInterface {

  @override
  void enviarNotificacao(Pessoa pessoa) {

    print("Enviando Notificação pelo SMS para: ${pessoa.getNome()}");
  }
}
