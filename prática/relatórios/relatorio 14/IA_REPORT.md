Nome: Anna Beatriz da Silva Bittencourt
Matricula: 753
## Prompt
```Você é um professor especialista em Prolog e Python. Crie uma aula-resumo completa, clara e didática sobre a sintaxe e a lógica de programação em Prolog, usando Python como linguagem de comparação principal.

Use Prolog padrão como base conceitual e SWI-Prolog como referência prática, mas explique quando algum conceito for comum a outros dialetos de Prolog.

Objetivo:
Ensinar Prolog para alguém que já sabe Python, mostrando como conceitos familiares em Python aparecem em Prolog e destacando as diferenças principais entre programação imperativa, usada em Python, e programação lógica, usada em Prolog.

Formato da resposta:

1. Comece com uma visão geral curta explicando as principais diferenças entre Python e Prolog.
2. Explique que Python normalmente diz “como fazer”, enquanto Prolog descreve “o que é verdadeiro” e deixa o interpretador buscar soluções.
3. Organize a explicação por tópicos de sintaxe.
4. Para cada tópico, mostre:

   * Como seria pensado ou feito em Python
   * Como é feito em Prolog
   * Uma explicação simples da diferença
   * Um exemplo prático

Tópicos obrigatórios:

* Diferença entre programação imperativa e programação lógica
* Fatos em Prolog
* Regras em Prolog
* Consultas/queries
* Predicados
* Átomos, números, strings e variáveis
* Diferença entre variáveis em Python e variáveis em Prolog
* Convenção de nomes: variáveis com letra maiúscula e átomos com letra minúscula
* Termos e estruturas compostas
* Estruturas semelhantes a tuplas em Python
* Listas em Prolog
* Cabeça e cauda de listas: `[Head|Tail]`
* Diferença entre listas em Python e listas em Prolog
* Unificação
* Diferença entre atribuição em Python e unificação em Prolog
* Backtracking
* Como Prolog encontra múltiplas respostas
* Recursão em Prolog
* Caso base e caso recursivo
* Condicionais em Prolog
* Uso de `;` como “ou”
* Uso de `,` como “e”
* Uso de `->` para if-then
* Negação em Prolog
* Negação por falha
* Operadores aritméticos
* Diferença entre `=`, `is`, `=:=`, `\=`, `=\=`
* Comparações numéricas
* Manipulação de listas
* Predicados importantes: `member`, `append`, `length`, `reverse`
* Predicados de alta ordem
* `maplist`, `include`, `exclude` e `foldl`
* Diferença entre funções em Python e predicados em Prolog
* Como representar retorno em Prolog usando argumentos
* Entrada e saída básica
* Leitura com `read`
* Escrita com `write`, `writeln` e `format`
* Módulos e imports em Prolog
* Uso de bibliotecas em SWI-Prolog
* Código puro em Prolog
* Código com efeitos colaterais
* Diferença entre resolver relações e executar comandos
* Erros comuns de quem vem do Python
* Como pensar em Prolog sem tentar escrever Python dentro dele

Estilo:

* Use linguagem simples, como se fosse uma aula para iniciantes.
* Explique Prolog sempre comparando com Python.
* Evite explicações excessivamente teóricas no começo.
* Use tabelas quando ajudar na comparação.
* Mostre exemplos pequenos e fáceis de entender.
* Explique de forma intuitiva a ideia de fatos, regras, consultas e backtracking.
* Sempre que possível, mostre como Prolog “procura respostas” em vez de apenas executar linhas em ordem.
* Ao final, crie uma seção chamada “Resumo mental para quem vem do Python”, com analogias diretas entre Python e Prolog.

Exemplo do tipo de comparação desejada:

Em Python:

def pai(x, y):
    return (x, y) in [("joao", "maria"), ("joao", "pedro")]

Em Prolog:

pai(joao, maria).
pai(joao, pedro).


Consulta em Prolog:

prolog
pai(joao, Quem).

Explique que, em Python, normalmente criamos uma função que retorna algo, enquanto em Prolog declaramos fatos verdadeiros e fazemos perguntas ao sistema. No exemplo, Prolog tenta descobrir quem satisfaz a relação `pai(joao, Quem)`.

A resposta deve ser organizada, progressiva e prática, como uma mini-aula completa para quem está começando em Prolog vindo de Python.
```
## Resposta
# Aula-resumo de Prolog para quem já sabe Python

## 1. Visão geral: Python x Prolog

Python e Prolog pensam de formas muito diferentes.

|Python|Prolog|
|---|---|
|Linguagem principalmente **imperativa**|Linguagem **lógica/declarativa**|
|Você diz **como fazer** passo a passo|Você descreve **o que é verdadeiro**|
|Usa funções, variáveis, loops, comandos|Usa fatos, regras, consultas e relações|
|Normalmente retorna valores|Procura soluções que satisfaçam uma relação|
|Variável recebe valor com `=`|Variável é preenchida por **unificação**|
|Controle explícito com `if`, `for`, `while`|Busca automática com **backtracking**|

A ideia principal é:

> Em Python, você programa uma sequência de instruções.  
> Em Prolog, você declara verdades e pergunta o que pode ser concluído a partir delas.

Exemplo:

Em Python:

```python
def pai(x, y):
    return (x, y) in [("joao", "maria"), ("joao", "pedro")]
```

Em Prolog:

```prolog
pai(joao, maria).
pai(joao, pedro).
```

Consulta:

```prolog
?- pai(joao, Quem).
```

Resposta:

```prolog
Quem = maria ;
Quem = pedro.
```

O Prolog procura todos os valores de `Quem` que tornam a frase `pai(joao, Quem)` verdadeira.

---

# 2. Programação imperativa x programação lógica

## Como pensar em Python

Em Python, você normalmente pensa assim:

> “Quais passos preciso executar para chegar ao resultado?”

Exemplo:

```python
pessoas = ["ana", "bruno", "carla"]

for pessoa in pessoas:
    if pessoa == "ana":
        print("encontrei")
```

Você controla o fluxo: lista, laço, condição, impressão.

## Como pensar em Prolog

Em Prolog, você pensa assim:

> “Quais relações são verdadeiras?”

```prolog
pessoa(ana).
pessoa(bruno).
pessoa(carla).
```

Consulta:

```prolog
?- pessoa(ana).
```

Resposta:

```prolog
true.
```

Consulta:

```prolog
?- pessoa(Quem).
```

Resposta:

```prolog
Quem = ana ;
Quem = bruno ;
Quem = carla.
```

## Diferença simples

Python executa comandos.

Prolog tenta provar uma afirmação.

---

# 3. Fatos em Prolog

Fato é uma afirmação considerada verdadeira.

## Em Python

Você poderia guardar informações assim:

```python
pais = [
    ("joao", "maria"),
    ("joao", "pedro"),
    ("ana", "carlos")
]
```

## Em Prolog

Você escreve fatos:

```prolog
pai(joao, maria).
pai(joao, pedro).
pai(ana, carlos).
```

Cada linha significa:

```text
joao é pai de maria.
joao é pai de pedro.
ana é mãe/pai de carlos, dependendo do significado escolhido.
```

## Diferença

Em Python, isso é uma estrutura de dados.

Em Prolog, isso é uma base de conhecimento.

## Exemplo prático

```prolog
gosta(ana, chocolate).
gosta(joao, pizza).
gosta(maria, chocolate).
```

Consulta:

```prolog
?- gosta(Quem, chocolate).
```

Resposta:

```prolog
Quem = ana ;
Quem = maria.
```

---

# 4. Regras em Prolog

Regra é uma verdade que depende de outras verdades.

## Em Python

```python
def avo(x, z):
    for y in pessoas:
        if pai(x, y) and pai(y, z):
            return True
    return False
```

## Em Prolog

```prolog
avo(X, Z) :-
    pai(X, Y),
    pai(Y, Z).
```

Lê-se:

> X é avô de Z se X é pai de Y e Y é pai de Z.

## Diferença

Python precisa de laços e testes.

Prolog procura automaticamente quem pode ser `Y`.

## Exemplo prático

```prolog
pai(joao, pedro).
pai(pedro, lucas).

avo(joao, lucas) :-
    pai(joao, pedro),
    pai(pedro, lucas).
```

Forma mais geral:

```prolog
avo(X, Z) :-
    pai(X, Y),
    pai(Y, Z).
```

Consulta:

```prolog
?- avo(joao, lucas).
```

Resposta:

```prolog
true.
```

Consulta:

```prolog
?- avo(Quem, lucas).
```

Resposta:

```prolog
Quem = joao.
```

---

# 5. Consultas/queries

Consulta é uma pergunta feita ao Prolog.

## Em Python

Você chama uma função:

```python
pai("joao", "maria")
```

## Em Prolog

Você faz uma query:

```prolog
?- pai(joao, maria).
```

Ou pergunta com variável:

```prolog
?- pai(joao, Quem).
```

## Diferença

Em Python, a função retorna algo.

Em Prolog, o sistema tenta provar a consulta.

## Exemplo

Base:

```prolog
aluno(ana).
aluno(bruno).
aluno(carla).
```

Consulta:

```prolog
?- aluno(X).
```

Respostas:

```prolog
X = ana ;
X = bruno ;
X = carla.
```

O `;` no terminal pede ao Prolog: “procure outra resposta”.

---

# 6. Predicados

Predicado é uma relação.

```prolog
pai(joao, maria).
```

Aqui, `pai/2` é um predicado com 2 argumentos.

A notação comum é:

```prolog
nome/aridade
```

Exemplos:

```prolog
aluno(ana).              % aluno/1
gosta(ana, chocolate).   % gosta/2
nota(ana, matematica, 9). % nota/3
```

## Comparação com Python

|Python|Prolog|
|---|---|
|Função|Predicado|
|`def soma(a, b):`|`soma(A, B, Resultado)`|
|Retorna valor|Relaciona argumentos|
|Executa comandos|Tenta provar relações|

---

# 7. Átomos, números, strings e variáveis

## Átomos

Átomos são nomes simbólicos.

```prolog
ana.
joao.
chocolate.
programacao_logica.
```

Normalmente começam com letra minúscula.

```prolog
aluno(ana).
```

Aqui, `ana` é átomo.

## Números

```prolog
idade(ana, 20).
nota(joao, 8.5).
```

## Strings

Em SWI-Prolog, strings podem ser escritas com aspas duplas:

```prolog
nome("Ana").
```

Átomos geralmente usam letras minúsculas sem aspas:

```prolog
nome(ana).
```

Átomos com espaço precisam de aspas simples:

```prolog
cidade('Santa Rita do Sapucai').
```

