use std::io;

fn imprimir_multiplos(numero: i32, limite_inferior: i32, limite_superior: i32) {
    for i in limite_inferior..=limite_superior {
        if i % numero == 0 {
            println!("{}", i);
        }
    }
}
fn main() {
    println!("Digite o número da tabuada:");
    let mut entrada = String::new();
    io::stdin()
        .read_line(&mut entrada)
        .expect("Erro");
    let numero: i32 = entrada.trim().parse().expect("Número inválido");
    println!("Digite o limite inferior:");
    let mut entrada_inf = String::new();
    io::stdin()
        .read_line(&mut entrada_inf)
        .expect("Erro");
    let limite_inferior: i32 = entrada_inf.trim().parse().expect("Número inválido");
    println!("Digite o limite superior:");
    let mut entrada_sup = String::new();
    io::stdin()
        .read_line(&mut entrada_sup)
        .expect("Erro");
    let limite_superior: i32 = entrada_sup.trim().parse().expect("Número inválido");
    imprimir_multiplos(numero, limite_inferior, limite_superior);
}