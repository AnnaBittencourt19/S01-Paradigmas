Nome: Anna Beatriz da Silva Bittencourt
Matricula: 753

## Prompt
```
Você é um professor especialista em Haskell e Python. Crie uma aula-resumo completa, clara e didática sobre a sintaxe de Haskell, usando Python como linguagem de comparação principal.

Objetivo:
Ensinar Haskell para alguém que já sabe Python, mostrando como conceitos familiares em Python aparecem em Haskell.

Formato da resposta:
1. Comece com uma visão geral curta explicando as principais diferenças entre Python e Haskell.
2. Organize a explicação por tópicos de sintaxe.
3. Para cada tópico, mostre:
   - Como é feito em Python
   - Como é feito em Haskell
   - Uma explicação simples da diferença
   - Um exemplo prático

Tópicos obrigatórios:
- Declaração de variáveis e imutabilidade
- Tipos básicos: Int, Integer, Float, Double, Char, String, Bool
- Listas
- Tuplas
- Condicionais: if/else
- Funções
- Tipagem estática e inferência de tipos
- Assinaturas de tipo
- Pattern matching
- Guards
- Recursão
- List comprehensions
- Funções de alta ordem
- map, filter e fold
- Lambdas
- Currying e aplicação parcial
- Operadores
- Módulos e imports
- Entrada e saída básica com IO
- Diferença entre código puro e código com efeitos colaterais

Estilo:
- Use linguagem simples, como se fosse uma aula para iniciantes.
- Explique Haskell sempre comparando com Python.
- Evite explicações excessivamente teóricas no começo.
- Use tabelas quando ajudar na comparação.
- Mostre exemplos pequenos e fáceis de entender.
- Ao final, crie uma seção chamada “Resumo mental para quem vem do Python”, com analogias diretas entre Python e Haskell.

Exemplo do tipo de comparação desejada:

Em Python:
```python
def soma(a, b):
    return a + b
```

## Resposta obtida 
# Aula-resumo: sintaxe de Haskell comparando com Python

## 1. Visão geral: Python vs Haskell

Python e Haskell conseguem resolver os mesmos tipos de problema, mas pensam de formas bem diferentes.

|Ideia|Python|Haskell|
|---|---|---|
|Estilo principal|Imperativo, orientado a objetos e multiparadigma|Funcional|
|Variáveis|Podem mudar de valor|São imutáveis por padrão|
|Tipagem|Dinâmica|Estática|
|Inferência de tipos|Parcial|Muito forte|
|Funções|Blocos com `def` e `return`|Expressões matemáticas|
|Laços|Usa muito `for` e `while`|Usa mais recursão, `map`, `filter`, `fold`|
|Objetos/dados|Classes, dicionários, dataclasses|`data`, tuplas, records|
|Efeitos colaterais|Misturados ao código comum|Separados usando `IO`|

A ideia principal é:

> Em Python, você geralmente descreve **passo a passo o que o programa deve fazer**  
> Em Haskell, você geralmente descreve **o que uma função calcula**

---

# 2. Declaração de variáveis e imutabilidade

## Em Python

```python
x = 10
x = 20

print(x)
```

Em Python, a variável `x` pode receber outro valor depois.

## Em Haskell

```haskell
x = 10
```

Em Haskell, depois que você define `x`, você não altera esse valor como faria em Python.

## Diferença simples

Em Python, uma variável parece uma caixa que pode trocar de conteúdo.

Em Haskell, uma definição parece uma igualdade matemática:

```haskell
x = 10
```

Ou seja, `x` é `10`.

## Exemplo prático

Python:

```python
idade = 20
idade = idade + 1

print(idade)
```

Haskell:

```haskell
idade = 20
novaIdade = idade + 1
```

Em Haskell, você cria um novo valor em vez de alterar o antigo.

---

# 3. Tipos básicos

## Em Python

```python
idade = 21
altura = 1.65
nome = "Anna"
letra = "A"
ativo = True
```

Python descobre os tipos enquanto o programa roda.

## Em Haskell

```haskell
idade :: Int
idade = 21

altura :: Double
altura = 1.65

letra :: Char
letra = 'A'

nome :: String
nome = "Anna"

ativo :: Bool
ativo = True
```

## Principais tipos em Haskell

|Tipo|Significado|Exemplo|
|---|---|---|
|`Int`|Inteiro com limite da máquina|`10`, `-5`|
|`Integer`|Inteiro sem limite prático|`999999999999999999`|
|`Float`|Número decimal simples|`3.14`|
|`Double`|Número decimal com mais precisão|`3.14159265`|
|`Char`|Um caractere|`'A'`|
|`String`|Texto|`"Anna"`|
|`Bool`|Verdadeiro ou falso|`True`, `False`|

## Diferença importante

Em Python:

```python
letra = "A"
```

`"A"` é uma string de tamanho 1.

Em Haskell:

```haskell
letra = 'A'
nome = "Anna"
```

Em Haskell:

```haskell
'A'
```

é um `Char`.

```haskell
"Anna"
```

é uma `String`.

---

# 4. Listas

## Em Python

```python
numeros = [1, 2, 3, 4]
nomes = ["Ana", "João", "Maria"]
```

Python permite listas com tipos misturados:

```python
lista = [1, "Ana", True]
```

## Em Haskell

```haskell
numeros = [1, 2, 3, 4]
nomes = ["Ana", "João", "Maria"]
```

Mas em Haskell todos os elementos da lista precisam ter o mesmo tipo.

Funciona:

```haskell
numeros = [1, 2, 3]
```

Não funciona:

```haskell
lista = [1, "Ana", True]
```

## Diferença simples

Lista em Python pode misturar tipos.

Lista em Haskell é homogênea: todos os elementos precisam ser do mesmo tipo.

## Operações comuns

Python:

```python
numeros = [1, 2, 3]

primeiro = numeros[0]
resto = numeros[1:]
dobro = numeros + numeros
```

Haskell:

```haskell
numeros = [1, 2, 3]

primeiro = head numeros
resto = tail numeros
dobro = numeros ++ numeros
```

## Criando sequências

Python:

```python
list(range(1, 6))
```

Haskell:

```haskell
[1..5]
```

Resultado:

```haskell
[1,2,3,4,5]
```

## Adicionando elemento no começo da lista

Em Python:

```python
lista = [2, 3, 4]
novaLista = [1] + lista
```

Em Haskell:

```haskell
lista = [2, 3, 4]
novaLista = 1 : lista
```

Resultado:

```haskell
[1,2,3,4]
```

O operador `:` adiciona um elemento no início de uma lista.

---

# 5. Tuplas

## Em Python

```python
pessoa = ("Ana", 21)
```

## Em Haskell

```haskell
pessoa = ("Ana", 21)
```

A sintaxe é parecida, mas em Haskell o tipo da tupla fica bem definido.

```haskell
pessoa :: (String, Int)
pessoa = ("Ana", 21)
```

Isso significa:

> uma tupla com uma `String` e um `Int`

## Acessando valores

Python:

```python
pessoa = ("Ana", 21)

