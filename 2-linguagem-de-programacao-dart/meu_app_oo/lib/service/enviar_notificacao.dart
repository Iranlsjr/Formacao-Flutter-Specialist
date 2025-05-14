import 'package:meu_app_oo/enum/tipo_notificacao.dart';
import 'package:meu_app_oo/service/impl/notificacao_email.dart';
import 'package:meu_app_oo/service/impl/notificacao_push.dart';
import 'package:meu_app_oo/service/impl/notificacao_sms.dart';
import 'package:meu_app_oo/service/notificacao_interface.dart';
import 'package:meu_app_oo/classes/pessoa_abstract.dart';

class EnviarNotificacao {
  NotificacaoInterface? notificacao;

  void notificar(Pessoa pessoa) {
    switch (pessoa.getTipoNotificacao()) {
      case TipoNotificacao.email:
        notificacao = NotificacaoEmail();
        break;
      case TipoNotificacao.puhsNotification:
        notificacao = NotificacaoPush();
        break;
      case TipoNotificacao.sms:
        notificacao = NotificacaoSms();
        break;
      default:
      
        break;
    }
    if (notificacao != null) {
      notificacao!.enviarNotificacao(pessoa);
    }else{
      print("${pessoa.getNome()} Não possui Notificação ativa até o momento");
    }
  }
}
