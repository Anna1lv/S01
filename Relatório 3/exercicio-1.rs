use std::io;

fn validar_placa(placa: &str) -> bool {
    if placa.len() < 7 {
        return false;
    }

    let mut maiusculas = 0;
    let mut numeros = 0;

    for c in placa.chars() {
        if c.is_ascii_uppercase() {
            maiusculas = maiusculas + 1;
        }
        if c.is_numeric() {
            numeros = numeros + 1;
        }
    }

    maiusculas >= 4 && numeros >= 2
    // return
}

fn main() {
    loop {
        let mut placa = String::new();
        //nao aceita acentos
        println!("Digite a placa do veiculo:");
        io::stdin().read_line(&mut placa).expect("Erro ao ler");

        if validar_placa(placa.trim()) { //se é true entao entra
            println!("Placa cadastrada no sistema!");
            break; 
        } else {
            println!("Placa invalida. Tente novamente!");
        }
    }
}