nome = pessoa[0]
idade = pessoa[1]
```

Haskell:

```haskell
pessoa = ("Ana", 21)

nome = fst pessoa
idade = snd pessoa
```

Para tuplas de dois elementos:

```haskell
fst
```

pega o primeiro elemento.

```haskell
snd
```

pega o segundo elemento.

## Desempacotamento

Python:

```python
nome, idade = ("Ana", 21)
```

Haskell:

```haskell
(nome, idade) = ("Ana", 21)
```

---

# 6. Condicionais: if/else

## Em Python

```python
idade = 18

if idade >= 18:
    resultado = "maior de idade"
else:
    resultado = "menor de idade"
```

## Em Haskell

```haskell
idade = 18

resultado = if idade >= 18
            then "maior de idade"
            else "menor de idade"
```

## Diferença simples

Em Python, `if` é uma estrutura de controle.

Em Haskell, `if` é uma expressão, ou seja, ele gera um valor.

Por isso, em Haskell o `else` é obrigatório.

Errado:

```haskell
resultado = if idade >= 18 then "maior"
```

Certo:

```haskell
resultado = if idade >= 18
            then "maior"
            else "menor"
```

## Exemplo prático

Python:

```python
def par_ou_impar(n):
    if n % 2 == 0:
        return "par"
    else:
        return "ímpar"
```

Haskell:

```haskell
parOuImpar n =
    if mod n 2 == 0
    then "par"
    else "ímpar"
```

---

# 7. Funções

## Em Python

```python
def soma(a, b):
    return a + b
```

## Em Haskell

```haskell
soma a b = a + b
```

## Diferença simples

Em Python, você usa `def` e `return`.

Em Haskell, uma função é escrita como uma fórmula.

```haskell
soma a b = a + b
```

Leia como:

> soma de `a` e `b` é `a + b`

## Chamando funções

Python:

```python
soma(2, 3)
```

Haskell:

```haskell
soma 2 3
```

Em Haskell, chamada de função normalmente não usa parênteses nem vírgulas.

## Exemplo prático

Python:

```python
def quadrado(x):
    return x * x

resultado = quadrado(5)
```

Haskell:

```haskell
quadrado x = x * x

resultado = quadrado 5
```

---

# 8. Tipagem estática e inferência de tipos

## Em Python

```python
x = 10
x = "Ana"
```

Python permite isso porque o tipo é verificado em tempo de execução.

## Em Haskell

```haskell
x = 10
```

Depois de definido, `x` tem um tipo.

O Haskell consegue inferir esse tipo automaticamente.

```haskell
nome = "Ana"
```

Aqui, Haskell entende que `nome` é uma `String`.

## Diferença simples

Python descobre o tipo enquanto o programa roda.

Haskell verifica os tipos antes de executar o programa.

Isso faz Haskell reclamar mais cedo, mas também evita muitos erros.

## Exemplo prático

Python:

```python
def soma(a, b):
    return a + b

soma(2, 3)
soma("Ana", "Maria")
```

Em Python, isso pode funcionar ou dar erro dependendo dos valores.

Em Haskell:

```haskell
soma a b = a + b
```

Haskell entende que `a` e `b` precisam ser números, porque você usou `+`.

---

# 9. Assinaturas de tipo

## Em Python

Python não exige assinatura de tipo, mas pode usar type hints:

```python
def soma(a: int, b: int) -> int:
    return a + b
```

## Em Haskell

```haskell
soma :: Int -> Int -> Int
soma a b = a + b
```

## Diferença simples

Em Haskell, a assinatura de tipo vem antes da função.

```haskell
soma :: Int -> Int -> Int
```

Isso significa:

> `soma` recebe um `Int`, depois outro `Int`, e devolve um `Int`

Leia assim:

```haskell
soma :: Int -> Int -> Int
soma    a      b      resultado
```

## Exemplo prático

```haskell
dobro :: Int -> Int
dobro x = x * 2
```

Significa:

> `dobro` recebe um `Int` e retorna um `Int`

Outro exemplo:

```haskell
ehMaiorDeIdade :: Int -> Bool
ehMaiorDeIdade idade = idade >= 18
```

Significa:

> recebe uma idade inteira e retorna `True` ou `False`

---

# 10. Pattern matching

Pattern matching permite escrever funções separando os casos possíveis.

## Em Python

```python
def fatorial(n):
    if n == 0:
        return 1
    else:
        return n * fatorial(n - 1)
```

## Em Haskell

```haskell
fatorial 0 = 1
fatorial n = n * fatorial (n - 1)
```

## Diferença simples

Em Python, você testa o valor com `if`.

Em Haskell, você pode criar uma definição para cada caso.

```haskell
fatorial 0 = 1
```

Se o argumento for `0`, o resultado é `1`.

```haskell
fatorial n = n * fatorial (n - 1)
```

Para os outros valores, usa essa regra.

## Pattern matching com listas

Python:

```python
def soma_lista(lista):
    if lista == []:
        return 0
    else:
        primeiro = lista[0]
        resto = lista[1:]
        return primeiro + soma_lista(resto)
```

Haskell:

```haskell
somaLista [] = 0
somaLista (x:xs) = x + somaLista xs
```

Aqui:

```haskell
[]
```

representa lista vazia.

```haskell
(x:xs)
```

representa uma lista com primeiro elemento `x` e restante `xs`.

Exemplo:

```haskell
[1,2,3]
```

pode ser vista como:

```haskell
1 : [2,3]
```

Então:

```haskell
x = 1
xs = [2,3]
```

---

# 11. Guards

Guards são uma forma limpa de escrever vários casos condicionais.

## Em Python

```python
def classificar_nota(nota):
    if nota >= 90:
        return "excelente"
    elif nota >= 70:
        return "bom"
    elif nota >= 60:
        return "regular"
    else:
        return "reprovado"
```

## Em Haskell

```haskell
classificarNota nota
    | nota >= 90 = "excelente"
    | nota >= 70 = "bom"
    | nota >= 60 = "regular"
    | otherwise = "reprovado"
```

## Diferença simples

Guards são parecidos com `if`, `elif`, `else`.

Em Haskell:

```haskell
| condição = resultado
```

O `otherwise` funciona como o `else`.

## Exemplo prático

Python:

```python
def sinal(n):
    if n > 0:
        return "positivo"
    elif n < 0:
        return "negativo"
    else:
        return "zero"
```

Haskell:

```haskell
sinal n
    | n > 0 = "positivo"
    | n < 0 = "negativo"
    | otherwise = "zero"
