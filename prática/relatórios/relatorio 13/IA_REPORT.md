Nome: Anna Beatriz da Silva Bittencourt
Matricula: 753

## Prompt
```
Você é um professor especialista em Lisp e Python. Crie uma aula-resumo completa, clara e didática sobre a sintaxe de Lisp, usando Python como linguagem de comparação principal.

Use Common Lisp como dialeto principal de Lisp, mas explique quando algum conceito for comum a outros dialetos.

Objetivo:
Ensinar Lisp para alguém que já sabe Python, mostrando como conceitos familiares em Python aparecem em Lisp.

Formato da resposta:
1. Comece com uma visão geral curta explicando as principais diferenças entre Python e Lisp.
2. Organize a explicação por tópicos de sintaxe.
3. Para cada tópico, mostre:
   - Como é feito em Python
   - Como é feito em Lisp
   - Uma explicação simples da diferença
   - Um exemplo prático

Tópicos obrigatórios:
- Declaração de variáveis
- Imutabilidade, reatribuição e escopo
- Tipos básicos: números, strings, caracteres, booleanos, símbolos e nil
- Listas
- Pares cons e listas encadeadas
- Vetores e arrays
- Estruturas semelhantes a tuplas em Python
- Condicionais: if, cond, when e unless
- Funções
- Tipagem dinâmica em Lisp
- Diferença entre tipagem dinâmica em Python e Lisp
- Definição de funções com defun
- Funções anônimas com lambda
- Recursão
- Manipulação de listas
- mapcar, remove-if-not, reduce e funções equivalentes
- Funções de alta ordem
- Aplicação de funções
- Operadores aritméticos e lógicos
- Notação prefixada
- Símbolos e expressões S
- Quoting: quote e '
- Macros em Lisp, explicadas de forma simples
- Módulos, pacotes e imports
- Entrada e saída básica
- Diferença entre código comum e código com efeitos colaterais

Estilo:
- Use linguagem simples, como se fosse uma aula para iniciantes.
- Explique Lisp sempre comparando com Python.
- Evite explicações excessivamente teóricas no começo.
- Use tabelas quando ajudar na comparação.
- Mostre exemplos pequenos e fáceis de entender.
- Explique a notação com parênteses de forma intuitiva.
- Ao final, crie uma seção chamada “Resumo mental para quem vem do Python”, com analogias diretas entre Python e Lisp.

Exemplo do tipo de comparação desejada:

Em Python:
```python
def soma(a, b):
    return a + b

Em Lisp:

(defun soma (a b)
  (+ a b))

Explique que, em Python, o operador fica entre os valores, enquanto em Lisp o operador vem primeiro dentro dos parênteses.

A resposta deve ser organizada, progressiva e prática, como uma mini-aula completa para quem está começando em Lisp vindo de Python.
```

## Resposta:
# Aula-resumo de Lisp para quem já sabe Python

Nesta aula, vamos usar **Common Lisp** como dialeto principal. Muitas ideias também aparecem em outros Lisps, como Scheme, Clojure, Emacs Lisp e Racket, mas a sintaxe exata pode mudar.

---

# 1. Visão geral: Python x Lisp

Python e Lisp são linguagens de alto nível, dinâmicas e expressivas, mas pensam de formas diferentes.

|Ideia|Python|Lisp|
|---|---|---|
|Forma visual|Usa indentação|Usa parênteses|
|Chamada de função|`soma(2, 3)`|`(soma 2 3)`|
|Operadores|`2 + 3`|`(+ 2 3)`|
|Blocos de código|Indentação|Parênteses agrupando expressões|
|Retorno de função|`return` explícito|Última expressão é retornada|
|Booleano falso|`False`, `None`, `0`, `[]` podem ser falsy|Só `nil` é falso|
|Lista principal|`list` baseada em array dinâmico|lista encadeada com pares `cons`|
|Código como dado|Mais limitado|Ideia central da linguagem|

A primeira coisa que assusta em Lisp são os parênteses. Mas a regra é simples:

```lisp
(função argumento1 argumento2 argumento3)
```

Exemplo:

```python
2 + 3
```

Em Lisp:

```lisp
(+ 2 3)
```

Ou seja: **em Lisp, o operador ou função vem primeiro**.

---

# 2. Declaração de variáveis

## Em Python

```python
x = 10
nome = "Anna"
```

## Em Lisp

```lisp
(defparameter *x* 10)
(defparameter *nome* "Anna")
```

Também podemos criar variáveis locais com `let`:

```lisp
(let ((x 10)
      (nome "Anna"))
  (format t "Nome: ~a, x: ~a~%" nome x))
