#include <iostream>
using namespace std;

int combinar_equipes(int n) {
    if (n == 0){
        return 0;
    }
    else if (n == 1){
        return 1;
    }
    else if (n > 1){
        return combinar_equipes(n - 1) + combinar_equipes(n - 2);
    }
    // esse else é puramente se caso for digitado um número negativo
    // para parar de dar aviso no compilador
    else { 
        return -1;
    }
}

int main() {
    int n, equipes;
    cout << "Digite o tamanho do chaveamento (n): ";
    cin>> n;

    equipes = combinar_equipes(n);
    cout<<"Total de cenários de confrontos possíveis: "<< equipes;
    return 0;
}
