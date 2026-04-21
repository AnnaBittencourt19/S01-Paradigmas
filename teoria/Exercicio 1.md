# Lista de Exercícios 1 - Sintaxe e Semântica (Parte 1) - GLC BNF e EBNF

## **Questão 1 — Conceitos básicos**

Defina com suas próprias palavras:

a) O que é **sintaxe** de uma linguagem de programação?
Sintaxe é o jeito certo de escrever os comandos de uma linguagem.  
Ela diz quais símbolos podem aparecer,
em que ordem eles devem ficar e como montar instruções válidas (como escrever)

b) O que é **semântica** de uma linguagem de programação?
Semântica é o significado do que foi escrito 

---

## **Questão 2 — Lexemas e Tokens**

Considere a seguinte sentença em C:

```c
resultado = x + 3 * y;
```

Identifique os **lexemas** e seus respectivos **tokens**, preenchendo uma tabela como essa abaixo:

| Lexema    | Token                  |
| --------- | ---------------------- |
| resultado | identificador          |
| =         | operador de atribuição |
| x         | identificador          |
| +         | operador aritmético    |
| 3         | constante inteira      |
| *         | operador aritmético    |
| y         | identificador          |
| ;         | delimitador            |

---

## **Questão 3 — Verdadeiro ou Falso**

Marque V (verdadeiro) ou F (falso) e **corrija** as falsas:

a) (V) Um lexema é a menor unidade sintática de uma linguagem.

b) (F) Um token é um exemplo específico de lexema.
   **Correção:** Um token é a classificação do lexema, não o contrário. O lexema é a palavra, o token é o tipo.

c) (V) BNF é uma metalinguagem usada para descrever a sintaxe de linguagens de programação.

d) (F) Descrever a semântica de uma linguagem de programação é mais fácil do que descrever sua sintaxe, pois existe notação universal para ambas.
   **Correção:** Descrever semântica é mais difícil que sintaxe. Não existe notação universal para semântica como existe para sintaxe.

e) (V) Chomsky e Backus desenvolveram, de forma independente, formalismos equivalentes para descrição de sintaxe nos anos 1950.

---

## **Questão 4 — Elementos de uma gramática BNF**

Considere a seguinte regra BNF:

```
<atribuicao> → <var> = <expressao> ;
```

Identifique nesta regra:

a) O LHS (lado esquerdo): `<atribuicao>`

b) O RHS (lado direito): `<var> = <expressao> ;`

c) Todos os símbolos **não-terminais**: `<atribuicao>`, `<var>`, `<expressao>`

d) Todos os símbolos **terminais**: `=` e `;`

e) Como essa regra deve ser lida em português: "Uma atribuição é composta por uma variável, seguida do símbolo de igual, seguida de uma expressão e termina com ponto e vírgula."

---

## **Questão 5 — Derivação de uma sentença (BNF)**

Dada a gramática BNF abaixo:

```
<program>    → begin <stmt_list> end
<stmt_list>  → <stmt>
             | <stmt> ; <stmt_list>
<stmt>       → <var> = <expression>
<var>        → A | B | C
<expression> → <var> + <var>
             | <var> - <var>
             | <var>
```

Realize a **derivação mais à esquerda** completa da seguinte sentença:

```
begin B = C - A ; C = A end
```

**Derivação:**

1. `<program>` 
2. `=> begin <stmt_list> end`
3. `=> begin <stmt> ; <stmt_list> end`
4. `=> begin <var> = <expression> ; <stmt_list> end`
5. `=> begin B = <expression> ; <stmt_list> end`
6. `=> begin B = <var> - <var> ; <stmt_list> end`
7. `=> begin B = C - <var> ; <stmt_list> end`
8. `=> begin B = C - A ; <stmt_list> end`
9. `=> begin B = C - A ; <stmt> end`
10. `=> begin B = C - A ; <var> = <expression> end`
11. `=> begin B = C - A ; C = <expression> end`
12. `=> begin B = C - A ; C = <var> end`
13. `=> begin B = C - A ; C = A end`

---

## **Questão 6 — Criando uma gramática BNF**

Escreva uma gramática BNF que descreva uma **declaração de variável simples** no estilo de C, seguindo o padrão:

```
tipo nome ;
```

Onde:

- `tipo` pode ser: `int`, `float` ou `char`
- `nome` pode ser: `x`, `y`, `z`, `temp` ou `resultado`

**Gramática:**

```
<declaracao> → <tipo> <nome> ;
<tipo>       → int | float | char
<nome>       → x | y | z | temp | resultado
```

**Uma sentença válida que ela gera:** `int x ;`

Outra sentença válida: `float resultado ;`

---

## **Questão 7 — BNF vs EBNF**

Considere a seguinte regra BNF que usa **recursão** para definir uma lista de identificadores separados por vírgula:

```
<ident_list> → identifier
             | identifier , <ident_list>
```

a) Reescreva essa regra usando a notação **EBNF** (com chaves `{ }`):

```
<ident_list> → identifier { , identifier }
```

b) **Vantagem:** A versão EBNF é mais clara e simples. Não precisa de recursão e é mais fácil entender que pode ter zero ou mais vírgulas seguidas de identificadores.

---

## **Questão 8 — Metassímbolos da EBNF**

A EBNF introduz três metassímbolos principais em relação à BNF. Para cada um deles, explique o que ele representa e dê **um exemplo de regra EBNF** que o utilize:

a) `[ ]` (colchetes) - **Significa opcional, pode aparecer ou não**

   Exemplo: `<numero> → [ - ] <digito>`
   
   (Um número pode ter ou não o sinal de menos na frente)

b) `{ }` (chaves) - **Significa repetição, pode aparecer zero ou mais vezes**

   Exemplo: `<palavra> → <letra> { <letra> }`
   
   (Uma palavra é uma letra seguida de zero ou mais letras)

c) `( )` com `|` (parênteses com barra vertical) - **Significa agrupamento com alternativas**

   Exemplo: `<operacao> → <numero> ( + | - | * ) <numero>`
   
   (Uma operação é um número seguido de um dos operadores (+ ou - ou *) e outro número)