```

## Diferença simples

Em Python, você cria uma variável apenas atribuindo valor com `=`.

Em Common Lisp, existem formas diferentes:

|Forma|Uso|
|---|---|
|`defparameter`|variável global que pode ser redefinida|
|`defvar`|variável global que só define se ainda não existir|
|`let`|variável local|
|`setf`|altera o valor de algo|

## Exemplo prático

Em Python:

```python
idade = 21
print(idade)
```

Em Lisp:

```lisp
(defparameter *idade* 21)
(format t "~a~%" *idade*)
```

Por convenção, variáveis globais em Common Lisp costumam ficar entre `*asteriscos*`.

---

# 3. Imutabilidade, reatribuição e escopo

## Em Python

```python
x = 10
x = 20
```

## Em Lisp

```lisp
(defparameter *x* 10)
(setf *x* 20)
```

Variável local:

```lisp
(let ((x 10))
  (setf x 20)
  x)
```

Resultado:

```lisp
20
```

## Diferença simples

Em Python, reatribuir é natural:

```python
x = 20
```

Em Lisp, usamos geralmente:

```lisp
(setf x 20)
```

Sobre escopo:

|Conceito|Python|Lisp|
|---|---|---|
|Variável local|dentro da função/bloco|`let`, parâmetros de função|
|Variável global|fora da função|`defparameter`, `defvar`|
|Reatribuição|`x = novo_valor`|`(setf x novo-valor)`|

## Exemplo prático

Em Python:

```python
def exemplo():
    x = 10
    x = x + 5
    return x
```

Em Lisp:

```lisp
(defun exemplo ()
  (let ((x 10))
    (setf x (+ x 5))
    x))
