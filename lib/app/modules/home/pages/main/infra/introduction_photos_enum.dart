import '../../../../../shared/services/external_urls.dart';

enum IntroductionPhotosEnum {
  maua,
  dev,
  esports,
}

extension ActivityEnumExtension on IntroductionPhotosEnum {
  String get title {
    switch (this) {
      case IntroductionPhotosEnum.maua:
        return 'Instituto Mauá de Tecnologia';
      case IntroductionPhotosEnum.dev:
        return 'Dev. Community Mauá';
      case IntroductionPhotosEnum.esports:
        return 'Mauá E-sports';
    }
  }

  String get linkPhoto {
    switch (this) {
      case IntroductionPhotosEnum.maua:
        return mauaIntroducao;
      case IntroductionPhotosEnum.dev:
        return devIntroducao;
      case IntroductionPhotosEnum.esports:
        return esportsIntroducao;
    }
  }

  String get description {
    switch (this) {
      case IntroductionPhotosEnum.maua:
        return 'Estudante de Engenharia da Computação com previsão de formação em dez/2022.';
      case IntroductionPhotosEnum.dev:
        return 'Uma entidade acadêmica do Instituto Mauá de Tecnologia focada em desenvolvimento de software na qual fiz parte como Vice-presidente de Projetos, Tech Leader Front-end, Desenvolvedor Front-end e Mobile e Product Owner de alguns projetos.';
      case IntroductionPhotosEnum.esports:
        return 'Membro da entidade acadêmica focada em competições de esportes eletrônicos da qual fui capitão de uma equipe de 5 pessoas, inclusive, jogos são uma paixão e hobby.';
    }
  }
}