```

---

# 12. Recursão

Recursão é quando uma função chama ela mesma.

Em Python, você pode usar recursão, mas muitas vezes usa `for`.

Em Haskell, recursão é muito comum.

## Em Python

```python
def contar_ate_zero(n):
    if n == 0:
        return [0]
    else:
        return [n] + contar_ate_zero(n - 1)
```

## Em Haskell

```haskell
contarAteZero 0 = [0]
contarAteZero n = n : contarAteZero (n - 1)
```

## Diferença simples

Em Python, você normalmente escreveria:

```python
for i in range(5, -1, -1):
    print(i)
```

Em Haskell, você costuma pensar em uma definição recursiva.

```haskell
contarAteZero 5
```

Resultado:

```haskell
[5,4,3,2,1,0]
```

## Exemplo clássico: fatorial

Python:

```python
def fatorial(n):
    if n == 0:
        return 1
    return n * fatorial(n - 1)
```

Haskell:

```haskell
fatorial 0 = 1
fatorial n = n * fatorial (n - 1)
```

---

# 13. List comprehensions

List comprehension em Haskell é parecida com a de Python.

## Em Python

```python
dobros = [x * 2 for x in range(1, 6)]
```

## Em Haskell

```haskell
dobros = [x * 2 | x <- [1..5]]
```

## Diferença simples

Python:

```python
[expressao for variavel in lista]
```

Haskell:

```haskell
[expressao | variavel <- lista]
```

O símbolo `<-` pode ser lido como “vem de”.

```haskell
x <- [1..5]
```

Significa:

> x vem da lista de 1 até 5

## Com filtro

Python:

```python
pares = [x for x in range(1, 11) if x % 2 == 0]
```

Haskell:

```haskell
pares = [x | x <- [1..10], even x]
```

## Exemplo prático

Python:

```python
quadrados_pares = [x * x for x in range(1, 11) if x % 2 == 0]
```

Haskell:

```haskell
quadradosPares = [x * x | x <- [1..10], even x]
```

Resultado:

```haskell
[4,16,36,64,100]
```

---

# 14. Funções de alta ordem

Função de alta ordem é uma função que recebe outra função como argumento ou retorna uma função.

## Em Python

```python
def aplicar_duas_vezes(funcao, valor):
    return funcao(funcao(valor))

def dobro(x):
    return x * 2

resultado = aplicar_duas_vezes(dobro, 3)
```

## Em Haskell

```haskell
aplicarDuasVezes f x = f (f x)

dobro x = x * 2

resultado = aplicarDuasVezes dobro 3
```

Resultado:

```haskell
12
```

## Diferença simples

Em Python, funções podem ser passadas como valores.

Em Haskell, isso é ainda mais natural, porque a linguagem é funcional.

## Exemplo prático

Python:

```python
def aumentar(x):
    return x + 1

def aplicar(funcao, valor):
    return funcao(valor)

print(aplicar(aumentar, 10))
```

Haskell:

```haskell
aumentar x = x + 1

aplicar funcao valor = funcao valor

resultado = aplicar aumentar 10
```

---

# 15. map, filter e fold

Essas três funções substituem muitos usos de `for`.

---

## 15.1 map

`map` aplica uma função em todos os elementos de uma lista.

## Em Python

```python
numeros = [1, 2, 3, 4]
dobros = list(map(lambda x: x * 2, numeros))
```

Ou:

```python
dobros = [x * 2 for x in numeros]
```

## Em Haskell

```haskell
numeros = [1, 2, 3, 4]
dobros = map (*2) numeros
```

Resultado:

```haskell
[2,4,6,8]
```

## Diferença simples

Python costuma usar list comprehension.

Haskell usa bastante `map`.

---

## 15.2 filter

`filter` seleciona elementos que passam em uma condição.

## Em Python

```python
numeros = [1, 2, 3, 4, 5, 6]
pares = list(filter(lambda x: x % 2 == 0, numeros))
```

Ou:

```python
pares = [x for x in numeros if x % 2 == 0]
```

## Em Haskell

```haskell
numeros = [1, 2, 3, 4, 5, 6]
pares = filter even numeros
```

Resultado:

```haskell
[2,4,6]
```

---

## 15.3 fold

`fold` reduz uma lista a um único valor.

Serve para somar, multiplicar, acumular ou combinar elementos.

## Em Python

```python
from functools import reduce

numeros = [1, 2, 3, 4]
soma = reduce(lambda acc, x: acc + x, numeros, 0)
```

Ou simplesmente:

```python
soma = sum(numeros)
```

## Em Haskell

```haskell
numeros = [1, 2, 3, 4]
soma = foldl (+) 0 numeros
```

Resultado:

```haskell
10
```

## Diferença simples

Em Haskell:

```haskell
foldl (+) 0 [1,2,3,4]
```

pode ser lido como:

> comece com 0 e vá somando os elementos da lista da esquerda para a direita

Passo a passo:

```haskell
(((0 + 1) + 2) + 3) + 4
```

## Exemplo com multiplicação

Python:

```python
produto = 1

for x in [1, 2, 3, 4]:
    produto = produto * x
```

Haskell:

```haskell
produto = foldl (*) 1 [1,2,3,4]
```

Resultado:

```haskell
24
```

---

# 16. Lambdas

Lambda é uma função anônima, ou seja, uma função sem nome.

## Em Python

```python
dobro = lambda x: x * 2
```

## Em Haskell

```haskell
dobro = \x -> x * 2
```

## Diferença simples

Python usa:

```python
lambda x: expressão
```

Haskell usa:

```haskell
\x -> expressão
```

O símbolo `\` lembra a letra grega lambda `λ`.

## Exemplo com map

Python:

```python
numeros = [1, 2, 3]
dobros = list(map(lambda x: x * 2, numeros))
```

Haskell:

```haskell
numeros = [1, 2, 3]
dobros = map (\x -> x * 2) numeros
```

Resultado:

```haskell
[2,4,6]
```

## Lambda com dois parâmetros

Python:

```python
soma = lambda a, b: a + b
```

Haskell:

```haskell
soma = \a b -> a + b
```

---

# 17. Currying e aplicação parcial

Currying é uma ideia muito importante em Haskell.

## Em Python

```python
def soma(a, b):
    return a + b

resultado = soma(2, 3)
```

Em Python, normalmente pensamos que `soma` recebe dois argumentos de uma vez.

## Em Haskell

```haskell
soma a b = a + b
```

A assinatura seria:

```haskell
soma :: Int -> Int -> Int
```

Isso pode ser lido como:

> `soma` recebe um `Int` e retorna uma função que recebe outro `Int` e retorna um `Int`

Ou seja:

```haskell
soma 2 3
```

é interpretado como:

```haskell
(soma 2) 3
```

Primeiro:

```haskell
soma 2
```

gera uma função que soma `2` com algum número.

Depois:

```haskell
(soma 2) 3
```

aplica essa função ao número `3`.

## Aplicação parcial

Aplicação parcial é passar apenas parte dos argumentos.

## Em Python

```python
def soma(a, b):
    return a + b

