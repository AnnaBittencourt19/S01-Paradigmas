Lista de Exercícios de Reposição 02 — Sintaxe

e Semântica

Disciplina: S01 — Paradigmas da Programação

Professor: Ruan Patrick de Souza — Inatel

Atividade de reposição de aula (feriado)

## Questão 1 — Lexemas e Tokens

Considere o seguinte trecho de código em Java:

```java
int soma = a + b * 2;
```

### a) Tabela de Lexemas e Tokens

| Lexema | Token |
|--------|-------|
| `int` | palavra-chave |
| `soma` | identificador |
| `=` | operador de atribuição |
| `a` | identificador |
| `+` | operador aritmético |
| `b` | identificador |
| `*` | operador aritmético |
| `2` | constante inteira |
| `;` | delimitador |

### b) Diferença entre Lexema e Token

**Lexema:** É a sequência de caracteres no código. É o que você vê escrito.

**Token:** É a classificação/tipo do lexema. É o rótulo que o compilador dá.

**Exemplo próprio:**
- No código `if (x > 5)`, o lexema `if` é uma **palavra-chave** (seu token)
- O lexema `x` é um **identificador** (seu token)

---

## Questão 2 — BNF: Derivação de Sentença

Considere a seguinte gramática BNF para atribuições simples:

```
<atrib> ::= <var> = <expr> ;
<expr>  ::= <expr> + <termo> | <expr> - <termo> | <termo>
<termo> ::= <termo> * <fator> | <fator>
<fator> ::= ( <expr> ) | <var> | <num>
<var>   ::= a | b | c | x | y
<num>   ::= 0 | 1 | 2 | 3 | 4 | 5
```

### a) Derivação mais à esquerda de: `x = a + b * 3 ;`

```
<atrib>
=> <var> = <expr> ;
=> x = <expr> ;
=> x = <expr> + <termo> ;
=> x = <termo> + <termo> ;
=> x = <var> + <termo> ;
=> x = a + <termo> ;
=> x = a + <termo> * <fator> ;
=> x = a + <fator> * <fator> ;
=> x = a + <var> * <fator> ;
=> x = a + b * <fator> ;
=> x = a + b * <num> ;
=> x = a + b * 3 ;
```

### b) Árvore de Análise Sintática

```
           <atrib>
             /  \  \
          <var> = <expr> ;
           |     /    |    \
           x  <expr>  +  <termo>
            |            /   |   \
          <termo>    <termo> * <fator>
            |          |        |
          <fator>    <fator>  <num>
            |          |        |
          <var>      <var>      3
            |          |     
            a          b
```

---

## Questão 3 — BNF e EBNF: Construção de Gramática

### a) Gramática BNF

```
<declaracao> ::= var <lista_id> : <tipo> ;
<lista_id>   ::= <id> | <id> , <lista_id>
<tipo>       ::= int | float | string
<id>         ::= a | b | c | d | e | f | g | h | i | j | k | l | m |
                 n | o | p | q | r | s | t | u | v | w | x | y | z
```

### b) Mesma Gramática em EBNF

```
<declaracao> ::= var <lista_id> : <tipo> ;
<lista_id>   ::= <id> { , <id> }
<tipo>       ::= int | float | string
<id>         ::= a | b | c | ... | z
```

**Vantagem:** EBNF é mais simples, elimina a recursão e fica mais clara.

### c) Exemplos

**Sentença VÁLIDA:** `var x : int ;`
- Começa com `var`, tem um identificador, `:`, um tipo e `;`. ✓

**Sentença VÁLIDA:** `var x, y, z : float ;`
- Começa com `var`, tem três identificadores separados por vírgula, `:`, um tipo e `;`. ✓

**Sentença INVÁLIDA:** `var x : inteiro ;`
- O tipo `inteiro` não existe na gramática. Só aceita `int`, `float` ou `string`. ✗

**Sentença INVÁLIDA:** `var x y : int ;`
- Faltam as vírgulas entre os identificadores. ✗

---

## Questão 4 — Semântica Estática e Dinâmica

### a) Semântica Estática

**O que é:** São as regras de significado que podem ser verificadas sem executar o código (em tempo de compilação). Exemplo: verificar se uma variável foi declarada antes de usar.

**Por que não pode ser descrita totalmente por BNF:** BNF descreve apenas a estrutura sintática (ordem das palavras). Semântica estática depende do contexto. Exemplo: BNF aceita `x = y + 5`, mas precisa saber se `x` e `y` foram declaradas.

**Exemplo:** Em Java, você não pode atribuir um `String` a uma variável `int`:
```java
int numero = "texto"; // ERRO semântico!
```

### b) Erro Semântico em C++

```cpp
int x = 10;
int y = 0;
float resultado = x / y;  // ERRO: divisão por zero!
```

**Problema:** Sintaticamente está correto, mas é semanticamente inválido. Você está dividindo por zero, o que causa erro em tempo de execução.

### c) Tipos de Semântica

**Semântica Operacional:** Descreve o significado mostrando como o programa funciona passo a passo. É como executar o programa e ver o que acontece.

**Semântica Denotacional:** Associa cada construção do programa a um objeto matemático (funções, conjuntos, etc.). É mais formal e abstrata.

**Semântica Axiomática:** Descreve o significado usando axiomas e regras lógicas. Útil para provar propriedades do programa.

**Mais utilizada na prática:** **Semântica Axiomática** é mais usada para verificação formal, pois permite provar se um programa está correto logicamente.