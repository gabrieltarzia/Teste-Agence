import 'package:agence_task/lib.dart';

class AppMessages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          StringsContants.hello: 'hello world',
          StringsContants.loginWithYourAccount: 'Login With Your Account',
          StringsContants.forgetPassWord: 'Forget My PassWord',
          StringsContants.or: 'Or',
          StringsContants.login: 'Login',
          StringsContants.profile: 'Profile',
          StringsContants.myItens: 'My Itens',
          StringsContants.settings: 'Settings',
          StringsContants.logout: 'Logout',
          StringsContants.loginWithFacebook: 'Facebook',
          StringsContants.loginWithGoogle: 'Google',
          StringsContants.userName: 'UserName',
          StringsContants.passWord: 'PassWord',
        },
        'pt_BR': {
          StringsContants.hello: 'olá mundo',
          StringsContants.loginWithYourAccount: 'Entre com sua conta',
          StringsContants.forgetPassWord: 'Esquici Minha Senha',
          StringsContants.or: 'Ou',
          StringsContants.login: 'Entrar',
          StringsContants.profile: 'Perfil',
          StringsContants.myItens: 'Meus Items',
          StringsContants.settings: 'Configurações',
          StringsContants.logout: 'Sair',
          StringsContants.loginWithFacebook: 'Facebook',
          StringsContants.loginWithGoogle: 'Google',
          StringsContants.userName: 'Nome De Usuário',
          StringsContants.passWord: 'Senha',
        },
      };
}