def soma2(b):
    return soma(2, b)

resultado = soma2(3)
```

## Em Haskell

```haskell
soma a b = a + b

soma2 = soma 2

resultado = soma2 3
```

Resultado:

```haskell
5
```

## Exemplo com map

```haskell
resultado = map (+10) [1,2,3]
```

Resultado:

```haskell
[11,12,13]
```

Aqui:

```haskell
(+10)
```

é uma função parcial.

Ela significa:

> pegue um número e some 10

---

# 18. Operadores

## Operadores aritméticos

|Operação|Python|Haskell|
|---|---|---|
|Soma|`a + b`|`a + b`|
|Subtração|`a - b`|`a - b`|
|Multiplicação|`a * b`|`a * b`|
|Divisão decimal|`a / b`|`a / b`|
|Divisão inteira|`a // b`|`div a b` ou `a` div `b`|
|Resto|`a % b`|`mod a b` ou `a` mod `b`|
|Igualdade|`a == b`|`a == b`|
|Diferente|`a != b`|`a /= b`|

## Atenção ao diferente

Python:

```python
x != y
```

Haskell:

```haskell
x /= y
```

## Funções como operadores

Em Haskell, uma função normal pode ser usada como operador se for colocada entre crases.

```haskell
mod 10 3
```

Também pode ser escrito como:

```haskell
10 `mod` 3
```

Resultado:

```haskell
1
```

## Operadores como funções

Em Haskell, operadores podem ser usados como funções se ficarem entre parênteses.

```haskell
(+) 2 3
```

Resultado:

```haskell
5
```

Exemplo útil:

```haskell
map (*2) [1,2,3]
```

Resultado:

```haskell
[2,4,6]
```

Aqui:

```haskell
(*2)
```

é uma função que multiplica por 2.

## Concatenação de listas

Python:

```python
[1, 2] + [3, 4]
```

Haskell:

```haskell
[1, 2] ++ [3, 4]
```

Resultado:

```haskell
[1,2,3,4]
```

---

# 19. Módulos e imports

## Em Python

```python
import math

resultado = math.sqrt(25)
```

Ou:

```python
from math import sqrt

resultado = sqrt(25)
```

## Em Haskell

```haskell
import Data.List

listaOrdenada = sort [3,1,2]
```

Também é possível importar apenas algumas funções:

```haskell
import Data.List (sort, nub)
```

## Diferença simples

Python usa bibliotecas com `import`.

Haskell também usa `import`, mas os módulos têm nomes como:

```haskell
Data.List
Data.Char
Data.Map
System.IO
```

## Exemplo com `Data.Char`

```haskell
import Data.Char

maiuscula = toUpper 'a'
```

Resultado:

```haskell
'A'
```

## Prelude

Muitas funções básicas de Haskell vêm do módulo `Prelude`.

Ele é importado automaticamente.

Por isso, normalmente você pode usar direto:

```haskell
sum [1,2,3]
length [1,2,3]
map (*2) [1,2,3]
filter even [1,2,3,4]
```

---

# 20. Entrada e saída básica com IO

Essa é uma das maiores diferenças entre Python e Haskell.

## Em Python

```python
nome = input("Digite seu nome: ")
print("Olá, " + nome)
```

Python mistura entrada, processamento e saída de forma direta.

## Em Haskell

```haskell
main :: IO ()
main = do
    putStrLn "Digite seu nome:"
    nome <- getLine
    putStrLn ("Olá, " ++ nome)
```

## Diferença simples

Em Haskell, qualquer coisa que interage com o mundo externo fica dentro de `IO`.

Exemplos de coisas com `IO`:

- Ler teclado
    
- Escrever na tela
    
- Ler arquivo
    
- Escrever arquivo
    
- Acessar rede
    
- Usar valores que dependem do ambiente externo
    

## Entendendo o código

```haskell
main :: IO ()
```

Significa:

> `main` é uma ação de entrada e saída que não retorna um valor útil

```haskell
main = do
```

O `do` permite escrever várias ações de IO em sequência.

```haskell
putStrLn "Digite seu nome:"
```

Mostra uma mensagem na tela.

```haskell
nome <- getLine
```

Lê uma linha digitada pelo usuário.

```haskell
putStrLn ("Olá, " ++ nome)
```

Mostra a mensagem final.

## Exemplo com número

Python:

```python
idade = int(input("Digite sua idade: "))
print(idade + 1)
```

Haskell:

```haskell
main :: IO ()
main = do
    putStrLn "Digite sua idade:"
    texto <- getLine

    let idade = read texto :: Int
    let novaIdade = idade + 1

    putStrLn ("Ano que vem você terá " ++ show novaIdade ++ " anos")
```

Aqui aparecem duas funções importantes:

```haskell
read
```

Converte texto para outro tipo.

```haskell
show
```

Converte valor para texto.

Em Python, seria parecido com:

```python
int("21")
str(21)
```

---

# 21. Diferença entre código puro e código com efeitos colaterais

Essa é talvez a diferença mais importante entre Python e Haskell.

## Em Python

Uma função pode calcular algo e também fazer efeitos colaterais:

```python
def dobrar(x):
    print("Estou dobrando o número")
    return x * 2
```

Essa função faz duas coisas:

- Mostra algo na tela
    
- Retorna um valor
    

## Em Haskell

Uma função pura apenas calcula e retorna um valor.

```haskell
dobrar x = x * 2
```

Ela não imprime, não lê teclado, não altera variável global e não mexe em arquivo.

Se quiser imprimir, precisa usar `IO`:

```haskell
main :: IO ()
main = do
    putStrLn "Estou dobrando o número"
    print (dobrar 5)
```

## Diferença simples

Em Python, efeitos colaterais podem aparecer em qualquer lugar.

Em Haskell, efeitos colaterais ficam separados em ações de `IO`.

## O que é função pura?

Uma função pura é uma função que:

- Com os mesmos argumentos, sempre retorna o mesmo resultado
    
- Não altera nada fora dela
    
- Não imprime na tela
    
- Não lê teclado
    
- Não depende de estado externo escondido
    

Exemplo puro:

```haskell
soma a b = a + b
```

Sempre que você fizer:

```haskell
soma 2 3
```

o resultado será:

```haskell
5
```

## Exemplo comparativo

Python:

```python
contador = 0

def incrementar():
    global contador
    contador += 1
    return contador
```

Essa função depende de estado externo.

Em Haskell, você normalmente escreveria algo mais explícito:

