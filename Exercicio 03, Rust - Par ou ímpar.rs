use std::io;

fn eh_par(numero: i32) -> bool {
    numero % 2 == 0
}

fn main() {
    let mut escolha_jogador1 = String::new();
    println!("Jogador 1, escolha 'par' ou 'ímpar': ");
    io::stdin().read_line(&mut escolha_jogador1).expect("Erro ao ler a entrada");
    let escolha_jogador1 = escolha_jogador1.trim().to_lowercase();

    let mut numero_jogador1 = String::new();
    println!("Jogador 1, digite seu número: ");
    io::stdin().read_line(&mut numero_jogador1).expect("Erro ao ler a entrada");
    let numero_jogador1: i32 = numero_jogador1.trim().parse().unwrap();

    let mut numero_jogador2 = String::new();
    println!("Jogador 2, digite seu número: ");
    io::stdin().read_line(&mut numero_jogador2).expect("Erro ao ler a entrada");
    let numero_jogador2: i32 = numero_jogador2.trim().parse().unwrap();

    let soma = numero_jogador1 + numero_jogador2;
    let resultado_par = eh_par(soma);

    println!("Soma = {}", soma);

    if (resultado_par && escolha_jogador1 == "par") || (!resultado_par && escolha_jogador1 == "ímpar") {
        println!("Jogador 1 venceu!");
    } else {
        println!("Jogador 2 venceu!");
    }
}
