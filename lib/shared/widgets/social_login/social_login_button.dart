import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/app_text_style.dart';

class SocialLoginButton extends StatelessWidget {
  // Criação da função VoidCallBack que virá dentro da variável onTap.
  final VoidCallback onTap;
  const SocialLoginButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // InkWell é um widget que permite passar o onTap
    return InkWell(
      onTap: onTap,
      child: Container(
        // Controlando a altura da imagem e texto do nosso button
        height: 56,
        // Aplicando cor e borda no botão
        decoration: BoxDecoration(
          color: AppColors.shape,
          borderRadius: BorderRadius.circular(5),
          border: Border.fromBorderSide(
            BorderSide(color: AppColors.stroke),
          ),
        ),
        // Criando uma linha
        child: Row(
          children: [
            // Imagem com Expanded, para separar a imagem Google do texto
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                    ),
                    child: Image.asset(AppImages.google),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    height: 46,
                    width: 1,
                    color: AppColors.stroke,
                  ),
                ],
              ),
            ),
            // Texto com Expanded, para separar o texto da imagem do Google
            Expanded(
              flex: 4,
              // Texto do nosso button, chamando o style de cor
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Entrar com Google", style: AppTextStyles.buttonGray),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
