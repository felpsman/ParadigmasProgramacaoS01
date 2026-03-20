use std::io;

fn eh_impar(numero: i32) -> bool {
    numero % 2 != 0
}

fn main() {
    let mut escolha = String::new();
    let mut numero1 = String::new();
    let mut numero2 = String::new();

    // Jogador 1 escolhe par ou ímpar
    println!("Jogador 1: escolha 'par' ou 'impar':");
    io::stdin().read_line(&mut escolha).expect("Erro");
    let escolha = escolha.trim().to_lowercase();

    // Jogador 1 digita número
    println!("Jogador 1: digite um número:");
    io::stdin().read_line(&mut numero1).expect("Erro");
    let numero1: i32 = numero1.trim().parse().expect("Número inválido");

    // Jogador 2 digita número
    println!("Jogador 2: digite um número:");
    io::stdin().read_line(&mut numero2).expect("Erro");
    let numero2: i32 = numero2.trim().parse().expect("Número inválido");

    let soma = numero1 + numero2;
    let soma_impar = eh_impar(soma);
    println!("\nSoma dos números: {}", soma);

    if (soma_impar && escolha == "impar") || (!soma_impar && escolha == "par") {
        println!("Jogador 1 venceu!");
    } else {
        println!("Jogador 2 venceu!");
    }
}