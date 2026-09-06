package main
import "fmt"


func main() {

	var vendas1 int
	var vendas2 int
	var vendas3 int

	fmt.Println("Digite as vendas do 1° trimestre: \n")
	fmt.Scanln(&vendas1)
	fmt.Println("Digite as vendas do 2° trimestre: \n")
	fmt.Scanln(&vendas2)
	fmt.Println("Digite as vendas do 3° trimestre: \n")
	fmt.Scanln(&vendas3)

	soma := vendas1 + vendas2 + vendas3

	if soma >= 100{
		switch {
   			case soma>=250:
				fmt.Printf("Total de vendas: %d unidades \n", soma)
    			fmt.Println("Classificação: Categoria Top Seller")
			case soma>=180 && soma<=249:
				fmt.Printf("Total de vendas: %d unidades \n", soma)
    			fmt.Println("Classificação: Categoria Sênior")
			case soma>=100 && soma<=179:
				fmt.Printf("Total de vendas: %d unidades \n", soma)
    			fmt.Println("Classificação: Categoria Pleno")
		}	
    		
  	}else{
		fmt.Println("Meta mínima anual não atingida!")
	}


}
