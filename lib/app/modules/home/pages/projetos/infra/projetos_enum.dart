import '../../../../../shared/services/external_urls.dart';

enum ProjetosEnum { SMILE, SMILE2, SMILE3 }

extension ProjetosEnumExtension on ProjetosEnum {
  String get title {
    switch (this) {
      case ProjetosEnum.SMILE:
        return 'Smile 2022';
      case ProjetosEnum.SMILE2:
        return 'Smile 2022';
      case ProjetosEnum.SMILE3:
        return 'Smile 2022';
    }
  }

  String get description {
    switch (this) {
      case ProjetosEnum.SMILE:
        return 'Os cursos oferecem conteúdo de alta qualidade, minOs cursos Os cursos oferecem conteúdo de alta qualidade, minOs cursos Os cursos oferecem conteúdo de alta qualidade, minOs cursos Os cursos oferecem conteúdo de alta qualidade, minOs cursos Os cursos oferecem conteúdo de alta qualidade, minOs cursos Os cursos oferecem conteúdo de alta qualidade, minOs cursos Os cursos oferecem conteúdo de alta qualidade, minOs cursos Os cursos oferecem conteúdo de alta qualidade, minOs cursos Os cursos oferecem conteúdo de alta qualidade, minOs cursos Os cursos oferecem conteúdo de alta qualidade, minOs cursos Os cursos oferecem conteúdo de alta qualidade, minOs cursos Os cursos oferecem conteúdo de alta qualidade, minOs cursos Os cursos oferecem conteúdo de alta qualidade, minOs cursos Os cursos oferecem conteúdo de alta qualidade, minOs cursos Os cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, min ';
      case ProjetosEnum.SMILE2:
        return 'As palestras são gratuitas e contarão com a participação de proOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, min';
      case ProjetosEnum.SMILE3:
        return 'As palestras de alto impacto serão realizadas por profissionaisOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, min ';
    }
  }

  String get githubUrl {
    switch (this) {
      case ProjetosEnum.SMILE:
        return smileGithubUrl;
      case ProjetosEnum.SMILE2:
        return '';
      case ProjetosEnum.SMILE3:
        return '';
    }
  }

  String get projetoUrl {
    switch (this) {
      case ProjetosEnum.SMILE:
        return smileUrl;
      case ProjetosEnum.SMILE2:
        return '';
      case ProjetosEnum.SMILE3:
        return '';
    }
  }

  String get imagem {
    switch (this) {
      case ProjetosEnum.SMILE:
        return smileProjetos;
      case ProjetosEnum.SMILE2:
        return smileProjetos;
      case ProjetosEnum.SMILE3:
        return smileProjetos;
    }
  }
}
