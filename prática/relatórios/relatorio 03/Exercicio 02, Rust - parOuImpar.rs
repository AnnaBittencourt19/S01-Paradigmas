use std::io;
fn eh_impar(numero: i32) -> bool {
    numero % 2 != 0
}
fn main() {
    println!("Jogador 1 escolha: par ou impar");
    let mut escolha = String::new();
    io::stdin()
        .read_line(&mut escolha)
        .expect("Erro ao ler");
    println!("Jogador 1 digite um número:");
    let mut entrada1 = String::new();
    io::stdin()
        .read_line(&mut entrada1)
        .expect("Erro");
    let num1: i32 = entrada1.trim().parse().expect("Número inválido");
    println!("Jogador 2 digite um número:");
    let mut entrada2 = String::new();
    io::stdin()
        .read_line(&mut entrada2)
        .expect("Erro");
    let num2: i32 = entrada2.trim().parse().expect("Número inválido");
    let soma = num1 + num2;
    let resultado_impar = eh_impar(soma);
    let jogador1_escolheu_impar = escolha.trim() == "impar";
    println!("A soma foi: {}", soma);
    if resultado_impar == jogador1_escolheu_impar {
        println!("Jogador 1 venceu!");
    } else {
        println!("Jogador 2 venceu!");
    }
}