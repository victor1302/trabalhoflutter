# Organizador de Estudos 📚

Aplicativo Flutter desenvolvido com foco em organização de tarefas acadêmicas, ajudando o usuário a registrar matérias, acompanhar atividades e visualizar o andamento dos estudos de forma simples e prática.

## 📌 Sobre o projeto

O **Organizador de Estudos** é um app voltado para estudantes que desejam controlar suas tarefas de forma rápida e intuitiva. A proposta é reunir em um único lugar os principais compromissos de estudo, permitindo cadastrar atividades, marcar concluídas, definir prioridade e salvar os dados localmente no dispositivo.

O projeto foi pensado para ser **simples de implementar**, **fácil de explicar na apresentação** e, ao mesmo tempo, atender aos requisitos solicitados na disciplina.

## ✨ Funcionalidades

- Cadastro de tarefas de estudo
- Marcação de atividades como concluídas
- Definição de prioridade para cada tarefa
- Exibição da lista em tempo real
- Persistência dos dados com `shared_preferences`
- Mensagens de feedback para o usuário
- Organização da interface com navegação inferior

## 🧩 Recursos do Flutter utilizados

- `StatelessWidget`
- `StatefulWidget`
- `BottomNavigationBar`
- `TextField`
- `ElevatedButton`
- `Checkbox`
- `RadioButton`
- `ListView`
- `SnackBar`
- `AlertDialog`
- `shared_preferences`

## 📱 Estrutura das telas

### 1. Tela de tarefas
Tela principal do aplicativo, onde o usuário pode:
- adicionar novas tarefas;
- visualizar a lista de estudos;
- marcar tarefas concluídas;
- remover itens da lista.

### 2. Tela de estatísticas
Tela com um resumo simples, mostrando informações como:
- total de tarefas cadastradas;
- quantidade concluída;
- quantidade pendente.

## 🛠️ Tecnologias

- Flutter
- Dart
- SharedPreferences

## 🎯 Objetivo do projeto

O objetivo é criar uma aplicação funcional, bonita e fácil de apresentar, demonstrando o uso de widgets, navegação, interação com o usuário e persistência local, conforme solicitado no trabalho.


## 📂 Organização sugerida do projeto

```bash
lib/
├── main.dart
├── models/
├── screens/
├── widgets/
└── services/
```

## 👥 Público-alvo

Estudantes que desejam organizar suas atividades de forma simples, rápida e local, sem depender de internet.

## 📄 Observação

Este projeto foi pensado para atender aos requisitos do trabalho da disciplina **Tópicos Avançados I**, com foco em simplicidade, organização e boa apresentação.

---

Feito com Flutter e foco em produtividade acadêmica ✨