## Variáveis

Variáveis começam com letra maiúscula ou `_`.

```prolog
X
Nome
Pessoa
Resultado
_qualquer
```

Variável anônima:

```prolog
_
```

Ela significa: “existe algo aqui, mas eu não quero saber o valor”.

Exemplo:

```prolog
?- pai(joao, _).
```

Pergunta:

> João é pai de alguém?

---

# 8. Convenção de nomes

|Elemento|Prolog|Exemplo|
|---|---|---|
|Átomo|começa com minúscula|`ana`, `joao`, `azul`|
|Variável|começa com maiúscula|`X`, `Pessoa`, `Nota`|
|Variável anônima|`_`|`_`|
|Predicado|geralmente minúsculo|`pai/2`, `aluno/1`|

Cuidado:

```prolog
ana
```

é átomo.

```prolog
Ana
```

é variável.

Isso é um erro comum para quem vem do Python.

---

# 9. Diferença entre variáveis em Python e em Prolog

## Em Python

Variável é uma caixinha que recebe valor:

```python
x = 10
x = 20
```

A variável `x` primeiro vale 10, depois passa a valer 20.

## Em Prolog

Variável é uma incógnita lógica.

```prolog
X = 10.
```

Isso significa:

> X pode ser unificado com 10.

Depois disso, dentro daquela consulta, `X` fica ligado a 10.

Você não “reatribui” como em Python.

Consulta:

```prolog
?- X = 10, X = 20.
```

Resposta:

```prolog
false.
```

Porque `X` não pode ser 10 e 20 ao mesmo tempo.

## Ideia mental

Python:

```text
x recebe 10
```

Prolog:

```text
X deve ser algo que torne a relação verdadeira
```

---

# 10. Termos e estruturas compostas

Em Prolog, quase tudo é termo.

Tipos comuns de termos:

```prolog
ana                  % átomo
10                   % número
X                    % variável
pessoa(ana, 20)      % estrutura composta
[1, 2, 3]            % lista
```

## Estrutura composta

```prolog
pessoa(ana, 20).
```

Isso parece uma chamada de função, mas não é exatamente uma função.

É um termo com:

```text
functor: pessoa
argumentos: ana, 20
aridade: 2
```

Ou seja:

```prolog
pessoa/2
```

## Comparação com Python

Em Python, você poderia usar uma tupla:

```python
pessoa = ("ana", 20)
```

Ou um objeto:

```python
pessoa = {"nome": "ana", "idade": 20}
```

Em Prolog:

```prolog
pessoa(ana, 20).
```

---

# 11. Estruturas semelhantes a tuplas em Python

## Em Python

```python
ponto = (3, 4)
```

## Em Prolog

```prolog
ponto(3, 4)
```

Exemplo:

```prolog
distancia_origem(ponto(X, Y), D) :-
    D is sqrt(X*X + Y*Y).
```

Consulta:

```prolog
?- distancia_origem(ponto(3, 4), D).
```

Resposta:

```prolog
D = 5.0.
```

## Diferença

Python usa tupla para armazenar valores.

Prolog usa termos estruturados para representar relações e dados.

---

# 12. Listas em Prolog

## Em Python

```python
numeros = [1, 2, 3, 4]
```

## Em Prolog

```prolog
[1, 2, 3, 4]
```

Visualmente parece igual, mas o funcionamento lógico é diferente.

Exemplo de fato:

```prolog
notas(ana, [8, 9, 10]).
```

Consulta:

```prolog
?- notas(ana, Lista).
```

Resposta:

```prolog
Lista = [8, 9, 10].
```

---

# 13. Cabeça e cauda de listas: `[Head|Tail]`

Em Prolog, uma lista pode ser separada em:

```prolog
[Head|Tail]
```

Exemplo:

```prolog
[1, 2, 3]
```

Pode ser vista como:

```prolog
Head = 1
Tail = [2, 3]
```

Consulta:

```prolog
?- [H|T] = [1, 2, 3].
```

Resposta:

```prolog
H = 1,
T = [2, 3].
```

Outro exemplo:

```prolog
?- [Primeiro, Segundo|Resto] = [a, b, c, d].
```

Resposta:

```prolog
Primeiro = a,
Segundo = b,
Resto = [c, d].
```

## Comparação com Python

Em Python:

```python
lista = [1, 2, 3]
head = lista[0]
tail = lista[1:]
```

Em Prolog:

```prolog
[Head|Tail] = [1, 2, 3].
```

---

# 14. Diferença entre listas em Python e listas em Prolog

|Python|Prolog|
|---|---|
|Lista é estrutura mutável|Lista é estrutura lógica|
|Usa índice: `lista[0]`|Usa unificação: `[H|
|Pode alterar: `append`, `pop`|Normalmente cria novas relações|
|Usa laços para percorrer|Usa recursão e backtracking|
|`[1,2,3]` é objeto em memória|`[1,2,3]` é termo lógico|

Exemplo em Python:

```python
def primeiro(lista):
    return lista[0]