```haskell
incrementar contador = contador + 1
```

Você passa o valor antigo e recebe o novo valor.

---

# 22. `data`: criando seus próprios tipos

Agora entra uma parte muito importante de Haskell: criar tipos próprios usando `data`.

Em Python, quando você quer representar uma coisa do mundo real, normalmente usa:

- Classe
    
- Dicionário
    
- Dataclass
    
- Tupla
    

Em Haskell, você usa muito `data`.

---

## 22.1 Criando um tipo simples

## Em Python

Com classe:

```python
class Pessoa:
    def __init__(self, nome, idade):
        self.nome = nome
        self.idade = idade

pessoa = Pessoa("Ana", 21)
```

Ou com dataclass:

```python
from dataclasses import dataclass

@dataclass
class Pessoa:
    nome: str
    idade: int

pessoa = Pessoa("Ana", 21)
```

## Em Haskell

```haskell
data Pessoa = Pessoa String Int
```

Isso cria um novo tipo chamado `Pessoa`.

Agora você pode criar uma pessoa assim:

```haskell
pessoa = Pessoa "Ana" 21
```

## Diferença simples

Em Python, você cria uma classe com atributos.

Em Haskell, você cria um tipo com um construtor.

```haskell
data Pessoa = Pessoa String Int
```

Leia assim:

> existe um tipo chamado `Pessoa`, e uma pessoa pode ser construída com uma `String` e um `Int`

Nesse caso:

```haskell
Pessoa
```

aparece duas vezes, mas com sentidos diferentes.

```haskell
data Pessoa
```

O primeiro `Pessoa` é o nome do tipo.

```haskell
= Pessoa String Int
```

O segundo `Pessoa` é o construtor, ou seja, a função usada para criar valores desse tipo.

---

## 22.2 Assinatura de tipo com `data`

```haskell
data Pessoa = Pessoa String Int

ana :: Pessoa
ana = Pessoa "Ana" 21
```

Aqui:

```haskell
ana :: Pessoa
```

significa:

> `ana` é um valor do tipo `Pessoa`

---

## 22.3 Exibindo valores com `deriving Show`

Se você fizer:

```haskell
data Pessoa = Pessoa String Int

ana = Pessoa "Ana" 21
```

E tentar mostrar `ana` no terminal, Haskell pode reclamar, porque ele ainda não sabe como transformar `Pessoa` em texto.

Para resolver, usamos:

```haskell
data Pessoa = Pessoa String Int deriving Show
```

Agora Haskell consegue mostrar esse valor.

```haskell
ana = Pessoa "Ana" 21
```

No GHCi, apareceria algo como:

```haskell
Pessoa "Ana" 21
```

## Comparação com Python

Python geralmente já mostra alguma representação do objeto, mas nem sempre bonita.

```python
print(pessoa)
```

Com dataclass, a saída costuma ficar boa:

```python
Pessoa(nome='Ana', idade=21)
```

Em Haskell, você precisa dizer que quer derivar `Show`:

```haskell
deriving Show
```

---

# 23. `data` com alternativas: tipos enumerados

Em Haskell, `data` também serve para criar tipos com várias opções possíveis.

## Em Python

Você poderia usar strings:

```python
status = "Aprovado"
```

Mas isso é perigoso, porque você pode escrever errado:

```python
status = "Aprovadoo"
```

Também poderia usar `Enum`:

```python
from enum import Enum

class Status(Enum):
    APROVADO = 1
    REPROVADO = 2
    RECUPERACAO = 3
```

## Em Haskell

```haskell
data Status = Aprovado | Reprovado | Recuperacao deriving Show
```

Isso significa que um valor do tipo `Status` só pode ser uma dessas opções:

```haskell
Aprovado
Reprovado
Recuperacao
```

## Exemplo prático

```haskell
data Status = Aprovado | Reprovado | Recuperacao deriving Show

situacao :: Double -> Status
situacao nota
    | nota >= 60 = Aprovado
    | nota >= 40 = Recuperacao
    | otherwise = Reprovado
```

## Diferença simples

Em Python, você pode representar categorias com strings ou `Enum`.

Em Haskell, é muito comum criar um tipo próprio com `data`.

Isso evita erros como escrever `"Aprovadoo"` sem querer.

---

# 24. `data` com vários construtores

Um tipo em Haskell pode ter várias formas diferentes.

## Exemplo: Forma geométrica

## Em Python

Você poderia fazer com classes:

```python
class Circulo:
    def __init__(self, raio):
        self.raio = raio

class Retangulo:
    def __init__(self, largura, altura):
        self.largura = largura
        self.altura = altura
```

## Em Haskell

```haskell
data Forma
    = Circulo Double
    | Retangulo Double Double
    deriving Show
```

Isso significa:

> uma `Forma` pode ser um `Circulo` com um `Double`, ou um `Retangulo` com dois `Double`

## Exemplo prático

```haskell
data Forma
    = Circulo Double
    | Retangulo Double Double
    deriving Show

area :: Forma -> Double
area (Circulo raio) = pi * raio * raio
area (Retangulo largura altura) = largura * altura
```

Chamando:

```haskell
area (Circulo 3)
```

Resultado:

```haskell
28.274333882308138
```

Chamando:

```haskell
area (Retangulo 4 5)
```

Resultado:

```haskell
20.0
```

## Diferença simples

Em Python, você geralmente criaria classes diferentes.

Em Haskell, você cria um único tipo com diferentes construtores.

```haskell
data Forma = Circulo Double | Retangulo Double Double
```

Isso é muito útil para representar opções bem definidas.

---

# 25. `data` com pattern matching

Uma das maiores vantagens de `data` é combinar com pattern matching.

## Em Python

```python
def descrever_status(status):
    if status == "Aprovado":
        return "O aluno passou"
    elif status == "Recuperacao":
        return "O aluno está de recuperação"
    else:
        return "O aluno reprovou"
```

## Em Haskell

```haskell
data Status = Aprovado | Reprovado | Recuperacao deriving Show

descreverStatus :: Status -> String
descreverStatus Aprovado = "O aluno passou"
descreverStatus Recuperacao = "O aluno está de recuperação"
descreverStatus Reprovado = "O aluno reprovou"
```

## Diferença simples

Em Python, você testa valores com `if`.

Em Haskell, você cria uma regra para cada formato possível do dado.

Isso deixa o código muito claro.

---

# 26. Records em Haskell

Records são uma forma mais organizada de criar tipos com campos nomeados.

Sem records:

```haskell
data Pessoa = Pessoa String Int deriving Show
```

Isso funciona, mas não fica claro o que cada campo significa.

```haskell
Pessoa "Ana" 21
```

O que é `"Ana"`? O que é `21`?

Com records:

```haskell
data Pessoa = Pessoa
    { nome :: String
    , idade :: Int
    } deriving Show
```

Agora os campos têm nomes.

## Comparação com Python dataclass

Python:

```python
from dataclasses import dataclass

@dataclass
class Pessoa:
    nome: str
    idade: int

pessoa = Pessoa(nome="Ana", idade=21)
```

Haskell:

```haskell
data Pessoa = Pessoa
    { nome :: String
    , idade :: Int
    } deriving Show

pessoa = Pessoa { nome = "Ana", idade = 21 }
```

## Diferença simples

Records em Haskell são parecidos com `dataclass` em Python.

Eles permitem criar dados com campos nomeados.

---

# 27. Acessando campos de records

## Em Python

```python
pessoa.nome
pessoa.idade
```

## Em Haskell

```haskell
nome pessoa
idade pessoa
```

Exemplo:

```haskell
data Pessoa = Pessoa
    { nome :: String
    , idade :: Int
    } deriving Show

ana = Pessoa { nome = "Ana", idade = 21 }

nomeDaAna = nome ana
idadeDaAna = idade ana
```

## Diferença simples

Em Python, você acessa com ponto:

```python
pessoa.nome
```

Em Haskell, o nome do campo vira uma função:

```haskell
nome pessoa
```

Ou seja:

```haskell
nome
```

é uma função que recebe uma `Pessoa` e retorna uma `String`.

A assinatura seria:

```haskell
nome :: Pessoa -> String
```

E:

```haskell
idade :: Pessoa -> Int
```

---

# 28. Atualizando records

Como Haskell é imutável, você não altera um record diretamente.

Você cria uma nova versão dele.

## Em Python

```python
pessoa.idade = 22
```

Aqui você altera o objeto.

## Em Haskell

```haskell
ana = Pessoa { nome = "Ana", idade = 21 }

anaMaisVelha = ana { idade = 22 }
```

## Diferença simples

Em Python, você muda o campo do objeto.

Em Haskell, você cria uma cópia com o campo alterado.

O valor original continua igual.

```haskell
ana
```

continua sendo:

```haskell
Pessoa { nome = "Ana", idade = 21 }
```

E:

```haskell
anaMaisVelha
```

é:

```haskell
Pessoa { nome = "Ana", idade = 22 }
```

---

# 29. Records com funções

## Exemplo em Python

```python
from dataclasses import dataclass

@dataclass
class Pessoa:
    nome: str
    idade: int

def eh_maior_de_idade(pessoa):
    return pessoa.idade >= 18

ana = Pessoa("Ana", 21)

print(eh_maior_de_idade(ana))
```

## Exemplo em Haskell

```haskell
data Pessoa = Pessoa
    { nome :: String
    , idade :: Int
    } deriving Show

ehMaiorDeIdade :: Pessoa -> Bool
ehMaiorDeIdade pessoa = idade pessoa >= 18

ana :: Pessoa
ana = Pessoa { nome = "Ana", idade = 21 }

resultado = ehMaiorDeIdade ana
```

Resultado:

```haskell
True
```

## Usando pattern matching com record

Também dá para escrever assim:

```haskell
ehMaiorDeIdade :: Pessoa -> Bool
ehMaiorDeIdade (Pessoa _ idadePessoa) = idadePessoa >= 18
```

Aqui:

```haskell
_
```

significa:

> esse valor existe, mas eu não vou usar

Nesse caso, ignoramos o nome e usamos só a idade.

---

# 30. Records com guards

Podemos misturar records com guards.

## Python

```python
from dataclasses import dataclass

@dataclass
class Aluno:
    nome: str
    nota: Double

def situacao(aluno):
    if aluno.nota >= 60:
        return "aprovado"
    elif aluno.nota >= 40:
        return "recuperação"
    else:
        return "reprovado"
```

Em Python, o correto seria usar `float`:

```python
from dataclasses import dataclass

@dataclass
class Aluno:
    nome: str
    nota: float

def situacao(aluno):
    if aluno.nota >= 60:
        return "aprovado"
    elif aluno.nota >= 40:
        return "recuperação"
    else:
        return "reprovado"
```

## Haskell

```haskell
data Aluno = Aluno
    { nomeAluno :: String
    , nota :: Double
    } deriving Show

situacao :: Aluno -> String
situacao aluno
    | nota aluno >= 60 = "aprovado"
    | nota aluno >= 40 = "recuperação"
    | otherwise = "reprovado"
```

## Exemplo de uso

```haskell
joao = Aluno { nomeAluno = "João", nota = 75.5 }

resultado = situacao joao
```

Resultado:

```haskell
"aprovado"
```

---

# 31. `data` com `deriving Eq`

Além de `Show`, também podemos usar `Eq`.

`Eq` permite comparar valores com `==` e `/=`.

## Sem `Eq`

```haskell
data Status = Aprovado | Reprovado
```

Se você tentar:

```haskell
Aprovado == Reprovado
```

Haskell pode reclamar, porque você não disse que esse tipo pode ser comparado.

## Com `Eq`

```haskell
data Status = Aprovado | Reprovado deriving (Show, Eq)
```

Agora funciona:

```haskell
Aprovado == Reprovado
```

Resultado:

```haskell
False
```

E:

```haskell
Aprovado == Aprovado
```

Resultado:

```haskell
True
```

## Comparação com Python

Em Python, comparação entre objetos depende de como a classe foi definida.

Com dataclass, a comparação costuma funcionar automaticamente:

```python
from dataclasses import dataclass

@dataclass
class Pessoa:
    nome: str
    idade: int

p1 = Pessoa("Ana", 21)
p2 = Pessoa("Ana", 21)

print(p1 == p2)
```

Resultado:

```python
True
```

Em Haskell, você costuma pedir isso explicitamente:

```haskell
deriving Eq
```

---

# 32. `data` com `Maybe`: representando valor que pode não existir

Em Python, quando algo pode não existir, usamos muito `None`.

## Em Python

```python
def procurar_nome(id):
    if id == 1:
        return "Ana"
    else:
        return None
```

O problema é que `None` pode causar erros se você esquecer de tratar.

## Em Haskell

Haskell usa muito o tipo `Maybe`.

```haskell
data Maybe a = Nothing | Just a
```

Na prática, esse tipo já existe no Haskell.

Ele significa:

- `Nothing`: não tem valor
    
- `Just valor`: tem valor
    

## Exemplo prático

```haskell
procurarNome :: Int -> Maybe String
procurarNome id
    | id == 1 = Just "Ana"
    | otherwise = Nothing
```

## Usando pattern matching

```haskell
mostrarResultado :: Maybe String -> String
mostrarResultado Nothing = "Nome não encontrado"
mostrarResultado (Just nome) = "Nome encontrado: " ++ nome
```

## Comparação direta

