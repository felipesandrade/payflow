import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_images.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Esqueleto da aplicação
    return Scaffold(
      // Cor do fundo da tela splash
      backgroundColor: AppColors.background,
      //Corpo da nossa tela, utilizando widget de pilha -> stack -> empilhamento de coisas
      body: Stack(
        // Stack recebe uma lista de children, pois queremos colocar vários intens empilhados
        children: [
          // Imagem union.png
          Center(child: Image.asset(AppImages.union)),
          // Imagem logoFull.png
          Center(child: Image.asset(AppImages.logoFull)),
        ],
      ),
    );
  }
}
