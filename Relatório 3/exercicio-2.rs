use std::io;

fn acertou_o_alvo(palpite: i32, numero_secreto: i32) -> bool {
    if palpite > numero_secreto {
        palpite - numero_secreto <= 5
    }
    else {
        numero_secreto - palpite <= 5
    }

}

fn main() {
    let mut x = 0;
    let numero_secreto: i32 = 67;
    loop {
        let mut entrada = String::new();
     
        println!("Digite seu palpite:");
        io::stdin().read_line(&mut entrada).expect("Erro ao ler");
        let palpite: i32 = entrada.trim().parse().unwrap_or(0);

        if acertou_o_alvo(palpite, numero_secreto) { //se e true entao entra
            if palpite > numero_secreto {
                x = palpite - numero_secreto;
            }
            else{
                x = numero_secreto - palpite;
            }
            println!("Parabens, voce acertou o alvo!");
            println!("Voce ficou a apenas {} unidade(s) do numero secreto ({}).", x, numero_secreto);
            break; 
        } else {
            println!("Voce passou longe! Tente novamente.");
        }
    }
}