```

Em Prolog:

```prolog
primeiro([H|_], H).
```

Consulta:

```prolog
?- primeiro([10, 20, 30], X).
```

Resposta:

```prolog
X = 10.
```

---

# 15. Unificação

Unificação é uma das ideias mais importantes do Prolog.

Ela tenta fazer dois termos ficarem iguais.

## Em Python

```python
x = 10
```

Isso é atribuição.

## Em Prolog

```prolog
X = 10.
```

Isso é unificação.

O Prolog tenta tornar `X` igual a `10`.

Exemplos:

```prolog
?- X = ana.
X = ana.
```

```prolog
?- pessoa(Nome, Idade) = pessoa(ana, 20).
Nome = ana,
Idade = 20.
```

```prolog
?- [H|T] = [1, 2, 3].
H = 1,
T = [2, 3].
```

## Quando falha

```prolog
?- pessoa(ana, 20) = pessoa(joao, 20).
false.
```

Porque `ana` não é igual a `joao`.

---

# 16. Diferença entre atribuição e unificação

|Python|Prolog|
|---|---|
|`x = 10` atribui valor|`X = 10` unifica|
|Variável pode mudar|Variável não muda dentro da mesma prova|
|`=` executa armazenamento|`=` tenta tornar dois termos iguais|
|Direção importa menos?|Direção quase não importa|

Em Prolog:

```prolog
?- X = 10.
X = 10.
```

Também funciona:

```prolog
?- 10 = X.
X = 10.
```

Em Python, isso seria inválido:

```python
10 = x  # erro
```

---

# 17. Backtracking

Backtracking é o mecanismo que o Prolog usa para procurar múltiplas respostas.

## Em Python

Você teria que programar a busca:

```python
pais = [("joao", "maria"), ("joao", "pedro")]

for x, y in pais:
    if x == "joao":
        print(y)
```

## Em Prolog

Você apenas declara:

```prolog
pai(joao, maria).
pai(joao, pedro).
pai(ana, carlos).
```

Consulta:

```prolog
?- pai(joao, Filho).
```

Resposta:

```prolog
Filho = maria ;
Filho = pedro.
```

## O que aconteceu?

O Prolog tentou:

```prolog
pai(joao, maria).
```

Deu certo.

Depois, se você pede mais respostas com `;`, ele volta e tenta outra possibilidade:

```prolog
pai(joao, pedro).
```

Deu certo também.

Esse “voltar e tentar outro caminho” é o backtracking.

---

# 18. Como Prolog encontra múltiplas respostas

Base:

```prolog
cor(vermelho).
cor(azul).
cor(verde).
```

Consulta:

```prolog
?- cor(X).
```

Prolog testa cada fato:

```prolog
X = vermelho ;
X = azul ;
X = verde.
```

Agora com regra:

```prolog
gosta(ana, chocolate).
gosta(ana, pizza).
gosta(bruno, pizza).

comida_popular(Comida) :-
    gosta(_, Comida).
```

Consulta:

```prolog
?- comida_popular(X).
```

Resposta:

```prolog
X = chocolate ;
X = pizza ;
X = pizza.
```

Pode aparecer repetido porque há mais de uma forma de provar.

Em SWI-Prolog, para remover repetidos, você pode usar:

```prolog
?- setof(X, comida_popular(X), Lista).
```

Resposta:

```prolog
Lista = [chocolate, pizza].
```

---

# 19. Recursão em Prolog

Prolog usa muita recursão porque não se pensa normalmente em `for` e `while`.

## Em Python

```python
def tamanho(lista):
    if lista == []:
        return 0
    return 1 + tamanho(lista[1:])
```

## Em Prolog

```prolog
tamanho([], 0).

tamanho([_|Cauda], N) :-
    tamanho(Cauda, N1),
    N is N1 + 1.
```

Consulta:

```prolog
?- tamanho([a, b, c], N).
```

Resposta:

```prolog
N = 3.
```

## Diferença

Python retorna o tamanho.

Prolog relaciona uma lista ao seu tamanho.

```prolog
tamanho(Lista, Tamanho)
```

---

# 20. Caso base e caso recursivo

Todo predicado recursivo normalmente tem:

1. Caso base.
    
2. Caso recursivo.
    

Exemplo: somar elementos de uma lista.

```prolog
soma_lista([], 0).

soma_lista([H|T], Soma) :-
    soma_lista(T, SomaT),
    Soma is H + SomaT.
```

## Explicação

Caso base:

```prolog
soma_lista([], 0).
```

A soma da lista vazia é 0.

Caso recursivo:

```prolog
soma_lista([H|T], Soma) :-
    soma_lista(T, SomaT),
    Soma is H + SomaT.
```

A soma da lista é:

```text
cabeça + soma da cauda
```

Consulta:

```prolog
?- soma_lista([1, 2, 3], S).
```

Resposta:

```prolog
S = 6.
```

---

# 21. Condicionais em Prolog

Prolog tem algumas formas de representar condição.

## Forma lógica mais comum

Em vez de escrever `if`, você escreve regras separadas.

Python:

```python
def aprovado(nota):
    return nota >= 6
```

Prolog:

```prolog
aprovado(Nota) :-
    Nota >= 6.
```

Consulta:

```prolog
?- aprovado(7).
true.
```

Consulta:

```prolog
?- aprovado(4).
false.
```

---

# 22. Uso de `,` como “e”

Em Prolog, a vírgula significa **e lógico**.

```prolog
adulto_estudante(Pessoa) :-
    idade(Pessoa, Idade),
    Idade >= 18,
    estudante(Pessoa).
```

Lê-se:

> Pessoa é adulto estudante se Pessoa tem Idade, Idade é maior ou igual a 18 e Pessoa é estudante.

Exemplo:

```prolog
idade(ana, 20).
idade(bruno, 16).