|Python|Haskell|
|---|---|
|`None`|`Nothing`|
|Valor existente|`Just valor`|
|Testar com `if valor is None`|Pattern matching com `Nothing` e `Just`|

## Exemplo Python

```python
nome = procurar_nome(2)

if nome is None:
    print("Nome não encontrado")
else:
    print("Nome encontrado: " + nome)
```

## Exemplo Haskell

```haskell
resultado = mostrarResultado (procurarNome 2)
```

Resultado:

```haskell
"Nome não encontrado"
```

---

# 33. Entrada e saída com record

## Python

```python
from dataclasses import dataclass

@dataclass
class Pessoa:
    nome: str
    idade: int

nome = input("Digite seu nome: ")
idade = int(input("Digite sua idade: "))

pessoa = Pessoa(nome, idade)

print(pessoa)
```

## Haskell

```haskell
data Pessoa = Pessoa
    { nome :: String
    , idade :: Int
    } deriving Show

main :: IO ()
main = do
    putStrLn "Digite seu nome:"
    nomeDigitado <- getLine

    putStrLn "Digite sua idade:"
    idadeTexto <- getLine

    let idadeDigitada = read idadeTexto :: Int
    let pessoa = Pessoa { nome = nomeDigitado, idade = idadeDigitada }

    print pessoa
```

## Diferença simples

Em Python, a entrada e a criação do objeto ficam misturadas naturalmente.

Em Haskell, a leitura do teclado fica dentro de `IO`, mas a criação do record continua sendo uma construção pura:

```haskell
Pessoa { nome = nomeDigitado, idade = idadeDigitada }
```

---

# 34. Comparação rápida de sintaxe

|Conceito|Python|Haskell|
|---|---|---|
|Função|`def soma(a, b): return a + b`|`soma a b = a + b`|
|Chamada de função|`soma(2, 3)`|`soma 2 3`|
|Lista|`[1, 2, 3]`|`[1,2,3]`|
|Tupla|`("Ana", 21)`|`("Ana", 21)`|
|String|`"Ana"`|`"Ana"`|
|Char|`"A"`|`'A'`|
|Booleano|`True`, `False`|`True`, `False`|
|Igualdade|`==`|`==`|
|Diferente|`!=`|`/=`|
|Resto|`%`|`mod`|
|Comentário de linha|`# comentário`|`-- comentário`|
|Condicional|`if/elif/else`|`if/then/else` ou guards|
|Lambda|`lambda x: x * 2`|`\x -> x * 2`|
|Classe simples|`class Pessoa`|`data Pessoa = ...`|
|Dataclass|`@dataclass`|`data Pessoa = Pessoa { ... }`|
|Acesso a atributo|`pessoa.nome`|`nome pessoa`|
|Atualizar atributo|`pessoa.idade = 22`|`pessoa { idade = 22 }`|
|Import|`import math`|`import Data.List`|
|Imprimir|`print()`|`print` ou `putStrLn`|
|Ler teclado|`input()`|`getLine` dentro de `IO`|

---

# 35. Mini exemplo completo comparando Python e Haskell

## Problema

Receber uma lista de números, filtrar os pares, dobrar cada par e somar tudo.

## Em Python

```python
numeros = [1, 2, 3, 4, 5, 6]

pares = [x for x in numeros if x % 2 == 0]
dobros = [x * 2 for x in pares]
resultado = sum(dobros)

print(resultado)
```

Resultado:

```text
24
```

## Em Haskell

```haskell
numeros = [1, 2, 3, 4, 5, 6]

pares = filter even numeros
dobros = map (*2) pares
resultado = sum dobros
```

Ou tudo junto:

```haskell
resultado = sum (map (*2) (filter even [1,2,3,4,5,6]))
```

Resultado:

```haskell
24
```

## Diferença simples

Em Python, você costuma pensar:

> primeiro faço uma lista, depois outra, depois somo

Em Haskell, você costuma compor funções:

> filtre, transforme e reduza

---

# 36. Exemplo completo com `data`, `records`, `map` e `filter`

## Problema

Temos uma lista de alunos. Queremos pegar apenas os alunos aprovados.

Um aluno é aprovado se a nota for maior ou igual a 60.

---

## Em Python

```python
from dataclasses import dataclass

@dataclass
class Aluno:
    nome: str
    nota: float

def aprovado(aluno):
    return aluno.nota >= 60

alunos = [
    Aluno("Ana", 85),
    Aluno("João", 45),
    Aluno("Maria", 70)
]

aprovados = list(filter(aprovado, alunos))

print(aprovados)
```

---

## Em Haskell

```haskell
data Aluno = Aluno
    { nomeAluno :: String
    , notaAluno :: Double
    } deriving Show

aprovado :: Aluno -> Bool
aprovado aluno = notaAluno aluno >= 60

alunos :: [Aluno]
alunos =
    [ Aluno { nomeAluno = "Ana", notaAluno = 85 }
    , Aluno { nomeAluno = "João", notaAluno = 45 }
    , Aluno { nomeAluno = "Maria", notaAluno = 70 }
    ]

aprovados :: [Aluno]
aprovados = filter aprovado alunos
```

Resultado:

```haskell
[Aluno {nomeAluno = "Ana", notaAluno = 85.0}, Aluno {nomeAluno = "Maria", notaAluno = 70.0}]
```

## Diferença simples

Em Python:

```python
aluno.nota
```

Em Haskell:

```haskell
notaAluno aluno
```

Em Python, o atributo é acessado com ponto.

Em Haskell, o campo do record vira uma função.

---

# 37. Resumo mental para quem vem do Python

## 1. Variável em Haskell não é caixinha mutável

Python:

```python
x = 10
x = 20
```

Haskell:

```haskell
x = 10
y = 20
```

Pense em Haskell como matemática: se `x = 10`, então `x` é `10`.

---

## 2. Função em Haskell parece fórmula

Python:

```python
def dobro(x):
    return x * 2
```

Haskell:

```haskell
dobro x = x * 2
```

Leia como:

> o dobro de x é x vezes 2

---

## 3. Haskell chama função sem parênteses

Python:

```python
soma(2, 3)
```

Haskell:

```haskell
soma 2 3
```

Parênteses em Haskell são mais usados para agrupar expressões:

```haskell
dobro (soma 2 3)
```

---

## 4. Lista em Haskell só aceita um tipo

Python aceita:

```python
[1, "Ana", True]
```

Haskell não aceita isso como lista comum.

Em Haskell, uma lista precisa ser homogênea:

```haskell
[1, 2, 3]
["Ana", "Maria"]
[True, False]
```

---

## 5. `if` em Haskell sempre precisa de `else`

Python:

```python
if x > 0:
    print("positivo")
```

Haskell:

```haskell
resultado = if x > 0 then "positivo" else "não positivo"
```

