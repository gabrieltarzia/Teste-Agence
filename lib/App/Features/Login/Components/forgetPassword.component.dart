import 'package:agence_task/App/App.dart';
import 'package:cupertino_text_button/cupertino_text_button.dart';
import 'package:flutter/material.dart';

class ForgetPassWordComponent extends StatelessWidget {
  ForgetPassWordComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Center(
        child: CupertinoTextButton(
          onTap: () {},
          text: 'Esqueci Minha Senha',
          style: ThemeConstants.titleStyle,
          color: Colors.white,
        ),
      );
}
