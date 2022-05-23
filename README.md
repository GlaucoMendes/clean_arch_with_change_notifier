### Sobre

Projeto em Flutter utilizando clean architecture, state pattern com ChangeNotifier, boas práticas e testes.
- [State Pattern](https://refactoring.guru/pt-br/design-patterns/state "StatePattern"): Padrão utilizado no gerenciamento de estado.
- [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/ "Conventional Commits"): Padrão utilizado para commits do repositório.
- [Flutter TDD Clean Architecture](https://github.com/ResoCoder/flutter-tdd-clean-architecture-course"): padrão do clean arch utilizado com algumas alterações.

### Funcionalidades
- Busca por propriedades usando uma API externa.
- Filtragem de propriedades por nome, edifício ou ciadade.
- Reordenação por valor da propriedade

##### Estrutura de pastas
```bash
├── lib
│   ├── domain
│   │   ├── repositories
│   │   ├── usecases
│   ├── data
│   │   ├── repositories
│   │   ├── models
│   ├── presentation
│   │   ├── feature
│   │   │   ├── widgets
│   │   │   ├── components
│   │   │   ├── feature_screen.dart
│   │   │   ├── feature_states.dart
│   │   │   ├── feature_store.dart
│   │   ├── models
│   ├── infra
│   │   ├── theme
│   │   ├── enums
│   │   ├── utils
```
### Web Demo

https://clean-arch-changenotifier.web.app/#/
