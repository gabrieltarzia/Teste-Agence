import 'package:agence_task/lib.dart';

class MyItenRepository extends GetConnect implements IMyItensRepository {
  @override
  List<Iten> getMyItens() => [
        Iten(
            image:
                'https://www.agence.com.br/wp-content/uploads/2022/12/desenvolvimento-mobile-238x300.png',
            name: 'Fábrica de Software',
            description:
                'Os desenvolvedores da agência implementam e testam a solução projetada com qualidade. Fornecemos ao cliente manuais e documentos de instalação do sistema.'),
        Iten(
            image:
                'https://www.agence.com.br/wp-content/uploads/2022/12/desenvolvimento-mobile-238x300.png',
            name: 'Fábrica de Software',
            description:
                'Os desenvolvedores da agência implementam e testam a solução projetada com qualidade. Fornecemos ao cliente manuais e documentos de instalação do sistema.'),
        Iten(
            image:
                'https://www.agence.com.br/wp-content/uploads/2022/12/desenvolvimento-mobile-238x300.png',
            name: 'Fábrica de Software',
            description:
                'Os desenvolvedores da agência implementam e testam a solução projetada com qualidade. Fornecemos ao cliente manuais e documentos de instalação do sistema.'),
        Iten(
            image:
                'https://www.agence.com.br/wp-content/uploads/2022/11/headhunting-370x466.png',
            name: 'Recrutamento e Seleção',
            description:
                'O processo de Recrutamento e Seleção da Agence é realizado criteriosamente para identificar os melhores profissionais de TI do mercado com o perfil certo para a vaga.'),
        Iten(
            image:
                'https://www.agence.com.br/wp-content/uploads/2022/11/headhunting-370x466.png',
            name: 'Recrutamento e Seleção',
            description:
                'O processo de Recrutamento e Seleção da Agence é realizado criteriosamente para identificar os melhores profissionais de TI do mercado com o perfil certo para a vaga.'),
      ];
}
