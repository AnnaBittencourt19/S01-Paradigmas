- Usada em World of Warcraft e Roblox
- É uma linguagem de Script e é facilmente incorporável dentro de outros programas, é leve
- O ; é opcional 
## Estrutura básica e variáveis
- Lua é dinamicamente tipada igual Python e JS (não precisa colocar o tipo da variável só atribuir o valor e ela descobre o tipo)
- Para declarar usasse colocar local ou global antes do nome da variável. Ex: local nome_variavel = valor
```Lua
local nome = "Anna"
local idade = 25 
local ativo = true 
local vazio = nil 
global vida = 100;
```
- nil em Lua significa nulo
- se não colocar nem local e nem global na frente a variavel se torna global automaticamente
- uma variável local só existe dentro da função, uma global é no código todo
## Operadores e expressões
- / divisão normal 
- // divisão inteira (resulta um inteiro)
- % resto de divisão
- ˜= diferente de (!= em outras linguagens)
- and (&& em outras linguagens)
- or (|| em outras linguagens)
## Entrada de dados
- io.read()
## Arrays
- Não existem os Arrays em Lua e sim TABELAS
- Nessas tabelas o índice começa com 1 não com 0 como em outras linguagens 
- Exemplos de declaração dos arrays:
```Lua
local frutas = { "maçã", "banana", "laranja", "uva" }

local numeros = {} 
numeros[1] = 10 
numeros[2] = 20 
numeros[3] = 30
```
- A tabela é criada usando { }
- Essas tabelas são Arrays e também estruturas tipo classes ao mesmo tempo
```Lua 
local jogador = {
	 nome = "Anna", 
	 vida = 100, 
	 itens = {"espada", "poção"}
 }
```
