import '../../../../../shared/services/external_urls.dart';

enum ConhecimentosEnum {
  flutter,
  java,
  metodologiaAgil,
  sql,
  git,
  firebase,
  nodejs,
  javascript,
  angular,
  html,
  docker,
}

extension ConhecimentosEnumExtension on ConhecimentosEnum {
  String get photo {
    switch (this) {
      case ConhecimentosEnum.flutter:
        return flutterConhecimentos;
      case ConhecimentosEnum.java:
        return javaConhecimentos;
      case ConhecimentosEnum.sql:
        return sqlConhecimentos;
      case ConhecimentosEnum.git:
        return gitConhecimentos;
      case ConhecimentosEnum.firebase:
        return firebaseConhecimentos;
      case ConhecimentosEnum.nodejs:
        return nodejsConhecimentos;
      case ConhecimentosEnum.javascript:
        return javascriptConhecimentos;
      case ConhecimentosEnum.angular:
        return angularConhecimentos;
      case ConhecimentosEnum.html:
        return htmlConhecimentos;
      case ConhecimentosEnum.metodologiaAgil:
        return metodologiasAgeisConhecimentos;
      case ConhecimentosEnum.docker:
        return dockerConhecimentos;
    }
  }

  String get description {
    switch (this) {
      case ConhecimentosEnum.flutter:
        return 'Os cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, min ';
      case ConhecimentosEnum.java:
        return 'Os cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, min ';
      case ConhecimentosEnum.metodologiaAgil:
        return 'Os cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, min ';
      case ConhecimentosEnum.sql:
        return 'Os cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, min ';
      case ConhecimentosEnum.git:
        return 'Os cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, min ';
      case ConhecimentosEnum.firebase:
        return 'Os cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, min ';
      case ConhecimentosEnum.nodejs:
        return 'Os cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, min ';
      case ConhecimentosEnum.javascript:
        return 'Os cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, min ';
      case ConhecimentosEnum.angular:
        return 'Os cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, min ';
      case ConhecimentosEnum.html:
        return 'Os cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, min ';
      case ConhecimentosEnum.docker:
        return 'Os cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, minOs cursos oferecem conteúdo de alta qualidade, min ';
    }
  }
}
