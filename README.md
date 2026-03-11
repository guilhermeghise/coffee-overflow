# ☕️ Coffee Overflow

**Coffee Overflow** é um jogo de ritmo e equilíbrio em pixel art onde você assume o papel de um garçom em uma balada neon cheia de desenvolvedores de software. O objetivo? Servir o máximo de café possível sem causar um *stack overflow* emocional — ou físico.

----

## 🕹 O Jogo

O loop de gameplay é focado em um sistema de combos que desafia o seu equilíbrio:

### 1. Mecânica de Vaporização (Latte Art Gestures)
O jogador interage diretamente com o **"leite vaporizado"** na tela através de gestos que simulam a finalização do café.
* **Reconhecimento de Padrões:** Desenhe gotas, corações ou espirais para completar a pressão da máquina.
* **Gatilho de Disparo:** Somente após o gesto ser reconhecido, a máquina ejeta uma xícara de café para o alto.

### 2. O Combo do Globo de Discoteca (Delivery System)
Diferente de outros jogos de empilhar, aqui o objetivo é atingir o limite máximo de altura.
* **Empilhamento Vertical:** Você deve capturar e equilibrar as xícaras até que a pilha toque o **Globo de Discoteca** no topo da tela.
* **Distribuição e Reset:** Ao tocar o globo, ocorre um "Combo de Entrega". As xícaras são distribuídas automaticamente para o público de devs e sua bandeja é zerada.
* **Escalonamento de Dificuldade:** A cada entrega bem-sucedida no globo, o **BPM da música** sobe e a dificuldade geral aumenta, tornando a dança do garçom mais frenética e a bandeja mais instável para a próxima rodada.

### 3. Física e Instabilidade
* **Dança Adaptativa:** Conforme o BPM acelera, o garçom executa passos de dança mais complexos, gerando forças laterais (torque) na bandeja.
* **Condição de Derrota:** O jogo termina se a pilha de cafés desmoronar antes de você conseguir tocar o globo de discoteca.

---

## 🛠 Tech Stack

* **Engine:** `SpriteKit` (Física 2D, colisões e juntas físicas para a bandeja).
* **Lógica de Gestos:** Algoritmo customizado para reconhecimento de formas geométricas.
* **Arquitetura:** Sistema de eventos para sincronizar a trilha sonora com o aumento de dificuldade após cada "Combo".

---

## 📁 Estrutura do Projeto

```text
├── Sources/
│   ├── Scenes/             # Telas de Jogo, Menu e Game Over
│   ├── Nodes/              # Garçom, Máquina, Globo de Discoteca e Devs
│   ├── Physics/            # Lógica de equilíbrio, torque e detecção de topo
│   └── Gestures/           # Reconhecimento dos padrões de Latte Art
├── Resources/
│   ├── Assets.xcassets/    # Pixel Art Neon e Animações do Globo
│   └── Sounds/             # Trilhas que aceleram conforme o progresso
└── Tests/                  # Testes de multiplicadores de combo
