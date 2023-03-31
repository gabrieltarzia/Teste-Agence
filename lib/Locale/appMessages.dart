import 'package:agence_task/lib.dart';

class AppMessages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          StringsConstants.hello: 'hello world',
          StringsConstants.loginWithYourAccount: 'Login With Your Account',
          StringsConstants.forgetPassWord: 'I Forget My PassWord',
          StringsConstants.or: 'Or',
          StringsConstants.login: 'Login',
          StringsConstants.profile: 'Profile',
          StringsConstants.myItens: 'My Itens',
          StringsConstants.settings: 'Settings',
          StringsConstants.logout: 'Logout',
          StringsConstants.loginWithFacebook: 'Facebook',
          StringsConstants.loginWithGoogle: 'Google',
          StringsConstants.userName: 'UserName',
          StringsConstants.passWord: 'PassWord',
          StringsConstants.welcome: 'Welcome ',
          StringsConstants.back: 'Back',
          StringsConstants.selectLanguage: 'Select Your Language',
          StringsConstants.brazilianPortuguese: 'Brazilian Portuguese',
          StringsConstants.english: 'English',
          StringsConstants.itemDetail: 'Item Detail',
          StringsConstants.error: 'Error',
          StringsConstants.errorMessage: 'Failed To Login',
          StringsConstants.buy: 'Buy',
          StringsConstants.cancel: 'Cancel',
          StringsConstants.confirm: 'Confirm',
          StringsConstants.confirmBuy: 'Confirmar Compra',
          StringsConstants.successBuy: 'Succes',
          StringsConstants.succefulBuyMessege: 'Succeful Buy',
          StringsConstants.locationError: 'Location Permission Denied',
          StringsConstants.userInformationTitle: 'User Information',
          StringsConstants.noItens: 'No Owned Itens',
          StringsConstants.enableLocationPermission:
              'Enable Your Localization Permission',
          StringsConstants.deniedLocationPermission:
              'Denied Localization Permission',
          StringsConstants.userInformation: '''
Name: current user name
Email: current user's email
Date of birth: current user's date of birth
Registration date: 00/00/0000
''',
          StringsConstants.resetPasswordEmail: 'New Password Sent To Your Email',
          StringsConstants.insertEmail: 'Insert Your Email',
        },
        'pt_BR': {
          StringsConstants.hello: 'olá mundo',
          StringsConstants.loginWithYourAccount: 'Entre com sua conta',
          StringsConstants.forgetPassWord: 'Esqueci Minha Senha',
          StringsConstants.or: 'Ou',
          StringsConstants.login: 'Entrar',
          StringsConstants.profile: 'Perfil',
          StringsConstants.myItens: 'Meus Items',
          StringsConstants.settings: 'Configurações',
          StringsConstants.logout: 'Sair',
          StringsConstants.loginWithFacebook: 'Facebook',
          StringsConstants.loginWithGoogle: 'Google',
          StringsConstants.userName: 'Nome De Usuário',
          StringsConstants.passWord: 'Senha',
          StringsConstants.welcome: 'Bem vindo ',
          StringsConstants.back: 'Voltar',
          StringsConstants.selectLanguage: 'Selecione Seu Idioma',
          StringsConstants.brazilianPortuguese: 'Portugês Brasileiro',
          StringsConstants.english: 'Inglês',
          StringsConstants.itemDetail: 'Detalhes Do Item',
          StringsConstants.error: 'Erro',
          StringsConstants.errorMessage: 'Erro Ao Entrar',
          StringsConstants.buy: 'Comprar',
          StringsConstants.cancel: 'Cancelar',
          StringsConstants.confirm: 'Confirmar',
          StringsConstants.confirmBuy: 'Confirmar Compra?',
          StringsConstants.successBuy: 'Sucesso',
          StringsConstants.succefulBuyMessege: 'Compra Efetuada',
          StringsConstants.locationError: 'Permissões De Localização Negadas',
          StringsConstants.userInformationTitle: 'Informações Do Usuário',
          StringsConstants.noItens: 'Sem Itens Comprados',
          StringsConstants.insertEmail: 'Insira Seu Email',
          StringsConstants.enableLocationPermission:
              'Habilite As Permissões De Localização',
          StringsConstants.deniedLocationPermission:
              'Permissões De Localização Negadas',
          StringsConstants.resetPasswordEmail:
              'Nova Senha Enviada Para Seu Email',
          StringsConstants.userInformation: '''
Nome: nome do usuário atual
Email: email do usuário atual
Data de nasciment: data de nascimento do usuário atual
Data de cadastro: 00/00/0000
''',
        }
      };
}