```

Em Lisp, a última expressão da função é o retorno. Aqui, a última expressão é `x`.

---

# 4. Tipos básicos

## Em Python

```python
inteiro = 10
real = 3.14
texto = "Olá"
booleano = True
nada = None
```

## Em Lisp

```lisp
(defparameter *inteiro* 10)
(defparameter *real* 3.14)
(defparameter *texto* "Olá")
(defparameter *caractere* #\A)
(defparameter *verdadeiro* t)
(defparameter *falso* nil)
(defparameter *simbolo* 'banana)
```

## Comparação dos tipos

|Tipo|Python|Common Lisp|
|---|---|---|
|Inteiro|`10`|`10`|
|Real|`3.14`|`3.14`|
|String|`"Olá"`|`"Olá"`|
|Caractere|string de tamanho 1, `"A"`|`#\A`|
|Booleano verdadeiro|`True`|`t`|
|Booleano falso|`False`|`nil`|
|Nulo/vazio|`None`|`nil`|
|Símbolo|não existe igual|`'banana`|

## Explicação simples

Em Common Lisp:

```lisp
nil
```

tem dois papéis importantes:

1. representa falso;
    
2. representa lista vazia.
    

Exemplo:

```lisp
'()
```

é a mesma ideia de lista vazia, e também é `nil`.

```lisp
nil
```

é falso.

```lisp
t
```

é verdadeiro.

Mas atenção: em Lisp, praticamente tudo que não é `nil` é verdadeiro.

```lisp
(if 0
    "verdadeiro"
    "falso")
```

Resultado:

```lisp
"verdadeiro"
```

Diferente de Python, onde `0` é considerado falso.

---

# 5. Listas

## Em Python

```python
numeros = [1, 2, 3, 4]
```

## Em Lisp

```lisp
(defparameter *numeros* '(1 2 3 4))
```

Ou:

```lisp
(list 1 2 3 4)
```

## Diferença simples

Em Python, listas são estruturas mutáveis parecidas com arrays dinâmicos.

Em Lisp, listas tradicionais são **listas encadeadas**, formadas por pares `cons`.

## Exemplo prático

Em Python:

```python
numeros = [1, 2, 3]
primeiro = numeros[0]
resto = numeros[1:]
```

Em Lisp:

```lisp
(defparameter *numeros* '(1 2 3))

(first *numeros*) ; 1
(rest *numeros*)  ; (2 3)
```

Funções comuns:

|Python|Lisp|
|---|---|
|`lista[0]`|`(first lista)`|
|`lista[1:]`|`(rest lista)`|
|`len(lista)`|`(length lista)`|
|`lista.append(x)`|geralmente `(append lista (list x))`|
|`x in lista`|`(member x lista)`|

---

# 6. Pares `cons` e listas encadeadas

Esse é um dos conceitos mais importantes de Lisp.

## Em Python

Python não usa `cons` diretamente. Uma lista Python parece assim:

```python
[1, 2, 3]
```

## Em Lisp

Uma lista Lisp é construída com pares `cons`.

```lisp
(cons 1 '(2 3))
```

Resultado:

```lisp
(1 2 3)
```

## O que é um `cons`?

Um `cons` é um par com duas partes:

```lisp
(cons cabeça resto)
```

Exemplo:

```lisp
(cons 1 '(2 3))
```

Significa:

```text
1 ligado à lista (2 3)
```

Visualmente:

```text
(1 . (2 3))  vira  (1 2 3)
```

## Exemplo prático

```lisp
(defparameter *lista* (cons 1 (cons 2 (cons 3 nil))))
```

Isso cria:

```lisp
(1 2 3)
```

Ou seja:

```lisp
(cons 1
      (cons 2
            (cons 3 nil)))
```

é o mesmo que:

```lisp
'(1 2 3)
```

## `car` e `cdr`

Em Lisp tradicional:

```lisp
(car '(1 2 3)) ; 1
(cdr '(1 2 3)) ; (2 3)
```

Em Common Lisp moderno, também usamos:

```lisp
(first '(1 2 3)) ; 1
(rest '(1 2 3))  ; (2 3)
```

|Função clássica|Função mais legível|Significado|
|---|---|---|
|`car`|`first`|primeiro elemento|
|`cdr`|`rest`|resto da lista|

---

# 7. Vetores e arrays

## Em Python

```python
valores = [10, 20, 30]
valores[0]
```

## Em Lisp

Vetor literal:

```lisp
#(10 20 30)
```

Criando vetor:

```lisp
(defparameter *valores* #(10 20 30))
```

Acessando posição:

```lisp
(aref *valores* 0)
```

Resultado:

```lisp
10
```

## Diferença simples

Em Lisp, lista e vetor são coisas diferentes.

|Estrutura|Melhor para|
|---|---|
|Lista|percorrer, recursão, manipulação simbólica|
|Vetor|acesso rápido por índice|
|Array|estruturas multidimensionais|

## Exemplo prático

Em Python:

```python
valores = [10, 20, 30]
valores[1] = 99
```

Em Lisp:

```lisp
(defparameter *valores* (vector 10 20 30))

(setf (aref *valores* 1) 99)

*valores*
```

Resultado:

```lisp
#(10 99 30)
```

Array bidimensional:

```lisp
(defparameter *matriz*
  (make-array '(2 2) :initial-contents '((1 2)
                                         (3 4))))

(aref *matriz* 0 1) ; 2
```

---

# 8. Estruturas semelhantes a tuplas em Python

## Em Python

```python
ponto = (3, 4)
x, y = ponto
```

## Em Lisp

Common Lisp não tem exatamente uma “tupla” igual à de Python, mas podemos usar algumas alternativas.

### Usando lista

```lisp
(defparameter *ponto* '(3 4))

(first *ponto*)  ; 3
(second *ponto*) ; 4
```

### Usando vetor

```lisp
(defparameter *ponto* #(3 4))

(aref *ponto* 0) ; 3
(aref *ponto* 1) ; 4
```

### Usando `defstruct`

Para dados com nome, parecido com uma classe simples ou `namedtuple`:

```lisp
(defstruct ponto
  x
  y)

(defparameter *p* (make-ponto :x 3 :y 4))

(ponto-x *p*) ; 3
(ponto-y *p*) ; 4
```

## Diferença simples

|Python|Lisp|
|---|---|
|`(3, 4)`|`'(3 4)` ou `#(3 4)`|
|`namedtuple` / `dataclass`|`defstruct`|
|desempacotamento|`destructuring-bind`|

## Exemplo com desempacotamento

Em Python:

```python
x, y = (3, 4)
```

Em Lisp:

```lisp
(destructuring-bind (x y) '(3 4)
  (+ x y))
```

Resultado:

```lisp
7
```

---

# 9. Condicionais: `if`, `cond`, `when` e `unless`

## 9.1 `if`

### Em Python

```python
if idade >= 18:
    print("Maior de idade")
else:
    print("Menor de idade")
```

### Em Lisp

```lisp
(if (>= idade 18)
    (format t "Maior de idade~%")
    (format t "Menor de idade~%"))
```

### Diferença simples

Em Lisp:

```lisp
(if condição
    valor-se-verdadeiro
    valor-se-falso)
```

Exemplo:

```lisp
(defun maioridade (idade)
  (if (>= idade 18)
      "Maior de idade"
      "Menor de idade"))
```

---

## 9.2 `cond`

`cond` é usado quando há várias condições.

### Em Python

```python
if nota >= 90:
    conceito = "A"
elif nota >= 70:
    conceito = "B"
else:
    conceito = "C"
```

### Em Lisp

```lisp
(defun conceito (nota)
  (cond
    ((>= nota 90) "A")
    ((>= nota 70) "B")
    (t "C")))
```

### Diferença simples

`cond` é parecido com `if/elif/else`.

```lisp
(cond
  (condição1 resultado1)
  (condição2 resultado2)
  (t resultado-padrão))
```

O `t` no final funciona como o `else`.

---

## 9.3 `when`

`when` é usado quando só existe o caso verdadeiro.

### Em Python

```python
if ligado:
    print("Sistema ligado")
```

### Em Lisp

```lisp
(when ligado
  (format t "Sistema ligado~%"))
```

## 9.4 `unless`

`unless` é o contrário de `when`.

### Em Python

```python
if not ligado:
    print("Sistema desligado")
```

### Em Lisp

```lisp
(unless ligado
  (format t "Sistema desligado~%"))
```

## Resumo

|Python|Lisp|
|---|---|
|`if/else`|`if`|
|`if/elif/else`|`cond`|
|`if condição:`|`when`|
|`if not condição:`|`unless`|

---

# 10. Funções

## Em Python

```python
def soma(a, b):
    return a + b
```

## Em Lisp

```lisp
(defun soma (a b)
  (+ a b))
```

## Diferença simples

Em Python, usamos:

```python
def nome(parametros):
    return resultado
```

Em Lisp, usamos:

```lisp
(defun nome (parametros)
  resultado)
```

A última expressão é retornada automaticamente.

## Exemplo prático

Em Python:

```python
def dobro(x):
    return x * 2
```

Em Lisp:

```lisp
(defun dobro (x)
  (* x 2))
```

Chamando:

```lisp
(dobro 5)
```

Resultado:

```lisp
10
```

---

# 11. Tipagem dinâmica em Lisp

## Em Python

```python
x = 10
x = "texto"
```

Python permite isso porque é dinamicamente tipado.

## Em Lisp

```lisp
(defparameter *x* 10)
(setf *x* "texto")
```

Lisp também permite.

## Diferença simples

Tanto Python quanto Lisp têm **tipagem dinâmica**: a variável não tem um tipo fixo obrigatório; o valor é que tem tipo.

Mas Common Lisp tem algumas diferenças importantes:

|Ideia|Python|Common Lisp|
|---|---|---|
|Variável pode mudar de tipo|Sim|Sim|
|Tipo é verificado em tempo de execução|Sim|Sim|
|Declarações opcionais de tipo|Limitadas|Sim, com `declare`|
|Espaço de nomes de função e variável|geralmente único|separados em Common Lisp|
|Falso|vários valores falsy|apenas `nil`|

Exemplo importante:

```lisp
(defun exemplo (list)
  (list 1 2 3))
```

Isso pode confundir.

Em Common Lisp, `list` pode ser nome de variável e também nome de função, porque existe um espaço para variáveis e outro para funções.

Em Python, isso daria problema:

```python
list = [1, 2, 3]
list("abc")  # erro, porque list foi sobrescrito
```

Em Common Lisp, funções e variáveis ficam em espaços separados.

---

# 12. Definição de funções com `defun`

## Em Python

```python
def saudacao(nome):
    return "Olá, " + nome
```

## Em Lisp

```lisp
(defun saudacao (nome)
  (concatenate 'string "Olá, " nome))
```

Chamando:

```lisp
(saudacao "Anna")
```

Resultado:

```lisp
"Olá, Anna"
```

## Parâmetros opcionais

Em Python:

```python
def saudacao(nome="Anna"):
    return "Olá, " + nome
```

Em Lisp:

```lisp
(defun saudacao (&optional (nome "Anna"))
  (concatenate 'string "Olá, " nome))
```

Chamando:

```lisp
(saudacao)
(saudacao "Maria")
```

## Parâmetros nomeados

Em Python:

```python
def criar_usuario(nome, idade):
    return {"nome": nome, "idade": idade}

criar_usuario(nome="Anna", idade=21)
```

Em Lisp:

```lisp
(defun criar-usuario (&key nome idade)
  (list :nome nome :idade idade))

(criar-usuario :nome "Anna" :idade 21)
```

Resultado:

```lisp
(:NOME "Anna" :IDADE 21)
```

---

# 13. Funções anônimas com `lambda`

## Em Python

```python
dobro = lambda x: x * 2
dobro(5)
```

## Em Lisp

```lisp
(defparameter *dobro*
  (lambda (x) (* x 2)))

(funcall *dobro* 5)
```

Resultado:

```lisp
10
```

## Diferença simples

Em Python:

```python
lambda x: expressão
```

Em Lisp:

```lisp
(lambda (x) expressão)
```

Mas, para chamar uma função guardada em variável, Common Lisp usa `funcall`:

```lisp
(funcall função argumentos...)
```

Exemplo:

```lisp
(funcall (lambda (x) (* x 2)) 8)
```

Resultado:

```lisp
16
```

---

# 14. Recursão

Recursão é quando uma função chama ela mesma.

## Em Python

```python
def fatorial(n):
    if n == 0:
        return 1
    else:
        return n * fatorial(n - 1)
```

## Em Lisp

```lisp
(defun fatorial (n)
  (if (= n 0)
      1
      (* n (fatorial (- n 1)))))
```

## Diferença simples

A lógica é a mesma.

A diferença é a sintaxe:

```python
n * fatorial(n - 1)
```

vira:

```lisp
(* n (fatorial (- n 1)))
```

Em Lisp, tudo segue a forma:

```lisp
(função argumentos...)
```

---

# 15. Manipulação de listas

## Lista em Python

```python
numeros = [1, 2, 3, 4]
```

## Lista em Lisp

```lisp
(defparameter *numeros* '(1 2 3 4))
```

## Operações básicas

|Operação|Python|Lisp|
|---|---|---|
|primeiro elemento|`lista[0]`|`(first lista)`|
|segundo elemento|`lista[1]`|`(second lista)`|
|resto da lista|`lista[1:]`|`(rest lista)`|
|tamanho|`len(lista)`|`(length lista)`|
|adicionar no começo|`[x] + lista`|`(cons x lista)`|
|concatenar|`a + b`|`(append a b)`|
|verificar membro|`x in lista`|`(member x lista)`|

## Exemplo prático

Em Python:

```python
numeros = [1, 2, 3]
novo = [0] + numeros
```

Em Lisp:

```lisp
(defparameter *numeros* '(1 2 3))
(defparameter *novo* (cons 0 *numeros*))
```

Resultado:

```lisp
(0 1 2 3)
```

---

# 16. `mapcar`, `remove-if-not`, `reduce` e equivalentes

Essas funções são parecidas com `map`, `filter` e `reduce` em Python.

## 16.1 `mapcar`

### Em Python

```python
numeros = [1, 2, 3]
dobros = list(map(lambda x: x * 2, numeros))
```

Ou:

```python
dobros = [x * 2 for x in numeros]
```

### Em Lisp

```lisp
(mapcar (lambda (x) (* x 2)) '(1 2 3))
```

Resultado:

```lisp
(2 4 6)
```

## Diferença simples

|Python|Lisp|
|---|---|
|`map(funcao, lista)`|`(mapcar funcao lista)`|
|list comprehension|`mapcar` com `lambda`|

---

## 16.2 `remove-if-not`

`remove-if-not` mantém apenas os elementos que satisfazem uma condição.

### Em Python

```python
numeros = [1, 2, 3, 4, 5]
pares = list(filter(lambda x: x % 2 == 0, numeros))
```

Ou:

```python
pares = [x for x in numeros if x % 2 == 0]
```

### Em Lisp

```lisp
(remove-if-not (lambda (x) (= (mod x 2) 0))
               '(1 2 3 4 5))
```

Resultado:

```lisp
(2 4)
```

## Diferença simples

|Python|Lisp|
|---|---|
|`filter(condicao, lista)`|`remove-if-not`|
|mantém se condição for verdadeira|mantém se condição for verdadeira|

---

## 16.3 `reduce`

`reduce` combina todos os elementos em um único resultado.

### Em Python

```python
from functools import reduce

soma = reduce(lambda a, b: a + b, [1, 2, 3, 4])
```

### Em Lisp

```lisp
(reduce #'+ '(1 2 3 4))
```

Resultado:

```lisp
10
```

Também poderia ser:

```lisp
(reduce (lambda (a b) (+ a b)) '(1 2 3 4))
```

## Diferença simples

Em Lisp, `#'+` significa “a função chamada `+`”.

Ou seja:

```lisp
#'+
```

é parecido com passar uma função como objeto.

---

# 17. Funções de alta ordem

Uma função de alta ordem é uma função que recebe outra função como argumento ou retorna uma função.

## Em Python

```python
def aplicar_duas_vezes(funcao, x):
    return funcao(funcao(x))

def dobro(x):
    return x * 2

aplicar_duas_vezes(dobro, 5)
```

Resultado:

```python
20
```

## Em Lisp

```lisp
(defun aplicar-duas-vezes (funcao x)
  (funcall funcao (funcall funcao x)))

(defun dobro (x)
  (* x 2))

(aplicar-duas-vezes #'dobro 5)
```

Resultado:

```lisp
20
```

## Diferença simples

Em Common Lisp, para passar uma função nomeada como argumento, usamos:

```lisp
#'nome-da-funcao
```

Exemplo:

```lisp
#'dobro
```

Para chamar uma função que está em uma variável, usamos:

```lisp
(funcall funcao argumento)
```

---

# 18. Aplicação de funções

## Em Python

```python
def soma(a, b, c):
    return a + b + c

valores = [1, 2, 3]
soma(*valores)
```

## Em Lisp

```lisp
(defun soma (a b c)
  (+ a b c))

(apply #'soma '(1 2 3))
```

Resultado:

```lisp
6
```

## Diferença simples

|Python|Lisp|
|---|---|
|`funcao(a, b)`|`(funcao a b)`|
|`funcao(*lista)`|`(apply #'funcao lista)`|
|chamar função em variável|`funcao(x)`|

Exemplos:

```lisp
(funcall #'+ 2 3)
```

Resultado:

```lisp
5
```

```lisp
(apply #'+ '(1 2 3 4))
```

Resultado:

```lisp
10
```

---

# 19. Operadores aritméticos e lógicos

## Em Python

```python
x = 10 + 5
y = 10 > 5
z = True and False
```

## Em Lisp

```lisp
(+ 10 5)
(> 10 5)
(and t nil)
```

## Operadores aritméticos

|Python|Lisp|
|---|---|
|`a + b`|`(+ a b)`|
|`a - b`|`(- a b)`|
|`a * b`|`(* a b)`|
|`a / b`|`(/ a b)`|
|`a % b`|`(mod a b)`|
|`a ** b`|`(expt a b)`|

Exemplo:

```lisp
(+ 1 2 3 4)
```

Resultado:

```lisp
10
```

Em Lisp, vários operadores aceitam mais de dois argumentos.

```lisp
(* 2 3 4)
```

Resultado:

```lisp
24
```

## Operadores lógicos

|Python|Lisp|
|---|---|
|`and`|`and`|
|`or`|`or`|
|`not`|`not`|

Exemplo:

```lisp
(and (> 10 5) (< 3 8))
```

Resultado:

```lisp
T
```

---

# 20. Notação prefixada

Essa é uma das maiores diferenças visuais.

## Em Python

```python
resultado = 2 + 3 * 4
```

## Em Lisp

```lisp
(defparameter *resultado* (+ 2 (* 3 4)))
```

Resultado:

```lisp
14
```

## Diferença simples

Python usa notação infixada:

```text
2 + 3
```

Lisp usa notação prefixada:

```text
+ 2 3
```

Dentro de parênteses:

```lisp
(+ 2 3)
```

## Exemplo prático

Em Python:

```python
media = (nota1 + nota2 + nota3) / 3
```

Em Lisp:

```lisp
(defun media (nota1 nota2 nota3)
  (/ (+ nota1 nota2 nota3) 3))
```

Perceba:

```lisp
(+ nota1 nota2 nota3)
```

vem antes da divisão:

```lisp
(/ soma 3)
```

---

# 21. Símbolos e expressões S

## Símbolos

Símbolos são uma ideia central em Lisp.

Um símbolo pode ser usado como nome de variável, nome de função ou dado simbólico.

Exemplo:

```lisp
'banana
```

Aqui, `banana` não é uma string. É um símbolo.

## Comparação com Python

Em Python:

```python
"banana"
```

é uma string.

Em Lisp:

```lisp
"banana"
```

também é string.

Mas:

```lisp
'banana
```

é símbolo.

## Diferença simples

|Código|Significado|
|---|---|
|`"banana"`|texto/string|
|`'banana`|símbolo|
|`banana`|tente avaliar o valor da variável chamada banana|

Exemplo:

```lisp
(defparameter banana 10)

banana
```

Resultado:

```lisp
10
```

Agora:

```lisp
'banana
```

Resultado:

```lisp
BANANA
```

Ou seja, com aspas simples, Lisp não tenta buscar o valor da variável. Ele trata como dado.

---

## Expressões S

S-expression significa **symbolic expression**, ou expressão simbólica.

Em Lisp, quase tudo é uma expressão S.

Exemplos:

```lisp
42
```

```lisp
"Olá"
```

```lisp
(+ 2 3)
```

```lisp
(defun soma (a b)
  (+ a b))
```

Uma expressão S pode ser:

1. um átomo, como `42`, `"texto"`, `t`, `nil`, `'x`;
    
2. uma lista, como `(+ 2 3)`.
    

A grande ideia de Lisp é que **código também é uma lista**.

Exemplo:

```lisp
(+ 2 3)
```

é código, mas também tem estrutura de lista:

```lisp
(+ 2 3)
```

primeiro elemento: `+`  
segundo elemento: `2`  
terceiro elemento: `3`

---

# 22. Quoting: `quote` e `'`

## Problema

Em Lisp, quando você escreve:

```lisp
(+ 2 3)
```

Lisp interpreta isso como chamada de função.

Mas e se você quiser criar uma lista contendo o símbolo `+` e os números `2` e `3`, sem executar?

Use `quote`.

## Em Lisp

```lisp
(quote (+ 2 3))
```

Forma abreviada:

```lisp
'(+ 2 3)
```

Resultado:

```lisp
(+ 2 3)
```

Ou seja: ele não calcula. Ele só devolve a estrutura.

## Comparação com Python

Em Python:

```python
[ "+", 2, 3 ]
```

Isso é uma lista de dados.

Em Lisp:

```lisp
'(+ 2 3)
```

também é uma lista de dados.

Sem quote:

```lisp
(+ 2 3)
```

executa a soma.

Com quote:

```lisp
'(+ 2 3)
```

vira dado.

## Exemplo prático

```lisp
(defparameter *expressao* '(+ 2 3))
```

Agora `*expressao*` guarda a lista:

```lisp
(+ 2 3)
```

Ela não foi executada.

---

# 23. Macros em Lisp, de forma simples

Macros são uma das partes mais poderosas de Lisp.

## Ideia simples

Uma função comum recebe valores.

Uma macro recebe código antes de ele ser executado e gera outro código.

## Comparação intuitiva

Em Python, funções trabalham com valores:

```python
def dobro(x):
    return x * 2
```

Em Lisp, funções também:

```lisp
(defun dobro (x)
  (* x 2))
```

Mas uma macro pode criar uma nova “forma de escrever código”.

Por exemplo, `when` poderia ser entendido como uma macro que transforma isto:

```lisp
(when condicao
  corpo)
```

em algo parecido com:

```lisp
(if condicao
    (progn corpo))
```

## Exemplo simples de macro

```lisp
(defmacro quando-verdadeiro (condicao &body corpo)
  `(if ,condicao
       (progn ,@corpo)))
```

Uso:

```lisp
(quando-verdadeiro (> 10 5)
  (format t "Sim, é verdadeiro!~%"))
```

## Explicação simples

Essa macro cria uma nova sintaxe:

```lisp
(quando-verdadeiro condição
  comandos...)
```

Ela transforma esse código em outro código Lisp antes da execução.

## Diferença entre função e macro

|Função|Macro|
|---|---|
|recebe valores já avaliados|recebe código ainda não avaliado|
|calcula resultado|gera código|
|parecida com função Python|mais parecida com criar uma nova construção da linguagem|

Macros são comuns em Lisp porque código e dados têm a mesma estrutura: listas.

---

# 24. Módulos, pacotes e imports

Em Python, normalmente usamos módulos e imports:

```python
import math

math.sqrt(25)
```

Em Common Lisp, usamos principalmente **packages** e sistemas.

## Pacote básico

```lisp
(defpackage :meu-programa
  (:use :cl)
  (:export :soma))

(in-package :meu-programa)
```

Função dentro do pacote:

```lisp
(defun soma (a b)
  (+ a b))
```

## Explicação simples

|Python|Common Lisp|
|---|---|
|arquivo `.py`|arquivo `.lisp`|
|`import modulo`|`defpackage`, `in-package`, `use-package`, `import`|
|biblioteca externa|normalmente carregada com ASDF/Quicklisp|
|namespace|package|

## Usando símbolo de outro pacote

Se uma função for exportada por um pacote, podemos acessar assim:

```lisp
pacote:funcao
```

Se não for exportada, em Common Lisp aparece com dois `::`:

```lisp
pacote::funcao-interna
```

Na prática, em projetos Common Lisp, é comum organizar o código com:

```lisp
(defpackage ...)
(in-package ...)
```

e usar ASDF para definir sistemas maiores.

---

# 25. Entrada e saída básica

## Saída em Python

```python
print("Olá")
```

## Saída em Lisp

```lisp
(format t "Olá~%")
```

## Diferença simples

Em Lisp, `format` é uma função poderosa para imprimir texto.

```lisp
(format destino "texto com marcadores" valores...)
```

O destino `t` significa saída padrão, isto é, o terminal.

```lisp
(format t "Olá, ~a!~%" "Anna")
```

Resultado:

```text
Olá, Anna!
```

Marcadores comuns:

|Marcador|Significado|
|---|---|
|`~a`|imprime de forma legível|
|`~s`|imprime de forma que Lisp consiga reler|
|`~%`|quebra de linha|

## Entrada em Python

```python
nome = input("Digite seu nome: ")
```

## Entrada em Lisp

```lisp
(format t "Digite seu nome: ")
(defparameter *nome* (read-line))
```

Exemplo com função:

```lisp
(defun perguntar-nome ()
  (format t "Digite seu nome: ")
  (let ((nome (read-line)))
    (format t "Olá, ~a!~%" nome)))
```

## Lendo número

Em Python:

```python
idade = int(input("Idade: "))
```

Em Lisp:

```lisp
(format t "Idade: ")
(defparameter *idade* (parse-integer (read-line)))
```

---

# 26. Código comum x código com efeitos colaterais

Essa diferença é muito importante.

## Código sem efeito colateral

É código que calcula e devolve um valor, sem alterar nada fora dele.

### Em Python

```python
def soma(a, b):
    return a + b
```

### Em Lisp

```lisp
(defun soma (a b)
  (+ a b))
```

Essa função só calcula.

---

## Código com efeito colateral

É código que altera algo no mundo externo ou no estado do programa.

Exemplos de efeitos colaterais:

|Efeito colateral|Python|Lisp|
|---|---|---|
|imprimir na tela|`print()`|`format`|
|alterar variável|`x = novo`|`setf`|
|alterar lista/objeto|`append`, atribuição por índice|`setf`, `push`, `pop`|
|ler entrada|`input()`|`read-line`|
|escrever arquivo|`open`, `write`|`with-open-file`, `format`|

## Exemplo sem efeito colateral

```lisp
(defun dobro (x)
  (* x 2))
```

## Exemplo com efeito colateral

```lisp
(defun mostrar-dobro (x)
  (format t "O dobro é ~a~%" (* x 2)))
```

A primeira função **retorna um valor**.

A segunda função **imprime algo na tela**.

---

# 27. Mini comparações práticas

## Soma simples

Python:

```python
def soma(a, b):
    return a + b
```

Lisp:

```lisp
(defun soma (a b)
  (+ a b))
```

---

## Verificar se número é par

Python:

```python
def par(x):
    return x % 2 == 0
```

Lisp:

```lisp
(defun par (x)
  (= (mod x 2) 0))
```

---

## Dobrar todos os números de uma lista

Python:

```python
numeros = [1, 2, 3]
dobros = [x * 2 for x in numeros]
```

Lisp:

```lisp
(mapcar (lambda (x) (* x 2)) '(1 2 3))
```

---

## Filtrar maiores de idade

Python:

```python
idades = [12, 18, 21, 15, 30]
maiores = [x for x in idades if x >= 18]
```

Lisp:

```lisp
(remove-if-not (lambda (x) (>= x 18))
               '(12 18 21 15 30))
```

Resultado:

```lisp
(18 21 30)
```

---

## Somar lista inteira

Python:

```python
sum([1, 2, 3, 4])
```

Lisp:

```lisp
(reduce #'+ '(1 2 3 4))
```

Resultado:

```lisp
10
```

---

# 28. Como ler parênteses em Lisp de forma intuitiva

Muita gente olha para Lisp e pensa:

```lisp
(+ (* 2 3) (- 10 4))
```

e acha confuso.

Mas leia de dentro para fora:

```lisp
(* 2 3)
```

Resultado:

```lisp
6
```

Depois:

```lisp
(- 10 4)
```

Resultado:

```lisp
6
```

Agora:

```lisp
(+ 6 6)
```

Resultado:

```lisp
12
```

Então:

```lisp
(+ (* 2 3) (- 10 4))
```

é igual a:

```python
(2 * 3) + (10 - 4)
```

A regra mental é:

```lisp
(operação coisa1 coisa2 coisa3)
```

---

# 29. Exemplo completo pequeno

## Em Python

```python
def classificar_notas(notas):
    aprovadas = [n for n in notas if n >= 60]
    media = sum(aprovadas) / len(aprovadas)
    return media

print(classificar_notas([40, 70, 80, 50, 90]))
```

## Em Lisp

```lisp
(defun classificar-notas (notas)
  (let* ((aprovadas (remove-if-not (lambda (n) (>= n 60)) notas))
         (media (/ (reduce #'+ aprovadas)
                   (length aprovadas))))
    media))

(format t "~a~%" (classificar-notas '(40 70 80 50 90)))
```

Resultado:

```lisp
80
```

## Explicação

Em Python:

```python
aprovadas = [n for n in notas if n >= 60]
```

Em Lisp:

```lisp
(remove-if-not (lambda (n) (>= n 60)) notas)
```

Em Python:

```python
sum(aprovadas)
```

Em Lisp:

```lisp
(reduce #'+ aprovadas)
```

Em Python:

```python
len(aprovadas)
```

Em Lisp:

```lisp
(length aprovadas)
```

---

# 30. Resumo mental para quem vem do Python

|Em Python|Pense em Lisp como|
|---|---|
|`funcao(a, b)`|`(funcao a b)`|
|`a + b`|`(+ a b)`|
|`a * b + c`|`(+ (* a b) c)`|
|`x = 10`|`(defparameter *x* 10)` ou `(let ((x 10)) ...)`|
|`x = x + 1`|`(setf x (+ x 1))`|
|`def soma(a, b): return a+b`|`(defun soma (a b) (+ a b))`|
|`lambda x: x * 2`|`(lambda (x) (* x 2))`|
|`[1, 2, 3]`|`'(1 2 3)`|
|`lista[0]`|`(first lista)`|
|`lista[1:]`|`(rest lista)`|
|`len(lista)`|`(length lista)`|
|`map`|`mapcar`|
|`filter`|`remove-if-not`|
|`reduce`|`reduce`|
|`if/elif/else`|`cond`|
|`print()`|`format`|
|`input()`|`read-line`|
|`None`|geralmente `nil`|
|`False`|`nil`|
|`True`|`t`, ou qualquer coisa que não seja `nil`|
|string|string|
|símbolo|dado simbólico, como `'banana`|
|módulo/import|package/system|
|decorators/metaprogramação|macros, mas mais poderosas|

A frase mais importante para lembrar:

> Em Python, você escreve `soma(2, 3)`.  
> Em Lisp, você escreve `(soma 2 3)`.  
> Em Python, `2 + 3`.  
> Em Lisp, `(+ 2 3)`.

Lisp parece estranho no começo porque tudo usa a mesma forma:

```lisp
(nome coisa1 coisa2 coisa3)
```

Mas essa regularidade é justamente a força da linguagem. Depois que você entende que o primeiro elemento normalmente é a função, e o resto são argumentos, a sintaxe fica muito previsível.
## Relatório de Satisfação e Aprendizado
Utilizei o chatgpt para fazer uma explicação sobre a sintaxe de Lisp comparando ao Python, me deu um rumo muito bom e me auxiliou a entender melhor a linguagem e a realizar a atividade