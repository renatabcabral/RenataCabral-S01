use std::io;

fn imprimir_tabuada(valor: i32, min: i32, max: i32) {
    for contador in min..=max {
        println!("{} x {} = {}", valor, contador, valor * contador);
    }
}

fn main() {
    let mut entrada1 = String::new();
    println!("Digite o número da tabuada: ");
    io::stdin().read_line(&mut entrada1).unwrap();
    let valor: i32 = entrada1.trim().parse().unwrap();

    let mut entrada2 = String::new();
    println!("Digite o limite inferior: ");
    io::stdin().read_line(&mut entrada2).unwrap();
    let min: i32 = entrada2.trim().parse().unwrap();

    let mut entrada3 = String::new();
    println!("Digite o limite superior: ");
    io::stdin().read_line(&mut entrada3).unwrap();
    let max: i32 = entrada3.trim().parse().unwrap();

    imprimir_tabuada(valor, min, max);
}
