// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'pt';

  static String m0(appTitle) =>
      "Congratulations!\nYour ${appTitle} account has been activated.\nNow you can login to your ${appTitle} space.";

  static String m1(contact) =>
      "A security code has been sent to your email address at ${contact}.";

  static String m2(time) =>
      "Resend code in ${Intl.plural(time, one: '1 second', other: '${time} seconds')}";

  static String m3(contact) =>
      "A security code has been sent to your phone at ${contact}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "No": MessageLookupByLibrary.simpleMessage("Não"),
        "OR": MessageLookupByLibrary.simpleMessage("OU"),
        "Yes": MessageLookupByLibrary.simpleMessage("Sim"),
        "accept": MessageLookupByLibrary.simpleMessage("Aceitar"),
        "acceptPrivacyPolicyMessage": MessageLookupByLibrary.simpleMessage(
            "Você deve aceitar nossa Política de Privacidade"),
        "acceptTermsOfUseMessage": MessageLookupByLibrary.simpleMessage(
            "Você deve aceitar nossos Termos de Uso"),
        "accountActivated":
            MessageLookupByLibrary.simpleMessage("Conta ativada com sucesso!"),
        "accountActivatedText": m0,
        "actionData": MessageLookupByLibrary.simpleMessage("Dados da ação"),
        "activatingAccount":
            MessageLookupByLibrary.simpleMessage("Ativando a conta..."),
        "activatingAccountText": MessageLookupByLibrary.simpleMessage(
            "Sua conta está sendo ativada.\nPor favor, aguarde..."),
        "active": MessageLookupByLibrary.simpleMessage("Ativo"),
        "address": MessageLookupByLibrary.simpleMessage("Endereço"),
        "address2": MessageLookupByLibrary.simpleMessage("Endereço 2"),
        "alarmAcknowledgeText": MessageLookupByLibrary.simpleMessage(
            "Tem certeza de que deseja reconhecer o alarme?"),
        "alarmAcknowledgeTitle":
            MessageLookupByLibrary.simpleMessage("Reconhecer Alarme"),
        "alarmClearText": MessageLookupByLibrary.simpleMessage(
            "Tem certeza de que deseja limpar o alarme?"),
        "alarmClearTitle":
            MessageLookupByLibrary.simpleMessage("Limpar Alarme"),
        "alarms": MessageLookupByLibrary.simpleMessage("Alarmes"),
        "allDevices":
            MessageLookupByLibrary.simpleMessage("Todos os dispositivos"),
        "alreadyHaveAnAccount":
            MessageLookupByLibrary.simpleMessage("Já tem uma conta?"),
        "appTitle": MessageLookupByLibrary.simpleMessage("ThingsBoard"),
        "assetName": MessageLookupByLibrary.simpleMessage("Nome do Ativo"),
        "assets": MessageLookupByLibrary.simpleMessage("Ativos"),
        "assignedToCustomer":
            MessageLookupByLibrary.simpleMessage("Atribuído ao cliente"),
        "auditLogDetails": MessageLookupByLibrary.simpleMessage(
            "Detalhes do log de auditoria"),
        "auditLogs": MessageLookupByLibrary.simpleMessage("Logs de Auditoria"),
        "backupCodeAuthDescription": MessageLookupByLibrary.simpleMessage(
            "Por favor, insira um dos seus códigos de backup."),
        "backupCodeAuthPlaceholder":
            MessageLookupByLibrary.simpleMessage("Código de backup"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancelar"),
        "changePassword": MessageLookupByLibrary.simpleMessage("Alterar senha"),
        "city": MessageLookupByLibrary.simpleMessage("Cidade"),
        "confirmNotRobotMessage": MessageLookupByLibrary.simpleMessage(
            "Você deve confirmar que não é um robô"),
        "continueText": MessageLookupByLibrary.simpleMessage("Continuar"),
        "country": MessageLookupByLibrary.simpleMessage("País"),
        "createAccount": MessageLookupByLibrary.simpleMessage("Criar Conta"),
        "createPasswordStar":
            MessageLookupByLibrary.simpleMessage("Criar uma senha *"),
        "currentPassword": MessageLookupByLibrary.simpleMessage("Senha atual"),
        "currentPasswordRequireText":
            MessageLookupByLibrary.simpleMessage("Senha atual é obrigatória."),
        "currentPasswordStar":
            MessageLookupByLibrary.simpleMessage("Senha atual *"),
        "customer": MessageLookupByLibrary.simpleMessage("Cliente"),
        "customers": MessageLookupByLibrary.simpleMessage("Clientes"),
        "devices": MessageLookupByLibrary.simpleMessage("Dispositivos"),
        "email": MessageLookupByLibrary.simpleMessage("E-mail"),
        "emailAuthDescription": m1,
        "emailAuthPlaceholder":
            MessageLookupByLibrary.simpleMessage("Código de e-mail"),
        "emailInvalidText":
            MessageLookupByLibrary.simpleMessage("Formato de e-mail inválido."),
        "emailRequireText":
            MessageLookupByLibrary.simpleMessage("E-mail é obrigatório."),
        "emailStar": MessageLookupByLibrary.simpleMessage("E-mail *"),
        "emailVerification":
            MessageLookupByLibrary.simpleMessage("Verificação de e-mail"),
        "emailVerificationInstructionsText": MessageLookupByLibrary.simpleMessage(
            "Siga as instruções fornecidas no e-mail para concluir o procedimento de inscrição. Observação: se você não viu o e-mail por um tempo, verifique sua pastade 'spam' ou tente reenviar o e-mail clicando no botão 'Reenviar'."),
        "emailVerificationSentText": MessageLookupByLibrary.simpleMessage(
            "Um e-mail com detalhes de verificação foi enviado para o endereço de e-mail especificado."),
        "emailVerified":
            MessageLookupByLibrary.simpleMessage("E-mail verificado"),
        "entityType": MessageLookupByLibrary.simpleMessage("Tipo de Entidade"),
        "failureDetails":
            MessageLookupByLibrary.simpleMessage("Detalhes da falha"),
        "firstName": MessageLookupByLibrary.simpleMessage("nome"),
        "firstNameRequireText":
            MessageLookupByLibrary.simpleMessage("O nome é obrigatório."),
        "firstNameStar": MessageLookupByLibrary.simpleMessage("Nome *"),
        "firstNameUpper": MessageLookupByLibrary.simpleMessage("Primeiro Nome"),
        "home": MessageLookupByLibrary.simpleMessage("Início"),
        "imNotARobot":
            MessageLookupByLibrary.simpleMessage("Eu não sou um robô"),
        "inactive": MessageLookupByLibrary.simpleMessage("Inativo"),
        "inactiveUserAlreadyExists":
            MessageLookupByLibrary.simpleMessage("Usuário inativo já existe"),
        "inactiveUserAlreadyExistsMessage": MessageLookupByLibrary.simpleMessage(
            "Já existe um usuário registrado com um endereço de e-mail não verificado.\nClique no botão 'Reenviar' se você deseja reenviar o e-mail de verificação."),
        "invalidPasswordLengthMessage": MessageLookupByLibrary.simpleMessage(
            "Sua senha deve ter pelo menos 6 caracteres"),
        "label": MessageLookupByLibrary.simpleMessage("Rótulo"),
        "lastName": MessageLookupByLibrary.simpleMessage("sobrenome"),
        "lastNameRequireText":
            MessageLookupByLibrary.simpleMessage("O sobrenome é obrigatório."),
        "lastNameStar": MessageLookupByLibrary.simpleMessage("Sobrenome *"),
        "lastNameUpper": MessageLookupByLibrary.simpleMessage("Último Nome"),
        "listIsEmptyText": MessageLookupByLibrary.simpleMessage(
            "A lista está vazia no momento."),
        "login": MessageLookupByLibrary.simpleMessage("Entrar"),
        "loginNotification":
            MessageLookupByLibrary.simpleMessage("Faça login na sua conta"),
        "logoDefaultValue":
            MessageLookupByLibrary.simpleMessage("Logotipo do ThingsBoard"),
        "logout": MessageLookupByLibrary.simpleMessage("Sair"),
        "mfaProviderBackupCode":
            MessageLookupByLibrary.simpleMessage("Código de backup"),
        "mfaProviderEmail": MessageLookupByLibrary.simpleMessage("E-mail"),
        "mfaProviderSms": MessageLookupByLibrary.simpleMessage("SMS"),
        "mfaProviderTopt":
            MessageLookupByLibrary.simpleMessage("Aplicativo de autenticação"),
        "more": MessageLookupByLibrary.simpleMessage("Mais"),
        "newPassword": MessageLookupByLibrary.simpleMessage("Nova Senha"),
        "newPassword2":
            MessageLookupByLibrary.simpleMessage("Nova Senha novamente"),
        "newPassword2RequireText": MessageLookupByLibrary.simpleMessage(
            "É necessário inserir a nova senha novamente."),
        "newPassword2Star":
            MessageLookupByLibrary.simpleMessage("Nova Senha novamente *"),
        "newPasswordRequireText":
            MessageLookupByLibrary.simpleMessage("Nova senha é obrigatória."),
        "newPasswordStar": MessageLookupByLibrary.simpleMessage("Nova Senha *"),
        "newUserText": MessageLookupByLibrary.simpleMessage("Novo Usuário?"),
        "notImplemented":
            MessageLookupByLibrary.simpleMessage("Não implementado!"),
        "password": MessageLookupByLibrary.simpleMessage("Senha"),
        "passwordErrorNotification": MessageLookupByLibrary.simpleMessage(
            "As senhas digitadas devem ser iguais!"),
        "passwordForgotText":
            MessageLookupByLibrary.simpleMessage("Esqueceu sua senha?"),
        "passwordRequireText":
            MessageLookupByLibrary.simpleMessage("Senha é obrigatória."),
        "passwordReset":
            MessageLookupByLibrary.simpleMessage("Redefinir senha"),
        "passwordResetLinkSuccessfullySentNotification":
            MessageLookupByLibrary.simpleMessage(
                "O link de redefinição de senha foi enviado com sucesso!"),
        "passwordResetText": MessageLookupByLibrary.simpleMessage(
            "Digite o e-mail associado à sua conta e enviaremos um e-mail com o link para redefinir a senha"),
        "passwordSuccessNotification":
            MessageLookupByLibrary.simpleMessage("Senha alterada com sucesso"),
        "phone": MessageLookupByLibrary.simpleMessage("Telefone"),
        "postalCode": MessageLookupByLibrary.simpleMessage("CEP"),
        "privacyPolicy":
            MessageLookupByLibrary.simpleMessage("Política de Privacidade"),
        "profileSuccessNotification": MessageLookupByLibrary.simpleMessage(
            "Perfil atualizado com sucesso"),
        "repeatPasswordStar":
            MessageLookupByLibrary.simpleMessage("Repita sua senha *"),
        "requestPasswordReset": MessageLookupByLibrary.simpleMessage(
            "Solicitar redefinição de senha"),
        "resend": MessageLookupByLibrary.simpleMessage("Reenviar"),
        "resendCode": MessageLookupByLibrary.simpleMessage("Reenviar código"),
        "resendCodeWait": m2,
        "selectWayToVerify": MessageLookupByLibrary.simpleMessage(
            "Selecione uma forma de verificação"),
        "signIn": MessageLookupByLibrary.simpleMessage("Entrar"),
        "signUp": MessageLookupByLibrary.simpleMessage("Inscrever-se"),
        "smsAuthDescription": m3,
        "smsAuthPlaceholder":
            MessageLookupByLibrary.simpleMessage("Código SMS"),
        "stateOrProvince":
            MessageLookupByLibrary.simpleMessage("Estado / Província"),
        "systemAdministrator":
            MessageLookupByLibrary.simpleMessage("Administrador do Sistema"),
        "tenantAdministrator":
            MessageLookupByLibrary.simpleMessage("Administrador do Locatário"),
        "termsOfUse": MessageLookupByLibrary.simpleMessage("Termos de Uso"),
        "title": MessageLookupByLibrary.simpleMessage("Título"),
        "toptAuthPlaceholder": MessageLookupByLibrary.simpleMessage("Código"),
        "totpAuthDescription": MessageLookupByLibrary.simpleMessage(
            "Digite o código de segurança do seu aplicativo de autenticação."),
        "tryAgain": MessageLookupByLibrary.simpleMessage("Tentar Novamente"),
        "tryAnotherWay":
            MessageLookupByLibrary.simpleMessage("Tentar outra forma"),
        "type": MessageLookupByLibrary.simpleMessage("Tipo"),
        "username": MessageLookupByLibrary.simpleMessage("Nome de usuário"),
        "verificationCodeIncorrect": MessageLookupByLibrary.simpleMessage(
            "O código de verificação está incorreto"),
        "verificationCodeInvalid": MessageLookupByLibrary.simpleMessage(
            "Formato de código de verificação inválido"),
        "verificationCodeManyRequest": MessageLookupByLibrary.simpleMessage(
            "Muitas solicitações. Verifique o código de verificação"),
        "verifyYourIdentity":
            MessageLookupByLibrary.simpleMessage("Verifique sua identidade")
      };
}
