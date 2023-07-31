<h1 align="center">Monitor de Consumo</h1>

<p align="center">
  <a href="https://github.com/Anderson-Andre-P/monitor-de-consumo">
    <img alt="Made by Anderson André" src="https://img.shields.io/badge/-Github-E60000?style=for-the-badge&logo=Github&logoColor=white&link=https://github.com/Anderson-Andre-P" />
  </a>
  <img alt="Repository size" src="https://img.shields.io/github/repo-size/Anderson-Andre-P/monitor-de-consumo?style=for-the-badge&label=Repo%20Size:&labelColor=E60000&color=E60000">
  </p>

  <p align="center">
    <img src="https://img.shields.io/badge/monitor_de_consumo-31.07.23-E60000?style=for-the-badge&labelColor=E60000">
    <img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/Anderson-Andre-P/readme_model?style=for-the-badge&label=last%20commit:&labelColor=E60000&color=E60000">
</p>

<p align="center">
  <a href="#dart-about">About</a> &#xa0; | &#xa0; 
  <a href="#rocket-technologies">Technologies</a> &#xa0; | &#xa0;
  <a href="#white_check_mark-how-to-contribute">How to Contribute</a> &#xa0; | &#xa0;
  <a href="#checkered_flag-executing-project">Executing Project</a> &#xa0; | &#xa0;
  <a href="#office-archteture">Archteture</a> &#xa0; | &#xa0;
</p>

## :dart: About

This project was developed with the aim of providing a way for customers to receive notifications and check the consumption of their dependencies. During the process, several features were implemented and important milestones were achieved to achieve this goal. In this summary, we will present an overview of the project, highlighting its main characteristics and guests.

## :rocket: Technologies

The project was developed using the following technologies and tools:

### Back-end

- [Node Red](https://nodered.org/)
- [One Signal](https://onesignal.com/)

### Mobile

- [Flutter](https://flutter.dev/)

## :white_check_mark: How to Contribute

If you want to contribute to the project, you can follow these steps:

#### Step 1

Fork this repository and clone it to your local machine using the code bellow.

```bash
https://github.com/Anderson-Andre-P/monitor-de-consumo
```

#### Step 2

Create a new branch with a descriptive name for your contribution.

```bash
git checkout -b my-feature
```

#### Step 3

Implement your modifications or additions.

#### Step 4

Perform the necessary tests to ensure that your changes work properly.

#### Step 5

Commit your changes and push them to your repository.

```bash
git commit -m "feat: My new feature"
```

#### Step 6

Open a pull request against this repository, describing your changes and providing additional information if needed.

After your Pull Request is merged, can you delete your feature branch.

## :checkered_flag: Executing Project

Before running :checkered_flag:, você precisa ter [Git](https://git-scm.com) and [Node](https://nodejs.org/en/) installed.

Follow the steps below to run the project on your computer. (using terminal or git bash)

```bash
 # Cloning the repository
$ git clone https://github.com/Anderson-Andre-P/monitor-de-consumo.git

# Accessing THIS project directory
$ cd './monitor-de-consumo'

# Installing the dependencies
$ flutter pub get

# Run project
$ flutter run
```

## :office: Archteture

- **.husky:** Pasta contendo configurações do Husky, uma ferramenta para ganchos (hooks) no Git.
- **.github:** Pasta com arquivos de configuração do GitHub Actions para automação de tarefas no repositório do GitHub.
- **.vscode:** Pasta com o arquivo "settings.json" para configurar preferências do Visual Studio Code, um editor de código.
- **android:** Pasta específica para a plataforma Android, contendo código-fonte e recursos para construir o aplicativo Android.
- **assets:** Pasta para ativos estáticos, como imagens e fontes, utilizados pelo aplicativo durante sua execução.
- **build:** Pasta criada automaticamente pelo Flutter, contendo arquivos temporários e gerados durante o processo de construção do aplicativo.
- **ios:** Pasta específica para a plataforma iOS, contendo código-fonte e recursos para construir o aplicativo iOS.
- **lib:**
  - **main.dart:** Este é o ponto de entrada principal do aplicativo. É aqui que a execução do aplicativo começa.
  - **config:**
    - **routes:** Define as rotas (páginas) do aplicativo para gerenciar a navegação.
    - **themes:** Contém definições de temas para cores, fontes e estilos do aplicativo.
  - **core:**
    - **auth:** Classes e utilitários relacionados à autenticação e autorização do aplicativo.
    - **context:** Extensões e utilitários para estender o contexto do Flutter.
    - **entity:** Classes representando modelos de dados ou entidades do aplicativo.
    - **init:** Arquivos de inicialização executados no início do aplicativo.
  - **generated:** Pasta para arquivos gerados automaticamente pelo Flutter ou outras ferramentas.
  - **l10n:** Armazena arquivos de tradução do aplicativo para diferentes idiomas.
  - **modules:** Organização modular do aplicativo com pastas para diferentes partes do app:
    - **alarm:** Funcionalidades relacionadas a alarmes ou notificações programadas.
    - **asset:** Ativos específicos de módulos, como imagens ou ícones.
    - **audit_log:** Código relacionado a logs de auditoria e rastreamento de atividades.
    - **customer:** Lógica e interface para gerenciamento de clientes.
    - **dashboard:** Módulo do painel inicial do aplicativo.
    - **device:** Funcionalidades relacionadas ao gerenciamento de dispositivos.
    - **home:** Módulo da página inicial do aplicativo.
    - **main:** Ponto de entrada do módulo principal do aplicativo.
    - **more:** Funcionalidades adicionais ou recursos extras do aplicativo.
    - **profile:** Módulo das páginas de perfil do usuário.
    - **tenant:** Funcionalidades para gerenciar diferentes "inquilinos" ou organizações.
  - **utils:**
    - **services:** Classes de serviços com lógica de negócios compartilhada em todo o aplicativo.
    - **transition:** Utilitários para gerenciar transições de tela e animações.
    - **ui:** Utilitários relacionados à interface do usuário, como widgets personalizados.
- **test:** Pasta para testes automatizados do aplicativo, garantindo a qualidade do código e evitando regressões.
- **.flutter-plugins** e **.flutter-plugins-dependencies:** Gerados pelo Flutter para rastrear plugins usados.
- **.gitignore:** Especifica arquivos e pastas a serem ignorados pelo controle de versão do Git.
- **.metadata:** Gerado pelo Flutter, contém informações sobre o projeto.
- **LICENSE:** Arquivo com a licença de código aberto do aplicativo.
- **pubspec.lock** e **pubspec.yaml:** Arquivos de gerenciamento de dependências do Flutter.
- **README.md:** Documentação do projeto, incluindo configuração, execução e contribuição.

## :memo: License

This project is licensed under [LICENSE](LICENSE). Be sure to read the license file for more details.

<a href="#top">Back to top</a>
