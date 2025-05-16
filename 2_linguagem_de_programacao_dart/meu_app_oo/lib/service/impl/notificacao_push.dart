import 'package:meu_app_oo/service/notificacao_interface.dart';

import '../../classes/pessoa_abstract.dart';

class NotificacaoPush implements NotificacaoInterface {

  @override
  void enviarNotificacao(Pessoa pessoa) {

    print("Enviando Notificação do tipo Push para: ${pessoa.getNome()}");
  }
}
