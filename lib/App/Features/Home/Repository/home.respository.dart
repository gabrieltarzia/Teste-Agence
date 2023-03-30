import 'package:agence_task/App/Features/Home/Repository/i_home.repository.dart';
import 'package:agence_task/App/Model/item.model.dart';

class HomeRepository implements IHomeRepository {
  @override
  List<Item> getItens() => [
        Item(
            image:
                'https://www.agence.com.br/wp-content/uploads/2022/08/agence-logo-355x109-1.png',
            name: 'Consultoria e Prototipagem',
            description:
                'O serviço de Consultoria Estratégica envolve uma avaliação criteriosa do projeto para encontrar as melhores Soluções que respondam às necessidades do seu negócio.'),
        Item(
            image:
                'https://www.agence.com.br/wp-content/uploads/2022/12/desenvolvimento-mobile-238x300.png',
            name: 'Fábrica de Software',
            description:
                'Os desenvolvedores da agência implementam e testam a solução projetada com qualidade. Fornecemos ao cliente manuais e documentos de instalação do sistema.'),
        Item(
            image:
                'https://www.agence.com.br/wp-content/uploads/2022/11/Outsourcing-%E2%80%93-Profissionais-de-TI-300x201.png',
            name: 'Outsourcing em TI',
            description:
                'Outsourcing é a terceirização de serviços de TI. Na Agence sua empresa pode terceirizar uma tarefa pequena ou todo o departamento com segurança, produtividade e economia.'),
        Item(
            image:
                'https://www.agence.com.br/wp-content/uploads/2022/11/headhunting-370x466.png',
            name: 'Recrutamento e Seleção',
            description:
                'O processo de Recrutamento e Seleção da Agence é realizado criteriosamente para identificar os melhores profissionais de TI do mercado com o perfil certo para a vaga.'),
      ];
}