estudante(ana).
estudante(bruno).

adulto_estudante(Pessoa) :-
    idade(Pessoa, Idade),
    Idade >= 18,
    estudante(Pessoa).
```

Consulta:

```prolog
?- adulto_estudante(X).
```

Resposta:

```prolog
X = ana.
```

---

# 23. Uso de `;` como “ou”

Em Prolog, `;` significa **ou lógico**.

Exemplo:

```prolog
fim_de_semana(Dia) :-
    Dia = sabado ;
    Dia = domingo.
```

Consulta:

```prolog
?- fim_de_semana(sabado).
true.
```

Consulta:

```prolog
?- fim_de_semana(segunda).
false.
```

Forma mais comum e mais limpa:

```prolog
fim_de_semana(sabado).
fim_de_semana(domingo).
```

Essa forma é mais “estilo Prolog”.

---

# 24. Uso de `->` para if-then

Prolog também permite `if-then-else`:

```prolog
( Condicao -> Entao ; Senao )
```

Exemplo:

```prolog
situacao(Nota, Resultado) :-
    ( Nota >= 6 ->
        Resultado = aprovado
    ;
        Resultado = reprovado
    ).
```

Consulta:

```prolog
?- situacao(8, R).
```

Resposta:

```prolog
R = aprovado.
```

Consulta:

```prolog
?- situacao(4, R).
```

Resposta:

```prolog
R = reprovado.
```

## Comparação com Python

Python:

```python
if nota >= 6:
    resultado = "aprovado"
else:
    resultado = "reprovado"
```

Prolog:

```prolog
( Nota >= 6 -> Resultado = aprovado ; Resultado = reprovado )
```

---

# 25. Negação em Prolog

A negação em Prolog normalmente é escrita com:

```prolog
\+
```

Exemplo:

```prolog
nao_gosta_de_chocolate(Pessoa) :-
    \+ gosta(Pessoa, chocolate).
```

Consulta:

```prolog
?- nao_gosta_de_chocolate(joao).
```

O Prolog tenta provar:

```prolog
gosta(joao, chocolate)
```

Se não conseguir provar, então considera `\+ gosta(joao, chocolate)` verdadeiro.

---

# 26. Negação por falha

Essa é uma diferença importante.

Em Prolog, `\+ objetivo` significa:

> “não consigo provar esse objetivo”.

Não significa necessariamente:

> “isso é absolutamente falso no mundo real”.

Exemplo:

```prolog
gosta(ana, pizza).
```

Consulta:

```prolog
?- \+ gosta(ana, chocolate).
```

Resposta:

```prolog
true.
```

Mas isso não quer dizer que Ana odeia chocolate. Significa apenas que o Prolog não tem informação dizendo que Ana gosta de chocolate.

## Comparação com Python

Em Python:

```python
not condicao
```

nega um valor booleano.

Em Prolog:

```prolog
\+ objetivo
```

falha se o objetivo puder ser provado, e dá certo se o objetivo falhar.

---

# 27. Operadores aritméticos

Aqui Prolog é bem diferente de Python.

## Em Python

```python
x = 2 + 3
```

`x` recebe 5.

## Em Prolog

```prolog
X is 2 + 3.
```

`is` avalia a expressão aritmética do lado direito.

Consulta:

```prolog
?- X is 2 + 3.
```

Resposta:

```prolog
X = 5.
```

Mas:

```prolog
?- X = 2 + 3.
```

Resposta:

```prolog
X = 2+3.
```

Aqui ele não calcula. Apenas unifica `X` com o termo `2+3`.

---

# 28. Diferença entre `=`, `is`, `=:=`, `\=`, `=\=`

|Operador|Significado|Exemplo|
|---|---|---|
|`=`|unificação|`X = 3`|
|`is`|avalia expressão aritmética|`X is 1+2`|
|`=:=`|igualdade numérica|`1+2 =:= 3`|
|`=\=`|diferença numérica|`1+2 =\= 4`|
|`\=`|não unificável|`ana \= joao`|

## `=`

```prolog
?- X = 3.
X = 3.
```

```prolog
?- X = 1 + 2.
X = 1+2.
```

Não calcula.

## `is`

```prolog
?- X is 1 + 2.
X = 3.
```

Calcula.

Mas cuidado:

```prolog
?- 3 is X + 1.
```

Isso dá erro se `X` não tiver valor numérico antes.

## `=:=`

Compara valores numéricos avaliados.

```prolog
?- 1 + 2 =:= 3.
true.
```

```prolog
?- 1 + 2 = 3.
false.
```

Porque `1+2` como termo não é igual ao termo `3`.

## `\=`

Testa se dois termos não podem ser unificados.

```prolog
?- ana \= joao.
true.
```

```prolog
?- X \= joao.
false.
```

Por quê? Porque `X` poderia ser unificado com `joao`.

## `=\=`

Compara diferença numérica.

```prolog
?- 2 + 2 =\= 5.
true.
```

```prolog
?- 2 + 2 =\= 4.
false.
```

---

# 29. Comparações numéricas

|Prolog|Significado|
|---|---|
|`>`|maior que|
|`<`|menor que|
|`>=`|maior ou igual|
|`=<`|menor ou igual|
|`=:=`|numericamente igual|
|`=\=`|numericamente diferente|

Atenção: menor ou igual em Prolog é:

```prolog
=<
```

Não é:

```prolog
<=
```

Exemplo:

```prolog
aprovado(Nota) :-
    Nota >= 6.
