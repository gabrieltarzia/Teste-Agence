import 'package:agence_task/lib.dart';

class AppMessages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          StringsContants.hello: 'hello world',
          StringsContants.loginWithYourAccount: 'Login With Your Account',
          StringsContants.forgetPassWord: 'I Forget My PassWord',
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
          StringsContants.welcome: 'Welcome ',
          StringsContants.back: 'Back',
          StringsContants.selectLanguage: 'Select Your Language',
          StringsContants.brazilianPortuguese: 'Brazilian Portuguese',
          StringsContants.english: 'English',
          StringsContants.itemDetail: 'Item Detail',
          StringsContants.error: 'Error',
          StringsContants.errorMessage: 'Failed To Login',
          StringsContants.buy: 'Buy',
          StringsContants.cancel: 'Cancel',
          StringsContants.confirm: 'Confirm',
          StringsContants.confirmBuy: 'Confirmar Compra',
          StringsContants.successBuy: 'Succes',
          StringsContants.succefulBuyMessege: 'Succeful Buy',
          StringsContants.locationError: 'Location Permission Denied',
          StringsContants.userInformationTitle: 'User Information',
          StringsContants.noItens: 'No Owned Itens',
          StringsContants.userInformation: '''
Name: current user name
Email: current user's email
Date of birth: current user's date of birth
Registration date: 00/00/0000
''',
          StringsContants.resetPasswordEmail: 'New Password Sent To Your Email',
          StringsContants.insertEmail: 'Insert Your Email',
        },
        'pt_BR': {
          StringsContants.hello: 'olá mundo',
          StringsContants.loginWithYourAccount: 'Entre com sua conta',
          StringsContants.forgetPassWord: 'Esqueci Minha Senha',
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
          StringsContants.welcome: 'Bem vindo ',
          StringsContants.back: 'Voltar',
          StringsContants.selectLanguage: 'Selecione Seu Idioma',
          StringsContants.brazilianPortuguese: 'Portugês Brasileiro',
          StringsContants.english: 'Inglês',
          StringsContants.itemDetail: 'Detalhes Do Item',
          StringsContants.error: 'Erro',
          StringsContants.errorMessage: 'Erro Ao Entrar',
          StringsContants.buy: 'Comprar',
          StringsContants.cancel: 'Cancelar',
          StringsContants.confirm: 'Confirmar',
          StringsContants.confirmBuy: 'Confirmar Compra?',
          StringsContants.successBuy: 'Sucesso',
          StringsContants.succefulBuyMessege: 'Compra Efetuada',
          StringsContants.locationError: 'Permissões De Localização Negadas',
          StringsContants.userInformationTitle: 'Informações Do Usuário',
          StringsContants.noItens: 'Sem Itens Comprados',
          StringsContants.userInformation: '''
Nome: nome do usuário atual
Email: email do usuário atual
Data de nasciment: data de nascimento do usuário atual
Data de cadastro: 00/00/0000
''',
          StringsContants.resetPasswordEmail:
              'Nova Senha Enviada Para Seu Email',
          StringsContants.insertEmail: 'Insira Seu Email',
        }
      };
}
