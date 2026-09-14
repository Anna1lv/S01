#include <iostream>
using namespace std;

float calcular_confiabilidade_sistema(float probabilidades[], int tamanho) {
    float result = 1;
    for (int j = 0; j < tamanho; j++){
        result = result * probabilidades[j];
    }
    return result;
}

int main() {
    int N;
    float conf, porcentagem;

    cout << "Digite a quantidade de componentes do sistema: ";
    cin>> N;

    float probabilidades[N];
    
    for(int i = 0; i < N; i++){
        cout << "Digite a probabilidade do componente " <<i + 1<< " (ex: 0.95): ";
        cin>> probabilidades[i];
    }

    conf = calcular_confiabilidade_sistema(probabilidades, N);
    porcentagem = conf * 100;
    cout<<"Confiabilidade total do sistema: "<< conf << " (" <<porcentagem<< "%) ";
    return 0;
}