```

```prolog
crianca(Idade) :-
    Idade =< 12.
```

---

# 30. Manipulação de listas

## `member`

Verifica se um elemento pertence a uma lista.

```prolog
?- member(2, [1, 2, 3]).
true.
```

Com variável:

```prolog
?- member(X, [1, 2, 3]).
X = 1 ;
X = 2 ;
X = 3.
```

Python equivalente:

```python
2 in [1, 2, 3]
```

Mas em Prolog, `member` também gera respostas.

---

## `append`

Concatena listas.

```prolog
?- append([1, 2], [3, 4], X).
X = [1, 2, 3, 4].
```

Mas também pode funcionar ao contrário:

```prolog
?- append(A, B, [1, 2, 3]).
```

Respostas:

```prolog
A = [],
B = [1, 2, 3] ;

A = [1],
B = [2, 3] ;

A = [1, 2],
B = [3] ;

A = [1, 2, 3],
B = [].
```

Isso mostra bem o poder de Prolog: o predicado não apenas concatena; ele descreve uma relação entre três listas.

---

## `length`

Calcula ou verifica o tamanho de uma lista.

```prolog
?- length([a, b, c], N).
N = 3.
```

Também pode gerar uma lista de tamanho conhecido:

```prolog
?- length(L, 3).
L = [_, _, _].
```

---

## `reverse`

Inverte uma lista.

```prolog
?- reverse([1, 2, 3], X).
X = [3, 2, 1].
```

Também pode ser usado para verificar:

```prolog
?- reverse([1, 2, 3], [3, 2, 1]).
true.
```

---

# 31. Predicados de alta ordem

Predicados de alta ordem são parecidos com funções de alta ordem em Python.

Eles recebem outro predicado como argumento.

Em SWI-Prolog, muitos desses predicados estão disponíveis com:

```prolog
:- use_module(library(apply)).
```

---

## `maplist`

Parecido com `map` em Python.

Python:

```python
numeros = [1, 2, 3]
dobrados = list(map(lambda x: x * 2, numeros))
```

Prolog:

```prolog
dobro(X, Y) :-
    Y is X * 2.

?- maplist(dobro, [1, 2, 3], Resultado).
```

Resposta:

```prolog
Resultado = [2, 4, 6].
```

---

## `include`

Filtra elementos que satisfazem um predicado.

Python:

```python
pares = [x for x in [1, 2, 3, 4] if x % 2 == 0]
```

Prolog:

```prolog
par(X) :-
    0 is X mod 2.

?- include(par, [1, 2, 3, 4], Pares).
```

Resposta:

```prolog
Pares = [2, 4].
```

---

## `exclude`

Remove elementos que satisfazem um predicado.

```prolog
?- exclude(par, [1, 2, 3, 4], Impares).
```

Resposta:

```prolog
Impares = [1, 3].
```

---

## `foldl`

Parecido com `reduce` em Python.

Python:

```python
from functools import reduce

soma = reduce(lambda acc, x: acc + x, [1, 2, 3], 0)
```

Prolog:

```prolog
soma_elemento(X, Acc, NovoAcc) :-
    NovoAcc is Acc + X.

?- foldl(soma_elemento, [1, 2, 3], 0, Soma).
```

Resposta:

```prolog
Soma = 6.
```

---

# 32. Diferença entre funções em Python e predicados em Prolog

## Python

```python
def soma(a, b):
    return a + b
```

Chamada:

```python
resultado = soma(2, 3)
```

## Prolog

```prolog
soma(A, B, Resultado) :-
    Resultado is A + B.
```

Consulta:

```prolog
?- soma(2, 3, R).
```

Resposta:

```prolog
R = 5.
```

## Diferença principal

Python:

```text
função recebe entradas e retorna saída
```

Prolog:

```text
predicado relaciona argumentos
```

Por isso, em Prolog é comum colocar o “resultado” como último argumento.

---

# 33. Como representar retorno em Prolog usando argumentos

Em Python:

```python
def area_retangulo(base, altura):
    return base * altura
```

Em Prolog:

```prolog
area_retangulo(Base, Altura, Area) :-
    Area is Base * Altura.
```

Consulta:

```prolog
?- area_retangulo(5, 3, A).
```

Resposta:

```prolog
A = 15.
```

O argumento `A` funciona como o “retorno”.

Mas tecnicamente ele não é retorno; é uma variável que Prolog tenta preencher.

---

# 34. Entrada e saída básica

Prolog pode fazer entrada e saída, mas isso já é uma parte mais “imperativa” da linguagem.

## Leitura com `read`

```prolog
ler_nome :-
    write('Digite um nome: '),
    read(Nome),
    write('Voce digitou: '),
    writeln(Nome).
```

Consulta:

```prolog
?- ler_nome.
```

Se o usuário digitar:

```prolog
ana.
```

Saída:

```text
Voce digitou: ana
```

Atenção: com `read`, normalmente você precisa digitar um termo Prolog terminado com ponto.

---

## Escrita com `write`

```prolog
?- write('Ola').
```

Saída:

```text
Ola
```

## Escrita com `writeln`

```prolog
?- writeln('Ola').
```

Saída:

```text
Ola
```

Com quebra de linha automática.

## Escrita com `format`

Parecido com formatação de string.

```prolog
mostrar_pessoa(Nome, Idade) :-
    format('~w tem ~w anos.~n', [Nome, Idade]).
