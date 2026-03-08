- Foi desenhado para ser a primeira linguagem de novos programadores com uma sintaxe muito próxima do inglês
- Não diferencia maiúsculas de minúsculas 

## Estrutura básica e variáveis
- Para atribuir uma variável se usa DIM, nas versões modernas pode se usar LET (igual em JavaScript) 
- Dim nomeDaVariavel As Tipo
- Mas também pode se declarar usando sufixos
```BASIC
DIM valorreais AS SINGLE
Dim nomeCliente As String
Dim var1 As Integer

idade% = 25
preco! = 9.99
preco# = 9.99
```
- Single é igual a float (ponto flutuante com precisão simples)
- Sufixos: Integer (%), Long (&), Single (!), Double (#), String ($)

## Operadores e expressões
- ^ potência
- \ divisão inteira
- Mod resto
- AND (&& em outras linguagens)
- OR (|| em outras linguagens)
- <> (!= em outras linguagens)
## Entrada de dados
- Input 

## Arrays
- Array de números: 
```BASIC
DIM numeros(10) 
numeros(1) = 10	
```
- Declara um array de 10 posições
- Coloca o valor 10 na primeira posição

- Array de strings:
```BASIC
DIM nomes$(5)
nomes$(1) = "Fernando"
```

- Estrutura: (tipo classe)
```BASIC
TYPE Pessoa 
	nome AS STRING * 20 
	idade AS INTEGER 
END TYPE
```