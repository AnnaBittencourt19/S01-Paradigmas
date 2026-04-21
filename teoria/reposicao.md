Lista de Exercícios de Reposição 01 — Aspectos

Preliminares e Evolução das LPs

Disciplina: S01 — Paradigmas da Programação

Professor: Ruan Patrick de Souza — Inatel

Atividade de reposição de aula (feriado)

## Questão 1 — Razões para Estudar Linguagens de Programação

O material da disciplina apresenta seis razões para se estudar conceitos de linguagens de programação. Escolha três delas e, para cada uma:

### Razão 1: Melhorar a habilidade de programação

**a) Explicação:** Estudar como as linguagens funcionam nos ajuda a escrever códigos melhores e mais eficientes, pois entendemos melhor as ferramentas que usamos.

**b) Exemplo prático:** Conhecer ponteiros em C ajuda você a usar memória de forma inteligente em vez de alocar tudo desnecessariamente.

---

### Razão 2: Facilitar a escolha da linguagem correta

**a) Explicação:** Conhecer diferentes linguagens permite escolher a mais adequada para cada problema específico.

**b) Exemplo prático:** Usar Python para análise de dados é muito mais rápido que usar C, então saber isso economiza tempo.

---

### Razão 3: Aprender linguagens novas mais facilmente

**a) Explicação:** Quando você aprende conceitos fundamentais, fica mais fácil aprender linguagens novas, pois elas compartilham ideias semelhantes.

**b) Exemplo prático:** Quem sabe Java consegue aprender Kotlin muito mais rápido porque compartilham conceitos e sintaxe parecida.

---

## Questão 2 — Critérios de Avaliação e Domínios

Analise as afirmações abaixo e marque V (verdadeiro) ou F (falso). Corrija as falsas, justificando:

**a) (V) A legibilidade de uma linguagem é influenciada pela simplicidade, ortogonalidade e disponibilidade de estruturas de controle adequadas.**

**b) (F) A linguagem COBOL foi projetada principalmente para o domínio de aplicações científicas.**
- **Correção:** COBOL foi projetada para aplicações comerciais e empresariais. Fortran era para aplicações científicas.

**c) (V) A ortogonalidade significa que um conjunto relativamente pequeno de construções primitivas pode ser combinado de um número relativamente grande de maneiras, e qualquer combinação é válida e significativa.**

**d) (F) A confiabilidade de uma linguagem não tem relação com a presença de verificação de tipos.**
- **Correção:** A verificação de tipos é muito importante para confiabilidade, pois evita erros de tipo.

**e) (F) O custo de uma linguagem é determinado exclusivamente pelo preço do compilador e do ambiente de desenvolvimento.**
- **Correção:** O custo inclui também: tempo de aprendizado, manutenção do código, treinamento de programadores e ferramentas disponíveis.

---

## Questão 3 — Evolução das Linguagens

Relacione cada linguagem de programação com a sua principal contribuição ou característica marcante:

| Linguagem | Contribuição / Característica |
|-----------|-------------------------------|
| **1. Fortran** | **(3)** Primeira linguagem de alto nível compilada; foco em computação numérica |
| **2. COBOL** | **(4)** Sintaxe próxima do inglês; foco em aplicações empresariais e relatórios |
| **3. LISP** | **(1)** Primeira linguagem funcional; processamento simbólico e listas |
| **4. ALGOL 60** | **(2)** Introduziu o conceito de estrutura de blocos e recursão |
| **5. Prolog** | **(5)** Baseada em lógica formal; usada em IA simbólica |

---

## Questão 4 — Análise Comparativa

### **C**

**a) Domínio:** Programação de sistemas, software embarcado e aplicações que precisam de baixo nível (drivers, sistemas operacionais).

**b) Implementação:** Compilada  o código é compilado em linguagem de máquina.

**c) Vantagem:** Muito rápida e eficiente em memoria.
   Desvantagem:** Difícil de ler e sem verificação automática de tipos (pouco segura).

---

### **Python**

**a) Domínio:** Ciência de dados, inteligência artificial, automação e prototipagem rápida.

**b) Implementação:** Interpretada o código é executado linha por linha.

**c) Vantagem:** Muito fácil de aprender e ler (altíssima legibilidade).
   Desvantagem:** Mais lenta que linguagens compiladas.

---

### **Java**

**a) Domínio:** Aplicações empresariais, backends de sistemas grandes e aplicativos mobile (Android).

**b) Implementação:** Híbrida compilada para bytecode e depois interpretada na JVM.

**c) Vantagem:** Segura com verificação forte de tipos e roda em qualquer plataforma (write once, run anywhere).
   Desvantagem:** Consome mais memória que C e pode ser mais verbosa.