import '../../../../../shared/services/external_urls.dart';

enum ProjetosEnum { smile, mauapp, cafeteria }

extension ProjetosEnumExtension on ProjetosEnum {
  String get title {
    switch (this) {
      case ProjetosEnum.smile:
        return 'Smile 2022';
      case ProjetosEnum.mauapp:
        return 'Mauápp';
      case ProjetosEnum.cafeteria:
        return 'Coffee Shop';
    }
  }

  String get description {
    switch (this) {
      case ProjetosEnum.smile:
        return 'Organizado pelo Instituto Mauá de Tecnologia - IMT, a Smile é um evento que tem por objetivo apresentar tecnologias, cursos e conteúdos das áreas da Engenharia, Computação e Design.\n\nNeste projeto trabalhei no site Smile com uma equipe de 5 pessoas com a entidade acadêmica Dev. Community Mauá, utilizando o framework ágil SCRUM para apoiar o desenvolvimento e integração do time, sendo responsável como Tech-Leader Front-end e desenvolvedor Flutter com MOBX para gerência de estado e Modular para roteamento e injeção de dependências da aplicação. Além disso, fui responsável pela comunicação direta com o stakeholder, integração com o Back-end da aplicação e responsividade Desktop, Tablet e Mobile utilizando boas práticas.\n\nFique à vontade para visitar o site e entender melhor o projeto :)';
      case ProjetosEnum.mauapp:
        return 'O Mauápp é um aplicativo criado 100% por alunos do IMT e para os alunos. Nele, uma equipe de desenvolvedores da entidade acadêmica Dev. Community Mauá atuou, e ainda atua, no desenvolvimento do software utilizando o framework ágil Scrum.\n\nFui responsável como Product Owner, Tech Leader Front-end e desenvolvedor Flutter em sua construção.\n\nInfelizmente o desenvolvimento dele ainda não foi finalizado e, portanto, não lançado em produção, porém você pode acompanhá-lo pelo link do github abaixo.';
      case ProjetosEnum.cafeteria:
        return 'Um dos primeiros projetos que fiz para passar para um próximo nível de conhecimento do framework Flutter.\n\nAlém disso, o projeto foi utilizado para a matéria acadêmica Arquitetura de Software no IMT na qual recebi a nota máxima por ele.';
    }
  }

  String get githubUrl {
    switch (this) {
      case ProjetosEnum.smile:
        return smileGithubUrl;
      case ProjetosEnum.mauapp:
        return mauappGithubUrl;
      case ProjetosEnum.cafeteria:
        return cafeteriaGithubUrl;
    }
  }

  String get projetoUrl {
    switch (this) {
      case ProjetosEnum.smile:
        return smileUrl;
      case ProjetosEnum.mauapp:
        return '';
      case ProjetosEnum.cafeteria:
        return '';
    }
  }

  String get imagem {
    switch (this) {
      case ProjetosEnum.smile:
        return smileProjetos;
      case ProjetosEnum.mauapp:
        return mauappProjetos;
      case ProjetosEnum.cafeteria:
        return cafeteriaProjetos;
    }
  }
}