```

Consulta:

```prolog
?- mostrar_pessoa(ana, 20).
```

Saída:

```text
ana tem 20 anos.
```

Alguns códigos úteis no `format`:

|Código|Significado|
|---|---|
|`~w`|escreve termo|
|`~n`|nova linha|
|`~f`|número float|
|`~d`|inteiro|

---

# 35. Módulos e imports em Prolog

Em Python:

```python
import math
from functools import reduce
```

Em Prolog/SWI-Prolog:

```prolog
:- use_module(library(lists)).
:- use_module(library(apply)).
```

Exemplo:

```prolog
:- use_module(library(lists)).
:- use_module(library(apply)).
```

Muitas funções de lista já são comuns em vários Prologs, mas SWI-Prolog tem bibliotecas práticas e bem completas.

Exemplo usando biblioteca:

```prolog
:- use_module(library(apply)).

dobro(X, Y) :-
    Y is X * 2.

dobrar_lista(Lista, Resultado) :-
    maplist(dobro, Lista, Resultado).
```

Consulta:

```prolog
?- dobrar_lista([1, 2, 3], R).
```

Resposta:

```prolog
R = [2, 4, 6].
```

---

# 36. Código puro em Prolog

Código puro é código que descreve relações sem efeitos colaterais.

Exemplo:

```prolog
maior_de_idade(Idade) :-
    Idade >= 18.
```

Ou:

```prolog
ancestral(X, Y) :-
    pai(X, Y).

ancestral(X, Y) :-
    pai(X, Z),
    ancestral(Z, Y).
```

Esse tipo de código é bem “Prolog raiz”: fatos, regras e relações.

## Vantagem

Pode ser usado em várias direções.

Exemplo:

```prolog
?- ancestral(joao, Quem).
```

Ou:

```prolog
?- ancestral(Quem, lucas).
```

---

# 37. Código com efeitos colaterais

Efeito colateral é quando o programa faz algo além de resolver uma relação, como:

- escrever na tela;
    
- ler entrada;
    
- modificar banco de dados;
    
- abrir arquivo;
    
- gerar saída formatada.
    

Exemplo:

```prolog
cumprimentar(Nome) :-
    write('Ola, '),
    writeln(Nome).
```

Isso não é apenas uma relação lógica. Isso executa uma ação.

## Comparação com Python

Python é muito usado para comandos com efeitos colaterais:

```python
print("Olá")
nome = input("Digite seu nome: ")
```

Prolog também consegue fazer isso, mas o coração da linguagem é resolver relações.

---

# 38. Diferença entre resolver relações e executar comandos

## Em Python

```python
def filhos_de_joao():
    resultado = []
    for pai, filho in dados:
        if pai == "joao":
            resultado.append(filho)
    return resultado
```

Você manda o computador fazer passo por passo.

## Em Prolog

```prolog
pai(joao, maria).
pai(joao, pedro).
pai(ana, carlos).
```

Consulta:

```prolog
?- pai(joao, Filho).
```

O Prolog resolve a relação:

```text
Quais valores de Filho tornam pai(joao, Filho) verdadeiro?
```

Resposta:

```prolog
Filho = maria ;
Filho = pedro.
```

---

# 39. Exemplo completo: família

Arquivo `familia.pl`:

```prolog
pai(joao, maria).
pai(joao, pedro).
pai(pedro, lucas).

mae(ana, maria).
mae(maria, lucas).

genitor(X, Y) :-
    pai(X, Y).

genitor(X, Y) :-
    mae(X, Y).

avo(X, Z) :-
    genitor(X, Y),
    genitor(Y, Z).
```

Consultas:

```prolog
?- pai(joao, Quem).
```

Resposta:

```prolog
Quem = maria ;
Quem = pedro.
```

Consulta:

```prolog
?- genitor(Quem, lucas).
```

Resposta:

```prolog
Quem = pedro ;
Quem = maria.
```

Consulta:

```prolog
?- avo(Quem, lucas).
```

Resposta:

```prolog
Quem = joao ;
Quem = ana.
```

Esse exemplo mostra:

- fatos;
    
- regras;
    
- consultas;
    
- variáveis;
    
- `,` como “e”;
    
- múltiplas respostas;
    
- backtracking.
    

---

# 40. Exemplo completo: notas de alunos

```prolog
nota(ana, matematica, 8).
nota(ana, fisica, 5).
nota(bruno, matematica, 4).
nota(carla, fisica, 9).

aprovado(Aluno, Disciplina) :-
    nota(Aluno, Disciplina, Nota),
    Nota >= 6.

reprovado(Aluno, Disciplina) :-
    nota(Aluno, Disciplina, Nota),
    Nota < 6.
```

Consulta:

```prolog
?- aprovado(Aluno, Disciplina).
```

Resposta:

```prolog
Aluno = ana,
Disciplina = matematica ;

Aluno = carla,
Disciplina = fisica.
```

Consulta:

```prolog
?- reprovado(Aluno, Disciplina).
```

Resposta:

```prolog
Aluno = ana,
Disciplina = fisica ;