Porque `if` em Haskell precisa gerar um valor.

---

## 6. `guards` são o `elif` bonito do Haskell

Python:

```python
if nota >= 90:
    ...
elif nota >= 70:
    ...
else:
    ...
```

Haskell:

```haskell
classificar nota
    | nota >= 90 = "excelente"
    | nota >= 70 = "bom"
    | otherwise = "reprovado"
```

---

## 7. Pattern matching substitui muitos `if`

Python:

```python
if lista == []:
    return 0
else:
    ...
```

Haskell:

```haskell
somaLista [] = 0
somaLista (x:xs) = x + somaLista xs
```

Pense assim:

> em vez de perguntar qual é o formato desse dado, Haskell deixa você escrever uma regra para cada formato

---

## 8. `map`, `filter` e `fold` substituem muitos `for`

Python:

```python
resultado = []

for x in lista:
    resultado.append(x * 2)
```

Haskell:

```haskell
resultado = map (*2) lista
```

Python:

```python
pares = [x for x in lista if x % 2 == 0]
```

Haskell:

```haskell
pares = filter even lista
```

Python:

```python
soma = sum(lista)
```

Haskell:

```haskell
soma = foldl (+) 0 lista
```

Ou simplesmente:

```haskell
soma = sum lista
```

---

## 9. Lambda muda só a sintaxe

Python:

```python
lambda x: x * 2
```

Haskell:

```haskell
\x -> x * 2
```

Mesma ideia: função sem nome.

---

## 10. Classe simples em Python lembra `data` em Haskell

Python:

```python
class Pessoa:
    def __init__(self, nome, idade):
        self.nome = nome
        self.idade = idade
```

Haskell:

```haskell
data Pessoa = Pessoa String Int
```

A diferença é que Haskell não está criando uma classe com métodos, e sim um novo tipo de dado.

---

## 11. Dataclass em Python lembra record em Haskell

Python:

```python
from dataclasses import dataclass

@dataclass
class Pessoa:
    nome: str
    idade: int
```

Haskell:

```haskell
data Pessoa = Pessoa
    { nome :: String
    , idade :: Int
    } deriving Show
```

Pense em records como dados com campos nomeados.

---

## 12. Atributo em Python vira função em Haskell

Python:

```python
pessoa.nome
```

Haskell:

```haskell
nome pessoa
```

Em Haskell, o campo `nome` vira uma função que recebe uma `Pessoa`.

---

## 13. Atualizar objeto em Python vira criar cópia em Haskell

Python:

```python
pessoa.idade = 22
```

Haskell:

```haskell
novaPessoa = pessoa { idade = 22 }
```

Em Haskell, o valor antigo não muda.

---

## 14. `None` em Python lembra `Maybe` em Haskell

Python:

```python
None
```

Haskell:

```haskell
Nothing
```

Python com valor:

```python
"Ana"
```

Haskell com valor opcional:

```haskell
Just "Ana"
```

---

## 15. Haskell separa cálculo puro de entrada e saída

Python:

```python
nome = input("Nome: ")
print(nome)
```

Haskell:

```haskell
main :: IO ()
main = do
    nome <- getLine
    putStrLn nome
```

Pense assim:

> em Haskell, calcular é uma coisa; conversar com o mundo externo é outra

---

# 38. Mapa final de equivalências

|Em Python você pensa...|Em Haskell pense...|
|---|---|
|“Vou mudar o valor dessa variável”|“Vou criar um novo valor a partir do antigo”|
|“Vou fazer um loop”|“Vou usar recursão, `map`, `filter` ou `fold`”|
|“Vou retornar com `return`”|“A expressão da função já é o retorno”|
|“Vou usar `if/elif/else`”|“Posso usar `if/then/else` ou guards”|
|“Vou acessar o primeiro item da lista”|“Posso usar pattern matching com `(x:xs)`”|
|“Vou passar uma função como argumento”|“Isso é natural: função é valor”|
|“Vou criar uma classe simples”|“Talvez eu precise de `data`”|
|“Vou criar uma dataclass”|“Provavelmente vou usar record syntax”|
|“Vou alterar um atributo”|“Vou criar uma cópia atualizada do record”|
|“Vou retornar `None`”|“Vou retornar `Nothing` ou `Just valor`”|
|“Vou imprimir dentro da função”|“Isso precisa estar em `IO`”|
|“Uma lista pode ter coisas diferentes”|“Lista em Haskell tem um único tipo de elemento”|
|“Erro de tipo aparece rodando”|“Erro de tipo aparece antes de rodar”|
|“Função recebe vários argumentos”|“Função recebe um argumento por vez, por currying”|

---

# 39. Exemplo final juntando vários conceitos

## Python

```python
from dataclasses import dataclass

@dataclass
class Aluno:
    nome: str
    nota: float

def classificar_aluno(aluno):
    if aluno.nota >= 60:
        return aluno.nome + " foi aprovado"
    elif aluno.nota >= 40:
        return aluno.nome + " ficou de recuperação"
    else:
        return aluno.nome + " foi reprovado"

alunos = [
    Aluno("Ana", 85),
    Aluno("João", 45),
    Aluno("Maria", 30)
]

resultados = list(map(classificar_aluno, alunos))

for resultado in resultados:
    print(resultado)
```

---

## Haskell

```haskell
data Aluno = Aluno
    { nomeAluno :: String
    , notaAluno :: Double
    } deriving Show

classificarAluno :: Aluno -> String
classificarAluno aluno
    | notaAluno aluno >= 60 = nomeAluno aluno ++ " foi aprovado"
    | notaAluno aluno >= 40 = nomeAluno aluno ++ " ficou de recuperação"
    | otherwise = nomeAluno aluno ++ " foi reprovado"

alunos :: [Aluno]
alunos =
    [ Aluno { nomeAluno = "Ana", notaAluno = 85 }
    , Aluno { nomeAluno = "João", notaAluno = 45 }
    , Aluno { nomeAluno = "Maria", notaAluno = 30 }
    ]

resultados :: [String]
resultados = map classificarAluno alunos

main :: IO ()
main = do
    mapM_ putStrLn resultados
```

## O que esse exemplo usa?

- `data`
    
- Records
    
- Lista
    
- Função pura
    
- Guards
    
- `map`
    
- `IO`
    
- `putStrLn`
    
- Tipagem estática
    
- Imutabilidade
    

Esse é um jeito bem típico de pensar em Haskell:

> criar tipos bem definidos, escrever funções puras pequenas e depois combinar essas funções para formar o programa.

## Relatório de Satisfação e Aprendizado
Utilizei o chatgpt para fazer uma explicação sobre a sintaxe de Haskell comparando ao Python, me deu um rumo muito bom e me auxílio a entender melhor a linguagem e realizar a atividade
