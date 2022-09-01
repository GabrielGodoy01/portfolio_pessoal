import '../../../../../shared/services/external_urls.dart';

enum ConhecimentosEnum {
  flutter,
  java,
  metodologiaAgil,
  aws,
  sql,
  git,
  firebase,
  nodejs,
  javascript,
  angular,
  html,
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

      case ConhecimentosEnum.aws:
        return awsConhecimentos;
    }
  }

  String get title {
    switch (this) {
      case ConhecimentosEnum.flutter:
        return 'Flutter';

      case ConhecimentosEnum.java:
        return 'Java';

      case ConhecimentosEnum.metodologiaAgil:
        return 'Metodologias Ágeis';

      case ConhecimentosEnum.aws:
        return 'Amazon Web Services (AWS)';

      case ConhecimentosEnum.sql:
        return 'SQL';

      case ConhecimentosEnum.git:
        return 'GIT';

      case ConhecimentosEnum.firebase:
        return 'Firebase';

      case ConhecimentosEnum.nodejs:
        return 'Node.js';

      case ConhecimentosEnum.javascript:
        return 'Javascript';

      case ConhecimentosEnum.angular:
        return 'Angular';

      case ConhecimentosEnum.html:
        return 'HTML5 + CSS3';
    }
  }

  String get description {
    switch (this) {
      case ConhecimentosEnum.flutter:
        return 'Com certeza o framework que eu mais domino, mais estudei e mais me atualizo continuamente. Um framework poderosíssimo da Google para aplicações híbridas, minha escolha principal para Front-end com requisitos multiplataformas e já atuei em diversos projetos com esta tecnologia, inclusive o site que você está navegando neste momento foi inteiro desenvolvido em Flutter.\n\nMOBX, BLoC, Provider, INTL, Modular, Get, Get_It e mais!';
      case ConhecimentosEnum.java:
        return 'Minha primeira linguagem orientada a objetos que aprendi juntamente com todos os conceitos e boas práticas deste paradigma da programação extremamente poderoso.';
      case ConhecimentosEnum.metodologiaAgil:
        return 'Em diversos projetos que atuei, tanto em trabalho, quanto em projetos de entidades acadêmica, havia a necessidade de organização e mindset ágil para o desenvolvimento de tarefas com o máximo de aproveitamento e organização possível. E foi aqui que aprendi muito, na prática e conceitualmente com livros e cursos, sobre como desenvolver e trabalhar em equipes ágeis.\n\nScrum, Lean, Design Thinking.';
      case ConhecimentosEnum.sql:
        return 'Quando falamos de bancos de dados relacionais, SQL é a principal linguagem que vem a mente e foi minha introdução ao mundo dos bancos de dados juntamente com um curso intensivo da Alura me aprimorei em gestão de bancos de dados principalmente com a ferramenta do Microsoft SQL Server 2017.';
      case ConhecimentosEnum.git:
        return 'É essencial o conhecimento da principal ferramenta de versionamento de aplicações e pode-se dizer que eu conheço muito bem por ter trabalhado em diversos projetos que eram necessários repositórios, branchs e pull requests para melhor organização do trabalho ágil. Já trabalhei com Github e Atlassian (Bitbucket).';
      case ConhecimentosEnum.firebase:
        return 'Uma plataforma da Google que contém diversos serviços para aplicações tanto mobile quanto web. Já utilizei alguns destes serviços em meus projetos, como o Firebase Crashlytics, Authentication, Analytics (muito interessante para visualizar entradas, saídas, tendências de usuários ao visitar a aplicação).';
      case ConhecimentosEnum.nodejs:
        return 'Aprendido durante o conteúdo acadêmico do IMT, node.js é uma mão na roda na criação de APIs, por exemplo. Considero minha principal ferramenta Back-end em meu arsenal.';
      case ConhecimentosEnum.javascript:
        return 'A linguagem de programação mais utilizada do mundo não poderia faltar nesta lista, durante aulas acadêmicas e cursos extracurriculares tive a oportunidade de me conectar mais com a linguagem e aprender até um nível intermediário com Express e utilizei bastante quando aprendi sobre Angular que é o próximo item desta lista.';
      case ConhecimentosEnum.angular:
        return 'Aprendido durante o conteúdo acadêmico do IMT durante um semestre inteiro, gosto muito desta ferramenta pelo estilo de programação em componentes utilizando HTML, Javascript e Typescript, tenho um nível intermediário nesta tecnologia.';
      case ConhecimentosEnum.html:
        return 'A primeira linguagem (de marcação!!!) que a maioria aprende, quer gosta/trabalha/estuda Front-end com certeza sabe o que é isso. Não é diferente comigo, já fiz cursos na Alura e o meu antigo portfólio era totalmente em HTML5 e CSS3.';
      case ConhecimentosEnum.aws:
        return 'Quando se fala em nuvem a AWS é a primeira coisa que vem a minha mente e o que eu mais domino por conta de ter finalizado o curso AWS Cloud Practitioner Essentials que me introduziu aos mais de 170 serviços em a AWS oferece. Inclusive todas as imagens e icones que você ver neste site, estão hospedadas em um S3 Bucket da AWS.';
    }
  }
}