Aluno = bruno,
Disciplina = matematica.
```

Python equivalente seria algo como:

```python
notas = [
    ("ana", "matematica", 8),
    ("ana", "fisica", 5),
    ("bruno", "matematica", 4),
    ("carla", "fisica", 9),
]

def aprovado(aluno, disciplina):
    for a, d, nota in notas:
        if a == aluno and d == disciplina and nota >= 6:
            return True
    return False
```

Em Prolog, você não precisa escrever o laço. O Prolog faz a busca.

---

# 41. Erros comuns de quem vem do Python

## 1. Esquecer o ponto final

Errado:

```prolog
pai(joao, maria)
```

Certo:

```prolog
pai(joao, maria).
```

Todo fato e regra termina com ponto.

---

## 2. Usar variável com letra minúscula

Errado:

```prolog
pai(joao, filho).
```

Aqui `filho` é átomo, não variável.

Certo:

```prolog
pai(joao, Filho).
```

---

## 3. Achar que `=` calcula

Errado para cálculo:

```prolog
X = 2 + 3.
```

Resultado:

```prolog
X = 2+3.
```

Certo:

```prolog
X is 2 + 3.
```

---

## 4. Tentar reatribuir variável

Errado:

```prolog
X = 10,
X = 20.
```

Isso falha.

Em Prolog, a variável não muda de valor dentro da mesma prova.

---

## 5. Escrever Prolog como se fosse Python

Ruim:

```prolog
calcular :-
    read(X),
    Y is X + 1,
    write(Y).
```

Isso funciona, mas é muito procedural.

Mais lógico:

```prolog
sucessor(X, Y) :-
    Y is X + 1.
```

Depois você consulta:

```prolog
?- sucessor(5, Y).
```

---

## 6. Confundir `\+` com falso absoluto

```prolog
\+ gosta(ana, chocolate)
```

não significa “Ana não gosta de chocolate”.

Significa:

> “não consigo provar que Ana gosta de chocolate”.

---

## 7. Usar `if` demais

Em Prolog, muitas vezes é melhor escrever várias regras.

Em vez de:

```prolog
situacao(Nota, Resultado) :-
    (Nota >= 6 -> Resultado = aprovado ; Resultado = reprovado).
```

Também pode ser:

```prolog
situacao(Nota, aprovado) :-
    Nota >= 6.

situacao(Nota, reprovado) :-
    Nota < 6.
```

Essa segunda forma costuma ser mais natural em Prolog.

---

# 42. Como pensar em Prolog sem escrever Python dentro dele

A mudança mental principal é esta:

## Em Python você pergunta:

> “Qual algoritmo eu vou executar?”

## Em Prolog você pergunta:

> “Quais relações tornam isso verdadeiro?”

Exemplo: verificar se alguém é ancestral.

Em Python, você pensaria em uma busca na árvore.

Em Prolog, você declara:

```prolog
ancestral(X, Y) :-
    pai(X, Y).

ancestral(X, Y) :-
    pai(X, Z),
    ancestral(Z, Y).
```

Você não diz exatamente “faça um loop”. Você diz:

1. X é ancestral de Y se X é pai de Y.
    
2. X é ancestral de Y se X é pai de Z e Z é ancestral de Y.
    

O Prolog se encarrega de buscar os caminhos possíveis.

---

# 43. Tabela rápida de símbolos importantes

|Símbolo|Significado|
|---|---|
|`.`|termina fato, regra ou consulta|
|`:-`|“se”|
|`,`|“e”|
|`;`|“ou”|
|`=`|unificação|
|`is`|avaliação aritmética|
|`=:=`|igualdade numérica|
|`=\=`|diferença numérica|
|`\=`|não unificável|
|`\+`|negação por falha|
|`[H|T]`|
|`_`|variável anônima|
|`?-`|consulta no interpretador|

---

# 44. Resumo mental para quem vem do Python

|Em Python|Em Prolog|
|---|---|
|Função|Predicado|
|Retorno|Argumento de saída|
|Variável recebe valor|Variável é unificada|
|`x = 10`|`X = 10`|
|`x = 2 + 3`|`X is 2 + 3`|
|`if`|regra, `->`, ou múltiplas cláusulas|
|`and`|`,`|
|`or`|`;`|
|`not`|`\+`|
|`for` / `while`|recursão e backtracking|
|lista com índice|lista com `[Head|
|`return True/False`|sucesso ou falha da consulta|
|`print`|`write`, `writeln`, `format`|
|`import`|`use_module`|
|banco de dados/lista de tuplas|fatos Prolog|
|procurar manualmente|Prolog busca soluções|

---

# 45. Analogia final

Imagine que Python é como dar uma receita:

```text
1. Pegue a lista.
2. Percorra item por item.
3. Verifique a condição.
4. Guarde o resultado.
5. Retorne.
```

Prolog é como montar um conjunto de verdades:

```text
João é pai de Maria.
João é pai de Pedro.
Pedro é pai de Lucas.
X é avô de Z se X é pai de Y e Y é pai de Z.
```

Depois você pergunta:

```prolog
?- avo(Quem, lucas).
```

E o Prolog procura quem satisfaz essa relação.

A frase mais importante para lembrar é:

> Python executa passos. Prolog prova relações.

## Relatório de Satisfação e Aprendizado
Utilizei o chatgpt para fazer uma explicação sobre a sintaxe de Prolog comparando ao Python, me deu um rumo muito bom e me auxiliou a entender melhor a linguagem e a realizar a atividade 