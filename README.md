# 📚 Organizador de Estudos

Um aplicativo Flutter completo para organizar e acompanhar suas tarefas acadêmicas. O app oferece duas telas principais: uma para gerenciar tarefas e outra para visualizar estatísticas de progresso.

## 🎯 Estrutura do Projeto

```
lib/
├── main.dart                    # Configuração do app e widget principal
├── models/
│   └── task.dart               # Modelo de dados da tarefa
├── services/
│   └── task_service.dart       # Serviço de persistência com SharedPreferences
├── screens/
│   ├── tasks_screen.dart       # Tela de gerenciamento de tarefas
│   └── statistics_screen.dart  # Tela de estatísticas
└── widgets/
    └── statistic_card.dart     # Widget reutilizável de card de estatísticas
```

## 📱 Telas e Widgets

### 1️⃣ Tela de Tarefas (`tasks_screen.dart`)

Tela principal para gerenciar todas as suas tarefas de estudo.

#### Widgets Utilizados:

| Widget | Descrição | Uso |
|--------|-----------|-----|
| **ListView.builder** | Cria uma lista dinâmica e eficiente | Renderiza a lista de tarefas |
| **Card** | Container com elevação e estilo Material | Cada item da tarefa é exibido em um card |
| **ListTile** | Layout padrão para items de lista | Estrutura principal de cada tarefa |
| **Checkbox** | Campo de seleção booleana | Marcar/desmarcar tarefas concluídas |
| **Icon** | Ícone do Material Design | Ícone de delete (lixeira) |
| **IconButton** | Botão com ícone | Botão para remover tarefas |
| **Chip** | Badge pequeno e compacto | Exibe a prioridade da tarefa |
| **Text** | Texto básico | Título, descrição e texto dos chips |
| **Column** | Layout vertical | Organiza título, descrição e prioridade |
| **SizedBox** | Espaçador | Cria espaçamento entre elementos |
| **AlertDialog** | Diálogo de confirmação | Confirma exclusão de tarefas |
| **Center** | Centraliza o conteúdo | Mensagem quando não há tarefas |

**Exemplo Visual:**
```
┌─────────────────────────────────┐
│ ☐ Estudar Matemática      [🗑️]  │
│   Resolver exercícios 1-10     │
│   [ALTA]                       │
└─────────────────────────────────┘
```

---

### 2️⃣ Tela de Estatísticas (`statistics_screen.dart`)

Tela para visualizar o resumo e progresso das suas tarefas.

#### Widgets Utilizados:

| Widget | Descrição | Uso |
|--------|-----------|-----|
| **Center** | Centraliza conteúdo na tela | Centraliza todo o resumo |
| **Padding** | Adiciona espaçamento interno | Margem ao redor do conteúdo |
| **Column** | Layout vertical | Organiza os cards e progresso |
| **Text** | Texto básico | Título "Resumo das Tarefas" |
| **StatisticCard** | Widget customizado | Exibe cada estatística (total, concluídas, pendentes) |
| **Container** | Box genérico | Container da taxa de conclusão |
| **BoxDecoration** | Estilo do container | Define cores e bordas |
| **LinearProgressIndicator** | Barra de progresso linear | Visualiza a taxa de conclusão em % |
| **ClipRRect** | Arredonda cantos de widgets | Arredonda os cantos da barra de progresso |
| **Row** | Layout horizontal | Dentro do StatisticCard para organizar ícone e texto |
| **Icon** | Ícone do Material Design | Ícone visual de cada estatística |
| **Expanded** | Expande para ocupar espaço disponível | Coluna de informações no card |
| **SizedBox** | Espaçador | Espaçamento entre elementos |

**Exemplo Visual:**
```
Resumo das Tarefas

┌──────────────────────┐
│ 📋 Total de Tarefas  │
│        10            │
└──────────────────────┘

┌──────────────────────┐
│ ✓ Tarefas Concluídas│
│        7             │
└──────────────────────┘

┌──────────────────────┐
│ ⏳ Tarefas Pendentes │
│        3             │
└──────────────────────┘

Taxa de Conclusão
████████░ 70%
```

---

### 3️⃣ Widget Customizado: StatisticCard (`widgets/statistic_card.dart`)

