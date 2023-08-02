// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:ie_tec_app/core/auth/login/login_page.dart';
// import 'package:ie_tec_app/core/context/tb_context.dart';

// void main() {
//   testWidgets('Teste de validação de e-mail inválido',
//       (WidgetTester tester) async {
//     final tbContext = TbContext();
//     // Construa o widget do formulário de login.
//     await tester.pumpWidget(MaterialApp(
//       home: Scaffold(
//         body: LoginPage(tbContext),
//       ),
//     ));

//     // Encontre o campo de entrada para o e-mail (username).
//     final emailField = find.byKey(Key('email_field'));

//     // Insira um e-mail inválido no campo de e-mail.
//     await tester.enterText(emailField, 'email_invalido');

//     // Tente enviar o formulário.
//     await tester.tap(find.text(
//         'Enviar')); // Substitua 'Enviar' pelo texto do botão de envio do formulário.
//     await tester.pump();

//     // Verifique se a mensagem de erro é exibida.
//     expect(find.text('E-mail inválido'), findsOneWidget);
//   });

//   // Adicione mais testes de validação aqui, se necessário.
// }
