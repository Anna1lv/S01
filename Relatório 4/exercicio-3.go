package main
import "fmt"

func gerarEscalaPlantao(n int) {
	mes := 1
    for j := 1; j <= n; j++ {
    	fmt.Printf("Plantão %d: Dia %d do mês \n", j, mes)
		mes = mes + 4
		// nao considerei se o mes virasse pois nao estava no enunciado
  	}
}

func main() {

	var plantao int

	fmt.Println("Digite a quantidade de plantões necessários:")
	fmt.Scanln(&plantao)
	gerarEscalaPlantao(plantao)
}
