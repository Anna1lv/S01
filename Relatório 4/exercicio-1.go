package main
import "fmt"

func ValidarCodigoRastreio(codigo string) (bool, string) {
	
    if len(codigo) == 10 { //pesquise a função "len"
		mensagem := "Código de rastreio registrado no sistema!"
        return true, mensagem
    } else{
		mensagem := "Erro: o código de rastreio deve ter exatamente 10 caracteres."
		return false, mensagem 
	}
	
}

func main() {

	var cod string

	fmt.Println("Digite o código de rastreio:")
	fmt.Scanln(&cod)
	status, mensagem  := ValidarCodigoRastreio(cod)

  	for status == false {
		fmt.Println(mensagem)

		fmt.Println("Digite o código de rastreio:")
		fmt.Scanln(&cod)
		status, mensagem  = ValidarCodigoRastreio(cod)
    	
 	 }
	fmt.Println(mensagem)
}
