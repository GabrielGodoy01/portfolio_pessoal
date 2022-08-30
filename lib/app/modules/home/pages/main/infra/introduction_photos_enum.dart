// ignore_for_file: constant_identifier_names

enum IntroductionPhotosEnum {
  PHOTO1,
  PHOTO2,
  PHOTO3,
}

extension ActivityEnumExtension on IntroductionPhotosEnum {
  String get linkPhoto {
    switch (this) {
      case IntroductionPhotosEnum.PHOTO1:
        return 'https://pbs.twimg.com/profile_images/1526212670596186113/QoXZEF6E_400x400.jpg';
      case IntroductionPhotosEnum.PHOTO2:
        return 'https://pbs.twimg.com/profile_images/1526212670596186113/QoXZEF6E_400x400.jpg';
      case IntroductionPhotosEnum.PHOTO3:
        return 'https://pbs.twimg.com/profile_images/1526212670596186113/QoXZEF6E_400x400.jpg';
    }
  }

  String get description {
    switch (this) {
      case IntroductionPhotosEnum.PHOTO1:
        return 'Os cursos oferecem conteúdo de alta qualidade, min ';
      case IntroductionPhotosEnum.PHOTO2:
        return 'As palestras são gratuitas e contarão com a participação de pro';
      case IntroductionPhotosEnum.PHOTO3:
        return 'As palestras de alto impacto serão realizadas por profissionais ';
    }
  }
}