Widget reutilizável para exibir cada estatística na tela de estatísticas.

#### Widgets Utilizados:

| Widget | Descrição | Uso |
|--------|-----------|-----|
| **Container** | Box genérico com styling | Estrutura principal do card |
| **BoxDecoration** | Estilo visual do container | Fundo, bordas e cores |
| **Border.all** | Define bordas | Borda colorida ao redor do card |
| **Row** | Layout horizontal | Organiza ícone e informações lado a lado |
| **Icon** | Ícone do Material Design | Ícone visual da estatística |
| **SizedBox** | Espaçador | Espaço entre ícone e texto |
| **Expanded** | Expande para ocupar espaço | Coluna de informações |
| **Column** | Layout vertical | Organiza título e valor |
| **Text** | Texto básico | Título da estatística e valor |
| **TextStyle** | Estilo de texto | Define tamanho, peso e cor |

---

### 4️⃣ Tela Principal: MyHomePage (`main.dart`)

Gerencia a navegação entre as duas telas principais.

#### Widgets Utilizados:

| Widget | Descrição | Uso |
|--------|-----------|-----|
| **Scaffold** | Estrutura básica Material | Framework da aplicação |
| **AppBar** | Barra superior | Exibe título do app |
| **BottomNavigationBar** | Navegação inferior | Alterna entre telas |
| **BottomNavigationBarItem** | Item de navegação | Opções "Tarefas" e "Estatísticas" |
| **FloatingActionButton** | Botão flutuante | Botão + para adicionar tarefas |
| **Icon** | Ícone do Material Design | Ícones dos botões |
| **CircularProgressIndicator** | Indicador de carregamento | Mostra loading ao iniciar |
| **Conditional (Ternary)** | Renderização condicional | Alterna entre telas baseado no índice |
| **AlertDialog** | Diálogo modal | Formulário para adicionar tarefas |
| **TextField** | Campo de texto | Entrada de título e descrição |
| **RadioListTile** | Radio button em lista | Seleção de prioridade |
| **SingleChildScrollView** | Scroll para conteúdo grande | Permite scroll do diálogo |
| **ElevatedButton** | Botão destaque | Botão "Adicionar" |
| **TextButton** | Botão texto | Botão "Cancelar" |
| **InputDecoration** | Estilo do TextField | Define label e border |
| **SnackBar** | Notificação temporária | Feedback de ações |

---

## 🎨 Paleta de Cores

- **Prioridade Alta**: `Colors.red` 🔴
- **Prioridade Média**: `Colors.orange` 🟠
- **Prioridade Baixa**: `Colors.green` 🟢
- **Tema Principal**: `Colors.deepPurple` (seedColor)
- **Estatísticas**: Azul (Total), Verde (Concluídas), Laranja (Pendentes)

---

## 💾 Modelo de Dados

### Task
```dart
class Task {
  final String id;              // ID único (timestamp)
  final String title;           // Título da tarefa
  final String description;     // Descrição detalhada
  final String priority;        // 'alta', 'média', 'baixa'
  bool isCompleted;            // Status da conclusão
  final DateTime createdAt;    // Data de criação
}
```

---

## 🔧 Serviço de Persistência

### TaskService
Gerencia salvamento e carregamento de dados usando `SharedPreferences`:
- **saveTasks()**: Salva a lista de tarefas em JSON
- **loadTasks()**: Carrega as tarefas ao iniciar o app

---

## 🚀 Como Executar

```bash
# Obter dependências
flutter pub get

# Executar o app
flutter run

# Build para release
flutter build apk     # Android
flutter build ios     # iOS
```

---

## 📦 Dependências

```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.8
  shared_preferences: ^2.2.3
```

---

## ✨ Recursos Implementados

✅ Cadastro de tarefas com título, descrição e prioridade  
✅ Marcar tarefas como concluídas  
✅ Remover tarefas com confirmação  
✅ Visualizar estatísticas em tempo real  
✅ Persistência local com SharedPreferences  
✅ Interface intuitiva com navegação inferior  
✅ Feedback visual com SnackBars  
✅ Organização modular do código  

---

## 📝 Licença

Este projeto é um exemplo educativo.
