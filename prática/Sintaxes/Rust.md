- Rust é mais difícil do que imaginava mas é bem interessante
- Utilizada em embarcados, backend e alto desempenho
## Estrutura básica e variáveis
- Variáveis são declaradas igual em JavaScript usando o let
```Rust
let nome = "Anna"; 
```
- Porém no Rust as variáveis são imutáveis e é preciso usar o mut 
```Rust
let mut nome = "Anna";
```
- O Rust também é dinamicamente tipada mas podemos declarar o tipo também
```Rust
let idade: i32 = 21;
```
- Os tipos são bem diferentes das outras linguagens
	- inteiro: i32
	- decimal: f64
	- bool
	- String: string mutável
	- &str: string literal
## Funções 
- As funções em Rust são definidas por fn 
- Sintaxe básica de funções:
```Rust
fn nome_funcao(parametro: tipo) -> retorno 
```
- Exemplo:
```Rust
fn eh_impar(numero: i32) -> bool {
    numero % 2 != 0
}
```
- Uma função que recebe um numero inteiro (numero: i32) e retorna um booleano (-> bool), a última linha sem ponto e virgula é o valor que será retornado (no caso numero % 2 != 0 e será true ou false)
## Operadores e expressões
- Igual as de C
## Condicionais
- If e else também funcionam igual ao C com a diferença de que as condições não precisam de parênteses
```Rust
if media >= 60.0 {
    println!("Aprovado");
} else {
    println!("Reprovado");
}
```
## Loops
- Loop (loop infinito só sai com break):
```Rust
loop {
    println!("Executando");
}
```

- For (para intervalos)
```Rust
for i in 1..10 {
    println!("{}", i);
}
```
	- Esse exemplo é um for de 1 até 9
	- 1..10: de 1 até 9
	- 1..=10: de 1 até 10
## Entrada de dados
- stdin (tem que chamar a biblioteca std::io):
```Rust
use std::io;
```
- read_line lê a entrada do teclado (em uma linha então ao entrar com dados dar um Enter para quebrar a linha)
- Exemplo: 
```Rust
let mut entrada = String::new();
io::stdin()
    .read_line(&mut entrada)
    .expect("Erro ao ler");
```
	- Esse código declara uma nova String mutavel e o usuario entra com uma String (read_line) e tem o tratamento de erro (.expect)
## Imprimir valores
- println!
