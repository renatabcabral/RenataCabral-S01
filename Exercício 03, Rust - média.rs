fn calcular_media(n1: f64, n2: f64, n3: f64) -> f64 {
    const PESO1: f64 = 2.0;
    const PESO2: f64 = 3.0;
    const PESO3: f64 = 5.0;
    const TOTAL: f64 = PESO1 + PESO2 + PESO3;

    (n1 * PESO1 + n2 * PESO2 + n3 * PESO3) / TOTAL
}

fn main() {
    let primeira = 7.5;
    let segunda = 8.0;
    let terceira = 9.2;

    let resultado = calcular_media(primeira, segunda, terceira);

    println!("Média final: {:.2}", resultado);

    if resultado >= 7.0 {
        println!("Situação: Aprovado");
    } else {
        println!("Situação: Reprovado");
    }
}
