import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/app_text_style.dart';
import 'package:payflow/shared/widgets/social_login/social_login_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // Aramazena o tamanho da tela na variável size
    final size = MediaQuery.of(context).size;

    // Esqueleto da nossa aplicação
    return Scaffold(
      // Cor do fundo da nossa aplicação
      backgroundColor: AppColors.background,
      //Corpo da nossa tela, utilizando widget de pilha -> stack -> empilhamento de coisas
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          // Stack recebe uma lista de children, pois queremos colocar vários intens empilhados
          children: [
            // Container responsável por configurar o background do app
            Container(
              // Seta o valor do width conforme o valor recebido em size
              width: size.width,
              // Seta o valor do height em 30%
              height: size.height * 0.36,
              // Seta a cor padrão do container em laranja
              color: AppColors.primary,
            ),
            // Incluindo a imagem e definindo a posição na tela
            Positioned(
                top: 40,
                left: 0,
                right: 0,
                // Iserindo imagem e setando o tamanho na tela
                child: Image.asset(
                  AppImages.person,
                  width: 208,
                  height: 300,
                )),
            // Incluindo a imagem menor e o texto
            Positioned(
              // Ajusta a posição dinamicamente, conforme o tamanho da tela
              bottom: size.height * 0.05,
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Adicionando a imagem
                  Image.asset(AppImages.logomini),
                  // Adicionando o texto e setando as posição na tela
                  Padding(
                    // Posicionamento do texto
                    padding:
                        const EdgeInsets.only(top: 30, left: 70, right: 70),
                    // Texto
                    child: Text("Organize seus boletos em um só lugar",
                        // Alinhamento do texto
                        textAlign: TextAlign.center,
                        // Estilo do texto
                        style: AppTextStyles.titleHome),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 40, right: 40, top: 40),
                    child: SocialLoginButton(
                      onTap: () {
                        print("clicou");
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
