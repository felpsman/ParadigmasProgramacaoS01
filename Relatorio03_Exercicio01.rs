use std::io::{self, Write};

fn verificar_senha(senha: &str) -> bool {
    // Critério 1: Pelo menos 10 caracteres
    if senha.len() < 10 {
        return false;
    }

    let mut numeros = 0;
    let mut maiuscula = false;

    // Iterando sobre cada caractere da senha
    for c in senha.chars() {
        if c.is_digit(10) {
            numeros += 1;
        }
        if c.is_ascii_uppercase() {
            maiuscula = true;
        }
    }

    // Critério 2: Pelo menos dois números
    // Critério 3: Pelo menos uma letra maiúscula
    numeros >= 2 && maiuscula
}

fn main() {
    loop {
        let mut input = String::new();

        print!("Digite uma senha: ");
        // Garante que o texto apareça antes da entrada do usuário
        io::stdout().flush().unwrap();

        io::stdin()
            .read_line(&mut input)
            .expect("Falha ao ler a linha");

        // Trim remove o caractere de nova linha (\n) do final da entrada
        let senha = input.trim();

        if verificar_senha(senha) {
            println!("A senha e valida, seja bem-vindo!");
            break; // Sai do loop
        } else {
            println!("Senha invalida! Verifique os criterios:");
            println!("- Minimo 10 caracteres;");
            println!("- Pelo menos 2 numeros;");
            println!("- Pelo menos 1 letra maiuscula.\n");
        }
    }
}