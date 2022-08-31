import '../../../../../shared/services/external_urls.dart';

enum ProjetosEnum { smile, mauapp, SMILE3 }

extension ProjetosEnumExtension on ProjetosEnum {
  String get title {
    switch (this) {
      case ProjetosEnum.smile:
        return 'Smile 2022';
      case ProjetosEnum.mauapp:
        return 'Mauápp';
      case ProjetosEnum.SMILE3:
        return 'Smile 2022';
    }
  }

  String get description {
    switch (this) {
      case ProjetosEnum.smile:
        return 'Organizado pelo Instituto Mauá de Tecnologia - IMT, a Smile é um evento que tem por objetivo apresentar tecnologias, cursos e conteúdos das áreas da Engenharia, Computação e Design.\n\nNeste projeto trabalhei no site Smile com uma equipe de 5 pessoas, utilizando o framework ágil SCRUM para apoiar o desenvolvimento e integração do time, sendo responsável como Tech-Leader Front-end e desenvolvedor Flutter com MOBX para gerência de estado e Modular para roteamento e injeção de dependências da aplicação. Além disso, fui responsável pela comunicação direta com o stakeholder, integração com o Back-end da aplicação e responsividade Desktop, Tablet e Mobile utilizando boas práticas.\n\nFique à vontade para visitar o site e entender melhor o projeto :)';
      case ProjetosEnum.mauapp:
        return 'As palestras são gratuitas e contarão com a participação de proOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, min';
      case ProjetosEnum.SMILE3:
        return 'As palestras de alto impacto serão realizadas por profissionaisOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, min ';
    }
  }

  String get githubUrl {
    switch (this) {
      case ProjetosEnum.smile:
        return smileGithubUrl;
      case ProjetosEnum.mauapp:
        return '';
      case ProjetosEnum.SMILE3:
        return '';
    }
  }

  String get projetoUrl {
    switch (this) {
      case ProjetosEnum.smile:
        return smileUrl;
      case ProjetosEnum.mauapp:
        return '';
      case ProjetosEnum.SMILE3:
        return '';
    }
  }

  String get imagem {
    switch (this) {
      case ProjetosEnum.smile:
        return smileProjetos;
      case ProjetosEnum.mauapp:
        return smileProjetos;
      case ProjetosEnum.SMILE3:
        return smileProjetos;
    }
  }
}
