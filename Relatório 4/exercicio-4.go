package main
import "fmt"

func validarIngresso(setor string, codigo int) bool {
	if setor == "VIP" && codigo == 2026{
		return true
	}
	return false
}


func main() {
	var setor string
	var cod int
	for { //for infinito
 		fmt.Println("Digite o setor do ingresso:")
		fmt.Scanln(&setor)
		fmt.Println("Digite o código do ingresso:")
		fmt.Scanln(&cod)

		status := validarIngresso(setor, cod)
		if status == true{
			fmt.Println("Acesso liberado à área VIP!")
			break;
		}  else {
			fmt.Println("Ingresso ou setor inválido. Tente novamente.")
		}
		
 	}

}
