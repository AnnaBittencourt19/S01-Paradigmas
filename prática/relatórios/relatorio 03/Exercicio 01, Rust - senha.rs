use std::io;

fn verificar_senha(senha: &str) -> bool {
    if senha.len() < 10 {
        return false;
    }
    let mut numeros = 0;
    let mut maiusculas = 0;
    for c in senha.chars() {
        if c.is_digit(10) {
            numeros += 1;
        }
        if c.is_ascii_uppercase() {
            maiusculas += 1;
        }
    }
    if numeros >= 2 && maiusculas >= 1 {
        return true;
    }
    false
}
fn main() {
    loop {
        println!("Digite uma senha:");
        let mut senha = String::new();
        io::stdin()
            .read_line(&mut senha)
            .expect("Erro ao ler");
        if verificar_senha(&senha) {
            println!("A senha é válida, seja bem vindo!");
            break;
        } else {
            println!("Senha inválida, tente novamente.");
        }
    }
}