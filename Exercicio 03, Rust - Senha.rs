use std::io;

fn verificar_senha(senha: &str) -> bool {
    if senha.len() < 8 {
        return false;
    }

    let mut possui_numero = false;
    let mut possui_maiuscula = false;

    for caractere in senha.chars() {
        if caractere.is_ascii_digit() {
            possui_numero = true;
        }
        if caractere.is_ascii_uppercase() {
            possui_maiuscula = true;
        }
    }

    possui_numero && possui_maiuscula
}

fn main() {
    loop {
        let mut entrada = String::new();
        println!("Por favor, digite sua senha:");
        io::stdin().read_line(&mut entrada).expect("Falha ao ler entrada");
        let senha = entrada.trim();

        if verificar_senha(senha) {
            println!("Senha válida! Acesso concedido.");
            break;
        } else {
            println!("Senha inválida. Tente novamente.");
        }
    }
}
