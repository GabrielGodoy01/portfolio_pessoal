import 'package:portfolio_pessoal/app/shared/services/external_urls.dart';

enum CertificadosEnum {
  flutter,
  metodologiasAgeis,
  java,
  devops,
  kotlin,
  firebase,
  sqlServer,
  designThinking,
  aplicacoesJava,
  vba,
}

extension CertificadosEnumExtension on CertificadosEnum {
  String get linkPhoto {
    switch (this) {
      case CertificadosEnum.aplicacoesJava:
        return aplicacoesJavaCertificado;
      case CertificadosEnum.designThinking:
        return designThinkingCertificado;
      case CertificadosEnum.devops:
        return devopsCertificado;
      case CertificadosEnum.firebase:
        return firebaseCertificado;
      case CertificadosEnum.flutter:
        return flutterCertificado;
      case CertificadosEnum.java:
        return javaCertificado;
      case CertificadosEnum.kotlin:
        return kotlinCertificado;
      case CertificadosEnum.metodologiasAgeis:
        return metodologiasAgeisCertificado;
      case CertificadosEnum.sqlServer:
        return sqlServerCertificado;
      case CertificadosEnum.vba:
        return vbaCertificado;
    }
  }

  String get description {
    switch (this) {
      case CertificadosEnum.aplicacoesJava:
        return 'Finalizado em outubro de 2021, este curso foi essencial para a compreenção de como aplicações Java podem ser implementadas e distribuídas de diversas maneiras com sua carga horária de ';

      case CertificadosEnum.designThinking:
        return 'Finalizado em julho de 2021, este curso me propôs o essencial para entender a metodologia do Design Thinking e como podemos abordar problemas com esta prática com uma carga horária de ';

      case CertificadosEnum.devops:
        return 'Finalizado em janeiro de 2022, este curso me apresentou ao mundo do DevOps e me levou ao nível de entendimento de esteiras de CI/CD, pipelines, Docker, Kubernetes, Jenkins e outras tecnologias com carga horária de ';

      case CertificadosEnum.firebase:
        return 'Finalizado em junho de 2022, este curso me permitiu entender melhor como criar, melhorar e expandir aplicações com foco em Android usando Firebase Authentication, Cloud Messaging, Cloud Storage e Firestore com carga horária de ';

      case CertificadosEnum.flutter:
        return 'Finalizado em abril de 2022, este curso me fez compreender melhor do básico, até um nível intermediário, de meu principal instrumento de trabalho quando se trata de Front-end juntamente com comunicações HTTP, Firebase Crashlytics e Firebase Cloud Messaging, BLoc, Provider, i18n, testes unitários com carga horária de ';

      case CertificadosEnum.java:
        return 'Finalizado em setembro de 2021, este curso foi o básico para relembrar e atualizar meus conceitos e boas práticas do paradigma da Orientação a Objetos juntamente com a sintaxe da linguagem Java com uma carga horária de ';

      case CertificadosEnum.kotlin:
        return 'Finalizado em março de 2022, este curso me introduziu a linguagem de programação base para desenvolvimento nativo Android em conjunto com o paradigma da Orientação a objetos com carga horária de ';

      case CertificadosEnum.metodologiasAgeis:
        return 'Finalizado em julho de 2021, este curso fez uma introdução de como trabalhar, pensar e ser ágil no ambiente de trabalho juntamente com didáticas sobre o Framework Scrum com carga horária de ';

      case CertificadosEnum.sqlServer:
        return 'Finalizado em abril de 2021, este curso foi meu ponta pé inicial para os bancos de dados relacionais e todas as manipulações desses dados baseados em SQL com foco no Microsoft SQL Server com carga horária de ';

      case CertificadosEnum.vba:
        return 'Finalizado em dezembro de 2020, este curso me garantiu um aprendizado avançado sobre Excel com foco na linguagem de programação VBA para automatização de tabelas, macros, tabelas dinâmicas, procv, proch com carga horária de ';
    }
  }

  String get title {
    switch (this) {
      case CertificadosEnum.aplicacoesJava:
        return 'Integração de Aplicações Java';

      case CertificadosEnum.designThinking:
        return 'Design Thinking';

      case CertificadosEnum.devops:
        return 'DevOps';

      case CertificadosEnum.firebase:
        return 'Firebase com Android';

      case CertificadosEnum.flutter:
        return 'Flutter';

      case CertificadosEnum.java:
        return 'Java e Orientação a Objetos';

      case CertificadosEnum.kotlin:
        return 'Kotlin';

      case CertificadosEnum.metodologiasAgeis:
        return 'Metodologias Ágeis';

      case CertificadosEnum.sqlServer:
        return 'Microsoft SQL Server';

      case CertificadosEnum.vba:
        return 'Excel VBA';
    }
  }

  String get cargaHoraria {
    switch (this) {
      case CertificadosEnum.flutter:
        return '110 horas';
      case CertificadosEnum.metodologiasAgeis:
        return '4 horas';
      case CertificadosEnum.java:
        return '130 horas';
      case CertificadosEnum.devops:
        return '120 horas';
      case CertificadosEnum.kotlin:
        return '67 horas';
      case CertificadosEnum.firebase:
        return '38 horas';
      case CertificadosEnum.sqlServer:
        return '70 horas';
      case CertificadosEnum.designThinking:
        return '4 horas';
      case CertificadosEnum.aplicacoesJava:
        return '80 horas';
      case CertificadosEnum.vba:
        return '80 horas';
    }
  }
}
