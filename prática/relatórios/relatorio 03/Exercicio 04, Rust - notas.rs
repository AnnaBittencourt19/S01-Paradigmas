use std::io;
fn calcular_media(nota1: f64, nota2: f64, nota3: f64) -> f64 {
    let npt = (nota1 + nota2) / 2.0;
    let media_final = (npt * 0.7) + (nota3 * 0.3);
    if media_final >= 60.0 {
        println!("Média final: {}", media_final);
        println!("Parabéns! Você foi aprovado!");
    } else {
        println!("Média final: {}", media_final);
        println!("Infelizmente você foi reprovado.");
    }
    media_final
}
fn main() {
    println!("Digite a nota da NP1:");
    let mut entrada1 = String::new();
    io::stdin()
        .read_line(&mut entrada1)
        .expect("Erro");
    let np1: f64 = entrada1.trim().parse().expect("Nota inválida");
    println!("Digite a nota da NP2:");
    let mut entrada2 = String::new();
    io::stdin()
        .read_line(&mut entrada2)
        .expect("Erro");
    let np2: f64 = entrada2.trim().parse().expect("Número inválido");
    println!("Digite a nota da NPL:");
    let mut entrada3 = String::new();
    io::stdin()
        .read_line(&mut entrada3)
        .expect("Erro");
    let npl: f64 = entrada3.trim().parse().expect("Número inválido");
    let media = calcular_media(np1, np2, npl);
    println!("Resultado final da média: {}", media);

}